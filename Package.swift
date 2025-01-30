// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
// https://migueldeicaza.github.io/SwiftGodotDocs/tutorials/swiftgodot/your-first-extension/

import PackageDescription

let package = Package(
    name: "SwiftGodotUI",
    platforms: [.iOS(.v17)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftGodotUI",
            type: .dynamic,
            targets: ["SwiftGodotUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/migueldeicaza/SwiftGodot", branch: "main")

    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftGodotUI",
            dependencies: [
                "SwiftGodot",
            ],
            resources: [
                .process("Sources/SwiftGodotUI/SwiftGodotUIViewController.xib")
            ],
            swiftSettings: [.unsafeFlags(["-suppress-warnings"])]
        ),
    ]
)
