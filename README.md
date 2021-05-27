# Cryptohopper iOS SDK -> Swift 5

Add the following line to your Podfile 

```
pod 'Cryptohopper-iOS-SDK'
```

And run install command on your directory

```
pod install
```

# Integrate the SDK into your app


```
import Cryptohopper-iOS-SDK
```

Initialize Cryptohopper SDK in the `didFinishLaunching` or `didFinishLaunchingWithOptions` method of your AppDelegate file

```
CryptoHopperConfig.configure(clientId: "YOUR_CLIENT_ID_HERE", environment : HopperAPIEnvironment.Production)
```

Replace "YOUR_CLIENT_ID_HERE" string with client id that is given to you by Cryptohopper . If you don't have one you can request it from here : https://www.cryptohopper.com/api-documentation/introduction

# Contexts

There are 8 different contexts in the SDK that you can request data from which are :

```
CryptohopperAuth
```

```
CryptohopperHopper
```

```
CryptohopperMarketplace
```

```
CryptohopperUser
```

```
CryptohopperTemplate
```

```
CryptohopperExchange
```

```
CryptohopperStrategy
```

```
CryptohopperPurchase
```

Each of the contexts above has some static methods that you can see from inside.

# Example Usage

Example login Request :

```
CryptohopperAuth.login(username: "testUsername", password: "testPassword") { (result) in
    switch(result){
    case .success(let successStr):
        //After this method succeed you can request other context's methods that required authenticataion. No need to store any credentials . Everything is handled by the SDK
        print("Loged-in successfully")
    case .failure(let err):
        print(err)
    }
}
```
