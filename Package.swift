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
        .package(url: "https://github.com/PSPDFKit/PSPDFKit-SP", from: "11.1.1")
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
