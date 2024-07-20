// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "SchwabAPI",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "SchwabAPI",
            targets: ["SchwabAPI"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SchwabAPI",
            dependencies: []),
        .testTarget(
            name: "SchwabAPITests",
            dependencies: ["SchwabAPI"]),
    ]
)
