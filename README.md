# PokemonKit

[![Build Status](https://travis-ci.org/ContinuousLearning/PokemonKit.svg?branch=master)](https://travis-ci.org/ContinuousLearning/PokemonKit)
[![Version](https://img.shields.io/cocoapods/v/PokemonKit.svg?style=flat)](http://cocoapods.org/pods/PokemonKit)
[![License](https://img.shields.io/cocoapods/l/PokemonKit.svg?style=flat)](http://cocoapods.org/pods/PokemonKit)
[![Platform](https://img.shields.io/cocoapods/p/PokemonKit.svg?style=flat)](http://cocoapods.org/pods/PokemonKit)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![codebeat badge](https://codebeat.co/badges/8394f59e-c142-4477-b535-3d0b58007f78)](https://codebeat.co/projects/github-com-continuouslearning-pokemonkit)

## What is this?
PokemonKit is a swift wrapper for Pokeapi. 

PokemonKit use Alamofire and PromiseKit for async web requests handling.

## Usage

```swift
import PokemonKit

PokemonKit.fetchBerry("1")
            .then { berryInfo in
                self.testLabel.text = berryInfo.name;
            }.onError {error in
                print(error)
        }
```

## TODO

- [x] Wrap all API end points
- [x] Fully [Documented](http://continuouslearning.github.io/PokemonKit/)
- [ ] Fully tested
- [x] Carthage Support
- [ ] Unit test don't call server
- [x] Remove PromiseKit (So many build errors, not worth it)

## Installation

PokemonKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PokemonKit'
```

If your using Carthage you can add a PokemonKit by adding it to your Cartfile:

```ruby
github "ContinuousLearning/PokemonKit" ~> 2.0
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

