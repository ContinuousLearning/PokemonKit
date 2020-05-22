![Header](./header.png)

# PokemonKit
PokemonKit is a [Swift package](https://swift.org/package-manager/) wrapping [PokeAPI](https://pokeapi.co).
It uses Foundation's URLSession and Swift's _Result_ type.

## Features
- [x] Wraps all API endpoints,
- [x] and totally tested.

<!-- Yes, every possible value is tested. -->

## Installation
Add `.package(url: "https://github.com/nityanandaz/PokemonKit.git", from: "4.0.0")` to your dependencies.

## Usage
Example: Fetch berry with id 1.

```swift
import PokemonKit

fetchBerry(id: "1") { (result) in
    if case .success(let berry) = result {
        print(berry.name)
    }
}
```

## References
- [PokeAPI](https://github.com/PokeAPI/pokeapi)
- [GYB](https://nshipster.com/swift-gyb/)
- [Python (re)](https://docs.python.org/3/library/re.html)

## Authors
- Nityananda Zbil
- forked from [Yeung Yiu Hung](https://github.com/ContinuousLearning/PokemonKit)
