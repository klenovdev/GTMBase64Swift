// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GTMBase64Swift",
    products: [
        .library(
            name: "GTMBase64Swift",
            targets: ["GTMBase64Swift"]),
    ],
    dependencies: [ ],
    targets: [
        .target(
            name: "GTMBase64Swift",
            dependencies: ["GTMBase64"]),
        
        .target(name: "GTMBase64",
                dependencies: [],
                path: "Sources/GTMBase64"),
        
        .testTarget(
            name: "GTMBase64SwiftTests",
            dependencies: ["GTMBase64Swift"]),
    ]
)
