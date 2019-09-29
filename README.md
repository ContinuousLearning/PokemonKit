# PokemonKit

## What is this?
PokemonKit is a swift wrapper for [PokeAPI](https://pokeapi.co). 

PokemonKit uses Foundation's URLSession and Swift's _Result_ type.
The Result completion works beautifully with the _Combine_ framework.

## Features

- [x] Wrap all API end points
- [x] Fully Documented
- [x] Fully tested

## Usage

```swift
import PokemonKit

fetchBerry(id: "1") { (result) in
    if case .success(let berry) = result {
        print(berry.name)
    }
}
```
with Combine
```swift
import Combine
import PokemonKit

let future = Future(fetchPokemonList)
// future.subscribe(/* subscriber */)
```

## Installation

Add the following line to your dependencies in your Package.swift file:
```swift
.package(url: "https://github.com/nityanandaz/PokemonKit.git", from: "4.0.0")
```
See [Swift Package Manager](https://swift.org/package-manager/) for more information.

## License

MIT License

Copyright (c) 2019 Nityananda Zbil

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Authors

Nityananda Zbil

Special thanks to Yeung Yiu Hung, hkclex@gmail.com
They initially wrote all the classes and functions.
