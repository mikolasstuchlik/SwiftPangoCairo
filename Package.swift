// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "PangoCairo",
    products: [ .library(name: "PangoCairo", targets: ["PangoCairo"]) ],
    dependencies: [
        .package(name: "gir2swift", url: "https://github.com/mikolasstuchlik/gir2swift.git", .branch("main")),
        .package(name: "Cairo", url: "https://github.com/mikolasstuchlik/SwiftCairo.git", .branch("main")),
        .package(name: "Pango", url: "https://github.com/mikolasstuchlik/SwiftPango.git", .branch("main"))
    ],
    targets: [
        .target(name: "PangoCairo", dependencies: ["Cairo", "Pango"]),
        .testTarget(name: "PangoCairoTests", dependencies: ["PangoCairo"]),
    ]
)
