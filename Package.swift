// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MFaved",
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MFaved",
            targets: ["MFaved"])
    ],
    dependencies: [
            // Dependencies declare other packages that this package depends on.
            .package(url: "https://github.com/realm/realm-swift.git", branch: "master"),
            .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.2.0")),
            .package(url: "https://github.com/f43app/Core.git", branch: "main")
        ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MFaved",
            dependencies: [
                .product(name: "RealmSwift", package: "realm-swift"),
                "Core",
                "Alamofire"
            ]),
        .testTarget(
            name: "MFavedTests",
            dependencies: ["MFaved"])
    ]
)
