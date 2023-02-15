// swift-tools-version:5.6
// DO NOT EDIT! Generated automatically. See scripts/swift_package_generator.py

import PackageDescription

let package = Package(
    name: "TDLibKit",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "TDLibKit",
            type: .dynamic,
            targets: ["TDLibKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swiftgram/TDLibFramework", exact: "1.8.4-07b7faf6"),
    ],
    targets: [
        .target(
            name: "TDLibKit",
            dependencies: ["TDLibFramework"],
            linkerSettings: [
                .linkedLibrary("c++"),
                .linkedLibrary("z"),
                .linkedLibrary("c++abi", .when(platforms: [.iOS])),
                .linkedLibrary("System", .when(platforms: [.iOS]))
            ]),
    ]
)

