// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "tl2swift",
    products: [
        .executable(
            name: "tl2swift",
            targets: ["tl2swift"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TlParserLib",
            dependencies: []),
        .executableTarget(
            name: "tl2swift",
            dependencies: ["TlParserLib"])
    ]
)
