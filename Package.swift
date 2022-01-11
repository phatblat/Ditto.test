// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto.test",
    products: [
        .library(
            name: "Ditto.test",
            targets: ["Ditto.test"]),
    ],
    dependencies: [
        .package(path: "../Ditto.objc"),
    ],
    targets: [
        .target(
            name: "Ditto.test",
            dependencies: []),
        .testTarget(
            name: "Ditto.testTests",
            dependencies: ["Ditto.test"]),
    ]
)
