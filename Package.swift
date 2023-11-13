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
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.9.1"),
        .package(url: "https://github.com/antitypical/Result.git", from: "5.0.0"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.1"),
        .package(url: "https://github.com/jpsim/Yams.git", from: "2.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "1.0.0"),
        .package(url: "https://github.com/krzyzanowskim/OpenSSL.git", .upToNextMinor(from: "1.1.2000")),
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.2.0")
    ],
    targets: [
        .binaryTarget(name: "AliceOnboarding",
                      url: "https://storage.googleapis.com/onboarding-ios-spm/AliceOnboarding.zip",
                      checksum: "147f1601dac5ff8c6e535c73494ccaf3c360f3267fc6502b6f9acc16bad5ce27"),
    ]
)
