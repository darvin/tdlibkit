import argparse

def get_file_content(tdlibframework_version):
    return f"""// swift-tools-version:5.6
// DO NOT EDIT! Generated automatically. See scripts/swift_package_generator.py

import PackageDescription

let package = Package(
    name: "TDLibKit",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "TDLibKit",
            targets: ["TDLibKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swiftgram/TDLibFramework", exact: "{tdlibframework_version}"),
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

"""

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("tdlibframework_version", help="Swiftgram/TDLibFramework version")    
    args = parser.parse_args()
    with open('Package.swift', 'w') as f:
        f.write(get_file_content(args.tdlibframework_version))
