// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "PangoCairo",
    products: [
        .library(name: "PangoCairo", targets: ["PangoCairo"]),
    ],
    dependencies: [
        .package(url: "file:///Users/rh/src/swift/rh/gtk/SwiftCairo", .branch("master")),
        .package(url: "file:///Users/rh/src/swift/rh/gtk/SwiftPango", .branch("master"))
        //.package(url: "https://github.com/rhx/SwiftCairo.git", .branch("master")),
        //.package(url: "https://github.com/rhx/SwiftPango.git", .branch("master"))
    ],
    targets: [
        .target(name: "PangoCairo", dependencies: ["Cairo", "Pango"]),
        .testTarget(name: "PangoCairoTests", dependencies: ["PangoCairo"]),
    ]
)
