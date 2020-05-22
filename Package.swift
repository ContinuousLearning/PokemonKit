// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PokemonKit",
    products: [
        .library(
            name: "PokemonKit",
            targets: ["PokemonKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PokemonKit",
            dependencies: []),
        .testTarget(
            name: "PokemonKitTests",
            dependencies: ["PokemonKit"]),
    ]
)
