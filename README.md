# PokemonKit

[![Build Status](https://travis-ci.org/ContinuousLearning/PokemonKit.svg?branch=master)](https://travis-ci.org/ContinuousLearning/PokemonKit)
[![Version](https://img.shields.io/cocoapods/v/PokemonKit.svg?style=flat)](http://cocoapods.org/pods/PokemonKit)
[![License](https://img.shields.io/cocoapods/l/PokemonKit.svg?style=flat)](http://cocoapods.org/pods/PokemonKit)
[![Platform](https://img.shields.io/cocoapods/p/PokemonKit.svg?style=flat)](http://cocoapods.org/pods/PokemonKit)

## What is this?
PokemonKit is a swift wrapper for Pokeapi. 

PokemonKit use Alamofire and PromiseKit for async web requests handling.

## Usage

```swift
import PokemonKit

PokemonKit.fetchBerry("1")
            .then { berryInfo in
                self.testLabel.text = berryInfo.name;
            }.error {error in
                print(error)
        }
```

## TODO

- [x] Wrap all API end points
- [ ] Fully Documented (In progress: 17% documented)
- [ ] Fully tested

## Installation

PokemonKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PokemonKit'
```

In your Info.plist, add
```plist
<key>NSAppTransportSecurity</key>
<dict>
	<key>NSExceptionDomains</key>
	<dict>
		<key>pokeapi.co</key>
		<dict>
			<key>NSIncludesSubdomains</key>
			<true/>
			<key>NSTemporaryExceptionAllowsInsecureHTTPLoads</key>
			<true/>
			<key>NSTemporaryExceptionMinimumTLSVersion</key>
			<string>TLSv1.1</string>
		</dict>
	</dict>
</dict>
```

## Author

Yeung Yiu Hung, hkclex@gmail.com

## License

PokemonKit is available under the MIT license. See the LICENSE file for more info.


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/ContinuousLearning/pokemonkit/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

