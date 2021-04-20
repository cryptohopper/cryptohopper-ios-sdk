//
//  HopperConfig.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation

public class HopperConfig : Codable {
    
    public var name : String?
    public var live : String?
    public var submit : String?
    public var status : String?
    public var exchange : String?
    public var api_passphrase : String?
    public var api_key : String?
    public var api_secret : String?
    public var stop_buying : String?
    public var stop_selling : String?
    public var paper_trading : String?
    public var paper_trading_account : String?
    public var hopper_id : String?
    public var last_loaded_config : String?
    public var last_loaded_config_date : String?
    public var minimum_profit : String?
    public var gdax_post_only : String?
    public var extra_api_key : String?
    public var extra_api_secret : String?
    public var max_open_time : String?
    public var base_coins : [String]?
    public var trading_fees : [String:String]?
    public var loop_waittime : String?
    public var buy_btc_amount : String?
    public var send_trade_email : String?
    public var send_trade_error_email : String?
    public var send_cancelled_email : String?
    public var template_type : String?
    public var template_id : String?
    public var silent : String?
    public var arbitrage : String?
    public var from_market_id : String?
    public var set_percentage : String?
    public var collect_currency : String?
    public var allowed_coins : [String]?
    public var walletscrubber_leftovers : String?
    public var walletscrubber_auto : String?
    public var walletscrubber_noopen : String?
    public var autosync : String?
    public var autosync_all_coins : String?
    public var autosync_allowed_coins : [String]?
    public var auto_merge_positions : String?
    public var output_live_feed : String?
    public var output_errors_only : String?
    public var hold_assets : String?
    public var set_percentage_ask : String?
    public var set_percentage_bid : String?
    public var ticker_type : String?
    public var perc_buy_amount : String?
    public var min_buy_amount : String?
    public var min_buy_amount_force : String?
    public var max_amount_allocated : String?
    public var strategy : String?
    public var sell_with_strategy : String?
    public var num_targets_per_buy : String?
    public var rsi_candle_size : String?
    public var rsi_period : String?
    public var rsi_oversold : String?
    public var bbands_candle_size : String?
    public var bbands_days : String?
    public var bbands_deviation : String?
    public var bid_percentage : String?
    public var bid_percentage_type : String?
    public var max_open_time_buy : String?
    public var max_open_positions : String?
    public var max_open_positions_per_coin : String?
    public var one_open_order : String?
    public var only_when_positive : String?
    public var only_when_positive_time : String?
    public var cooldown : String?
    public var cooldown_when : String?
    public var cooldown_count : String?
    public var cooldown_val : String?
    public var ask_percentage : String?
    public var ask_percentage_type : String?
    public var advanced_ta_candle_size : String?
    public var allow_all_coins : String?
    public var buy_order_type : String?
    public var dca_order_type : String?
    public var sell_order_type : String?
    public var advanced_ta_rsi_period : String?
    public var advanced_ta_ema_disabled : String?
    public var advanced_ta_rsi_disabled : String?
    public var advanced_ta_rsi_oversold : String?
    public var advanced_ta_sma_disabled : String?
    public var advanced_ta_stoch_fast_k : String?
    public var advanced_ta_stoch_slow_d : String?
    public var advanced_ta_stoch_slow_k : String?
    public var advanced_ta_bbands_dev_up : String?
    public var advanced_ta_bbands_dev_low : String?
    public var advanced_ta_bbands_matype : String?
    public var advanced_ta_bbands_period : String?
    public var advanced_ta_ema_necessary : String?
    public var advanced_ta_kama_disabled : String?
    public var advanced_ta_kama_short_period : String?
    public var advanced_ta_kama_long_period : String?
    public var advanced_ta_sma_short_period : String?
    public var advanced_ta_sma_long_period : String?
    public var advanced_ta_macd_disabled : String?
    public var advanced_ta_rsi_necessary : String?
    public var advanced_ta_rsi_overbought : String?
    public var advanced_ta_stoch_disabled : String?
    public var advanced_ta_stoch_oversold : String?
    public var advanced_ta_bbands_disabled : String?
    public var advanced_ta_ema_long_period : String?
    public var advanced_ta_stochrsi_fast_d : String?
    public var advanced_ta_stochrsi_fast_k : String?
    public var advanced_ta_stochrsi_period : String?
    public var advanced_ta_bbands_necessary : String?
    public var advanced_ta_ema_short_period : String?
    public var advanced_ta_macd_fast_period : String?
    public var advanced_ta_macd_slow_period : String?
    public var advanced_ta_stoch_overbought : String?
    public var advanced_ta_stochrsi_disabled : String?
    public var advanced_ta_stochrsi_oversold : String?
    public var advanced_ta_macd_signal_period : String?
    public var advanced_ta_stoch_slow_d_matype : String?
    public var advanced_ta_stoch_slow_k_matype : String?
    public var advanced_ta_stochrsi_overbought : String?
    public var advanced_ta_stochrsi_fast_d_matype : String?
    public var advanced_ta_stoch_necessary : String?
    public var advanced_ta_stochrsi_necessary : String?
    public var advanced_ta_sma_necessary : String?
    public var advanced_ta_macd_necessary : String?
    public var advanced_ta_kama_necessary : String?
    public var stop_loss : String?
    public var stop_loss_percentage : String?
    public var trailing_buy : String?
    public var stop_loss_trailing : String?
    public var stop_loss_trailing_percentage : String?
    public var stop_loss_trailing_arm : String?
    public var stop_loss_trailing_only : String?
    public var trailing_stop_loss_reset : String?
    public var trailing_stop_loss_profit : String?
    public var trailing_buy_percentage : String?
    public var short_reset_position : String?
    public var short_restore_position : String?
    public var automatic_shorting : String?
    public var max_open_short_positions : String?
    public var short_sell_with_strategy : String?
    public var short_buy_with_strategy : String?
    public var short_always : String?
    public var short_percentage_profit : String?
    public var short_use_actual_profit : String?
    public var short_stop_loss_trailing : String?
    public var short_stop_loss_trailing_percentage : String?
    public var short_stop_loss_trailing_arm : String?
    public var short_stop_loss_trailing_only : String?
    public var short_auto_close_positions : String?
    public var short_auto_close_positions_time : String?
    public var short_auto_remove_positions : String?
    public var short_auto_remove_positions_time : String?
    public var short_remove_on_loss : String?
    public var short_ignore_max_pos : String?
    public var auto_close_positions : String?
    public var auto_close_positions_time : String?
    public var auto_dca : String?
    public var auto_dca_time : String?
    public var auto_dca_max : String?
    public var auto_dca_percentage : String?
    public var auto_dca_strategy : String?
    public var auto_dca_size : String?
    public var auto_dca_size_custom : String?

