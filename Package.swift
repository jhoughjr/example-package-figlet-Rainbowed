// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "swift-figlet",
    products: [
        .library(
            name: "Figlet",
            targets: ["Figlet"]
        ),
    ], dependencies: [
        .package(url: "https://github.com/onevcat/Rainbow",
                 from: "4.0.0")
        
    ],
    targets: [
        .target(
            name: "Figlet",
            dependencies: [
                .product(name: "Rainbow", package: "Rainbow")
            ],
            resources: [
                .process("standard.flf")
            ]
        ),
        .testTarget(
            name: "FigletTests",
            dependencies: ["Figlet"]
        ),
    ]
)
