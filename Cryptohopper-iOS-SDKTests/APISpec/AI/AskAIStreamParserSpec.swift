import Foundation
import XCTest
import Quick
import Nimble
@testable import Cryptohopper_iOS_SDK

class AskAIStreamParserSpec: QuickSpec {

    override func spec() {

        var parser: AskAIStreamParser!

        beforeEach {
            parser = AskAIStreamParser()
        }

        func feed(_ text: String) -> [AskAIStreamEvent] {
            return parser.feed(text.data(using: .utf8)!)
        }

        context("single complete frames") {
            it("parses a delta frame") {
                let events = feed("event: delta\ndata: {\"content\": \"Hello\"}\n\n")
                expect(events.count).to(equal(1))
                guard case .delta(let text)? = events.first else { return fail("expected delta") }
                expect(text).to(equal("Hello"))
            }
            it("parses a done frame with run and session ids") {
                let events = feed("event: done\ndata: {\"run_id\": \"r1\", \"session_id\": \"s1\"}\n\n")
                guard case .done(let runId, let sessionId)? = events.first else { return fail("expected done") }
                expect(runId).to(equal("r1"))
                expect(sessionId).to(equal("s1"))
            }
            it("maps a done frame carrying an error field to an error event") {
                let events = feed("event: done\ndata: {\"error\": \"boom\"}\n\n")
                guard case .error(let message)? = events.first else { return fail("expected error") }
                expect(message).to(equal("boom"))
            }
            it("parses final as done") {
                let events = feed("event: final\ndata: {\"run_id\": \"r2\"}\n\n")
                guard case .done(let runId, _)? = events.first else { return fail("expected done") }
                expect(runId).to(equal("r2"))
            }
            it("parses an error frame") {
                let events = feed("event: error\ndata: {\"message\": \"nope\"}\n\n")
                guard case .error(let message)? = events.first else { return fail("expected error") }
                expect(message).to(equal("nope"))
            }
            it("uses the payload type field when the event line is missing") {
                let events = feed("data: {\"type\": \"delta\", \"content\": \"x\"}\n\n")
                guard case .delta(let text)? = events.first else { return fail("expected delta") }
                expect(text).to(equal("x"))
            }
        }

        context("tool and confirm frames") {
            it("parses a tool_call frame with its tool name") {
                let events = feed("event: tool_call\ndata: {\"tool_call_id\": \"t\", \"tool_name\": \"place_order\"}\n\n")
                guard case .toolCall(let name)? = events.first else { return fail("expected toolCall") }
                expect(name).to(equal("place_order"))
            }
            it("parses a tool_call frame without a name") {
                let events = feed("event: tool_call\ndata: {\"tool_call_id\": \"t\"}\n\n")
                guard case .toolCall(let name)? = events.first else { return fail("expected toolCall") }
                expect(name).to(beNil())
            }
            it("parses a tool_result frame") {
                let events = feed("event: tool_result\ndata: {\"tool_call_id\": \"t\", \"output\": \"ok\"}\n\n")
                guard case .toolResult? = events.first else { return fail("expected toolResult") }
            }
            it("parses a confirm frame") {
                let events = feed("event: confirm\ndata: {\"confirm_id\": \"c1\", \"tool_name\": \"place_order\", \"description\": \"Buy 1 BTC\"}\n\n")
                guard case .confirm(let confirmId, let toolName, let description)? = events.first else { return fail("expected confirm") }
                expect(confirmId).to(equal("c1"))
                expect(toolName).to(equal("place_order"))
                expect(description).to(equal("Buy 1 BTC"))
            }
            it("leaves the optional confirm fields nil when absent") {
                let events = feed("event: confirm\ndata: {\"confirm_id\": \"c2\"}\n\n")
                guard case .confirm(let confirmId, let toolName, let description)? = events.first else { return fail("expected confirm") }
                expect(confirmId).to(equal("c2"))
                expect(toolName).to(beNil())
                expect(description).to(beNil())
            }
            it("drops a confirm frame with no confirm_id") {
                let events = feed("event: confirm\ndata: {\"tool_name\": \"place_order\"}\n\n")
                expect(events).to(beEmpty())
            }
        }

        context("frames to ignore") {
            it("ignores conversation and metadata events without failing") {
                let raw = "event: conversation\ndata: {\"conversation_id\": \"c1\"}\n\n"
                    + "event: metadata\ndata: {\"outcome\": \"answered\"}\n\n"
                    + "event: delta\ndata: {\"content\": \"kept\"}\n\n"
                let events = feed(raw)
                expect(events.count).to(equal(1))
            }
            it("ignores comment/ping frames") {
                let events = feed(": ping\n\nevent: delta\ndata: {\"content\": \"a\"}\n\n")
                expect(events.count).to(equal(1))
            }
            it("ignores malformed json frames") {
                let events = feed("event: delta\ndata: {broken\n\nevent: delta\ndata: {\"content\": \"ok\"}\n\n")
                expect(events.count).to(equal(1))
            }
        }

        context("chunk boundaries") {
            it("assembles a frame split across chunks, including mid-character splits") {
                let full = "event: delta\ndata: {\"content\": \"héllo\"}\n\n".data(using: .utf8)!
                // split inside the two-byte "é"
                let splitIndex = full.range(of: "h".data(using: .utf8)!)!.upperBound + 1
                var events = parser.feed(full.subdata(in: 0..<splitIndex))
                expect(events).to(beEmpty())
                events = parser.feed(full.subdata(in: splitIndex..<full.count))
                guard case .delta(let text)? = events.first else { return fail("expected delta") }
                expect(text).to(equal("héllo"))
            }
            it("handles multiple frames in one chunk") {
                let events = feed("event: delta\ndata: {\"content\": \"a\"}\n\nevent: delta\ndata: {\"content\": \"b\"}\n\n")
                expect(events.count).to(equal(2))
            }
            it("handles crlf line endings") {
                let events = feed("event: delta\r\ndata: {\"content\": \"a\"}\r\n\r\n")
                expect(events.count).to(equal(1))
            }
        }

        context("flush") {
            it("emits a trailing unterminated frame") {
                _ = feed("event: delta\ndata: {\"content\": \"tail\"}")
                let events = parser.flush()
                guard case .delta(let text)? = events.first else { return fail("expected delta") }
                expect(text).to(equal("tail"))
            }
        }
    }
}