    private enum CodingKeys: String, CodingKey {
            case submit = "submit"
            case status = "status"
            case name = "name"
            case exchange = "exchange"
            case api_passphrase = "api_passphrase"
            case api_key = "api_key"
            case api_secret = "api_secret"
            case live = "live"
            case stop_buying = "stop_buying"
            case stop_selling = "stop_selling"
            case paper_trading = "paper_trading"
            case paper_trading_account = "paper_trading_account"
            case hopper_id = "hopper_id"
            case last_loaded_config = "last_loaded_config"
            case last_loaded_config_date = "last_loaded_config_date"
            case minimum_profit = "minimum_profit"
            case gdax_post_only = "gdax_post_only"
            case extra_api_key = "extra_api_key"
            case extra_api_secret = "extra_api_secret"
            case max_open_time = "max_open_time"
            case base_coins = "base_coins"
            case trading_fees = "trading_fees"
            case loop_waittime = "loop_waittime"
            case buy_btc_amount = "buy_btc_amount"
            case send_trade_email = "send_trade_email"
            case send_trade_error_email = "send_trade_error_email"
            case send_cancelled_email = "send_cancelled_email"
            case template_type = "template_type"
            case template_id = "template_id"
            case silent = "silent"
            case arbitrage = "arbitrage"
            case from_market_id = "from_market_id"
            case set_percentage = "set_percentage"
            case collect_currency = "collect_currency"
            case allowed_coins = "allowed_coins"
            case walletscrubber_leftovers = "walletscrubber_leftovers"
            case walletscrubber_auto = "walletscrubber_auto"
            case walletscrubber_noopen = "walletscrubber_noopen"
            case autosync = "autosync"
            case autosync_all_coins = "autosync_all_coins"
            case autosync_allowed_coins = "autosync_allowed_coins"
            case auto_merge_positions = "auto_merge_positions"
            case output_live_feed = "output_live_feed"
            case output_errors_only = "output_errors_only"
            case hold_assets = "hold_assets"
            case set_percentage_ask = "set_percentage_ask"
            case set_percentage_bid = "set_percentage_bid"
            case ticker_type = "ticker_type"
            case perc_buy_amount = "perc_buy_amount"
            case min_buy_amount = "min_buy_amount"
            case min_buy_amount_force = "min_buy_amount_force"
            case max_amount_allocated = "max_amount_allocated"
            case strategy = "strategy"
            case sell_with_strategy = "sell_with_strategy"
            case num_targets_per_buy = "num_targets_per_buy"
            case rsi_candle_size = "rsi_candle_size"
            case rsi_period = "rsi_period"
            case rsi_oversold = "rsi_oversold"
            case bbands_candle_size = "bbands_candle_size"
            case bbands_days = "bbands_days"
            case bbands_deviation = "bbands_deviation"
            case bid_percentage = "bid_percentage"
            case bid_percentage_type = "bid_percentage_type"
            case max_open_time_buy = "max_open_time_buy"
            case max_open_positions = "max_open_positions"
            case max_open_positions_per_coin = "max_open_positions_per_coin"
            case one_open_order = "one_open_order"
            case only_when_positive = "only_when_positive"
            case only_when_positive_time = "only_when_positive_time"
            case cooldown = "cooldown"
            case cooldown_when = "cooldown_when"
            case cooldown_count = "cooldown_count"
            case cooldown_val = "cooldown_val"
            case ask_percentage = "ask_percentage"
            case ask_percentage_type = "ask_percentage_type"
            case advanced_ta_candle_size = "advanced_ta_candle_size"
            case allow_all_coins = "allow_all_coins"
            case buy_order_type = "buy_order_type"
            case dca_order_type = "dca_order_type"
            case sell_order_type = "sell_order_type"
            case advanced_ta_rsi_period = "advanced_ta_rsi_period"
            case advanced_ta_ema_disabled = "advanced_ta_ema_disabled"
            case advanced_ta_rsi_disabled = "advanced_ta_rsi_disabled"
            case advanced_ta_rsi_oversold = "advanced_ta_rsi_oversold"
            case advanced_ta_sma_disabled = "advanced_ta_sma_disabled"
            case advanced_ta_stoch_fast_k = "advanced_ta_stoch_fast_k"
            case advanced_ta_stoch_slow_d = "advanced_ta_stoch_slow_d"
            case advanced_ta_stoch_slow_k = "advanced_ta_stoch_slow_k"
            case advanced_ta_bbands_dev_up = "advanced_ta_bbands_dev_up"
            case advanced_ta_bbands_dev_low = "advanced_ta_bbands_dev_low"
            case advanced_ta_bbands_matype = "advanced_ta_bbands_matype"
            case advanced_ta_bbands_period = "advanced_ta_bbands_period"
            case advanced_ta_ema_necessary = "advanced_ta_ema_necessary"
            case advanced_ta_kama_disabled = "advanced_ta_kama_disabled"
            case advanced_ta_kama_short_period = "advanced_ta_kama_short_period"
            case advanced_ta_kama_long_period = "advanced_ta_kama_long_period"
            case advanced_ta_sma_short_period = "advanced_ta_sma_short_period"
            case advanced_ta_sma_long_period = "advanced_ta_sma_long_period"
            case advanced_ta_macd_disabled = "advanced_ta_macd_disabled"
            case advanced_ta_rsi_necessary = "advanced_ta_rsi_necessary"
            case advanced_ta_rsi_overbought = "advanced_ta_rsi_overbought"
            case advanced_ta_stoch_disabled = "advanced_ta_stoch_disabled"
            case advanced_ta_stoch_oversold = "advanced_ta_stoch_oversold"
            case advanced_ta_bbands_disabled = "advanced_ta_bbands_disabled"
            case advanced_ta_ema_long_period = "advanced_ta_ema_long_period"
            case advanced_ta_stochrsi_fast_d = "advanced_ta_stochrsi_fast_d"
            case advanced_ta_stochrsi_fast_k = "advanced_ta_stochrsi_fast_k"
            case advanced_ta_stochrsi_period = "advanced_ta_stochrsi_period"
            case advanced_ta_bbands_necessary = "advanced_ta_bbands_necessary"
            case advanced_ta_ema_short_period = "advanced_ta_ema_short_period"
            case advanced_ta_macd_fast_period = "advanced_ta_macd_fast_period"
            case advanced_ta_macd_slow_period = "advanced_ta_macd_slow_period"
            case advanced_ta_stoch_overbought = "advanced_ta_stoch_overbought"
            case advanced_ta_stochrsi_disabled = "advanced_ta_stochrsi_disabled"
            case advanced_ta_stochrsi_oversold = "advanced_ta_stochrsi_oversold"
            case advanced_ta_macd_signal_period = "advanced_ta_macd_signal_period"
            case advanced_ta_stoch_slow_d_matype = "advanced_ta_stoch_slow_d_matype"
            case advanced_ta_stoch_slow_k_matype = "advanced_ta_stoch_slow_k_matype"
            case advanced_ta_stochrsi_overbought = "advanced_ta_stochrsi_overbought"
            case advanced_ta_stochrsi_fast_d_matype = "advanced_ta_stochrsi_fast_d_matype"
            case advanced_ta_stoch_necessary = "advanced_ta_stoch_necessary"
            case advanced_ta_stochrsi_necessary = "advanced_ta_stochrsi_necessary"
            case advanced_ta_sma_necessary = "advanced_ta_sma_necessary"
            case advanced_ta_macd_necessary = "advanced_ta_macd_necessary"
            case advanced_ta_kama_necessary = "advanced_ta_kama_necessary"
            case stop_loss = "stop_loss"
            case stop_loss_percentage = "stop_loss_percentage"
            case trailing_buy = "trailing_buy"
            case stop_loss_trailing = "stop_loss_trailing"
            case stop_loss_trailing_percentage = "stop_loss_trailing_percentage"
            case stop_loss_trailing_arm = "stop_loss_trailing_arm"
            case stop_loss_trailing_only = "stop_loss_trailing_only"
            case trailing_stop_loss_reset = "trailing_stop_loss_reset"
            case trailing_stop_loss_profit = "trailing_stop_loss_profit"
            case trailing_buy_percentage = "trailing_buy_percentage"
            case short_reset_position = "short_reset_position"
            case short_restore_position = "short_restore_position"
            case automatic_shorting = "automatic_shorting"
            case max_open_short_positions = "max_open_short_positions"
            case short_sell_with_strategy = "short_sell_with_strategy"
            case short_buy_with_strategy = "short_buy_with_strategy"
            case short_always = "short_always"
            case short_percentage_profit = "short_percentage_profit"
            case short_use_actual_profit = "short_use_actual_profit"
            case short_stop_loss_trailing = "short_stop_loss_trailing"
            case short_stop_loss_trailing_percentage = "short_stop_loss_trailing_percentage"
            case short_stop_loss_trailing_arm = "short_stop_loss_trailing_arm"
            case short_stop_loss_trailing_only = "short_stop_loss_trailing_only"
            case short_auto_close_positions = "short_auto_close_positions"
            case short_auto_close_positions_time = "short_auto_close_positions_time"
            case short_auto_remove_positions = "short_auto_remove_positions"
            case short_auto_remove_positions_time = "short_auto_remove_positions_time"
            case short_remove_on_loss = "short_remove_on_loss"
            case short_ignore_max_pos = "short_ignore_max_pos"
            case auto_close_positions = "auto_close_positions"
            case auto_close_positions_time = "auto_close_positions_time"
            case auto_dca = "auto_dca"
            case auto_dca_time = "auto_dca_time"
            case auto_dca_max = "auto_dca_max"
            case auto_dca_percentage = "auto_dca_percentage"
            case auto_dca_strategy = "auto_dca_strategy"
            case auto_dca_size = "auto_dca_size"
            case auto_dca_size_custom = "auto_dca_size_custom"
    }
    
}
