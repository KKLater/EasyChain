// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EasyChain",
    platforms: [SupportedPlatform.iOS(.v9)],
    products: [
        .library(name: "EasyChain", targets: ["EasyChainCore", "UIKitChain", "WebKitChain"]),
        .library(name: "UIKitChain", targets: ["UIKitChain"]),
        .library(name: "WebKitChain", targets: ["WebKitChain"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(name: "EasyChainCore"),
        .target(name: "UIKitChain", dependencies: ["EasyChainCore"]),
        .target(name: "WebKitChain", dependencies: ["UIKitChain"]),
        .testTarget(name: "EasyChainTests", dependencies: ["EasyChainCore", "UIKitChain", "WebKitChain"]),
    ]
)
