// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AliceOnboarding",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "AliceOnboarding",
            targets: ["AliceOnboarding"]),
    ],
    dependencies: [
            .package(
                name: "OpenSSL",
                url: "https://github.com/krzyzanowskim/OpenSSL.git",
                .exact("1.1.2000")
            )
        ],
    ],
    targets: [
        .binaryTarget(name: "AliceOnboarding",
                      url: "https://storage.googleapis.com/onboarding-ios-spm/AliceOnboarding.zip",
                      checksum: "0aeaec17c7fcc80edde7fe704e14cde30846796b1e871778c7b168228518b7db"),
    ]
)
