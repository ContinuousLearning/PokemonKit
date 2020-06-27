![Header](./header.png)

# PokemonKit

PokemonKit is a [Swift package](https://swift.org/package-manager/) wrapping [PokeAPI](https://pokeapi.co).
It uses Foundation's URLSession and Swift's Result type.

## Features

- [x] Wraps all API endpoints,
- [x] and is well tested.

## Installation

Add `.package(url: "https://github.com/nityanandaz/PokemonKit.git", from: "4.0.0")` to your dependencies.

## Usage

Example: Fetch berry with id 1.

```swift
import PokemonKit

Berry.fetch(id: "1") { (result) in
    if case let .success(berry) = result {
        print(berry.name)
    }
}
```

## References

- [PokeAPI](https://github.com/PokeAPI/pokeapi)
- [GYB](https://nshipster.com/swift-gyb/)

## Authors

- Nityananda Zbil
- forked from [Yeung Yiu Hung](https://github.com/ContinuousLearning/PokemonKit)
