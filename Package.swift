// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PokemonKit",
    products: [
        .library(
            name: "PokemonKit",
            targets: ["PokemonKit"]),
        .executable(
            name: "PokemonGen",
            targets: ["PokemonGen"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PokemonKit",
            dependencies: []),
        .target(
            name: "PokemonGen",
            dependencies: ["PokemonKit"]),
        .testTarget(
            name: "PokemonKitTests",
            dependencies: ["PokemonKit"]),
    ]
)
