![Header](./header.png)

# PokemonKit

PokemonKit is a [Swift package](https://swift.org/package-manager/) wrapping [PokeAPI](https://pokeapi.co).
It uses Foundation's URLSession and Swift's Result type.
Callbacks can easily be transformed into _Combine_ Futures.

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

Example: Create a _Combine_ Future.

```swift
import Combine
import PokemonKit

let favoriteVersion = Future(Version.fetch(id: "alpha-sapphire"))
favoriteVersion.subscribe(...)
```

## Configuration

Set `PokemonKit.baseURL` to another URL, e.g., if you want to host your own instance of PokeAPI.

## Code Generation

`Types+Resource.swift.gyb` is a [GYB](https://nshipster.com/swift-gyb/) template to generate all protocol conformances to `Resource` that are listed in `resource-conformance.csv`.
Execute `$ make generate` to renew `Types+Resource.swift`.

## Testing

`InternalTests.swift` sets intentionally `PokemonKit.baseURL` to a localhost URL.

## Authors

- Nityananda Zbil
- forked from [Yeung Yiu Hung](https://github.com/ContinuousLearning/PokemonKit)
