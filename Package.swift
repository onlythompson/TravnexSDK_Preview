// swift-tools-version:5.5
//  Package.swift
//  TravnexSDK-Preview
//
//  Created by Dominic Thompson on 11/6/24.
//

import PackageDescription

let package = Package(
    name: "TravnexSDK",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "TravnexSDK",
            targets: ["TravnexSDK"]),
    ],
    dependencies:[
        .package(url:"https://github.com/AgoraIO/AgoraRtcEngine_iOS.git", .upToNextMajor(from: "4.4.0")),
    ],
    targets: [
        .target(
            name: "TravnexSDK",
            dependencies: [
                .product(name: "AgoraRtcKit", package:"AgoraRtcEngine_iOS")
            ],
            path: "TravnexSDK",
//            exclude:["Info.plist"],
            sources: ["Internal", "Public"],
            publicHeadersPath: "Public")
        ],
    swiftLanguageVersions: [.v5]
    )
    
