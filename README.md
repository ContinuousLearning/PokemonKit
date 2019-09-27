# PokemonKit

## What is this?
PokemonKit is a swift wrapper for [PokeAPI](https://pokeapi.co). 

PokemonKit uses Foundation's URLSession and PromiseKit for asynchronous web requests.

## Features

- [x] Wrap all API end points
- [ ] Fully Documented
- [ ] Fully tested

## Usage

```swift
import PokemonKit

PokemonKit.fetchBerry("1").then { berryInfo in
    print(berryInfo.name)
}
```

## Installation

Add the following line to your dependencies in your Package.swift file:
```swift
.package(url: "https://github.com/nityanandaz/PokemonKit.git", from: "3.0.0")
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

## Author

Nityananda Zbil

Special thanks to
Yeung Yiu Hung, hkclex@gmail.com
