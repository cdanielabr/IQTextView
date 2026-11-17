// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "IQTextView",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "IQTextView",
            targets: ["IQTextView"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/cdanielabr/IQKeyboardToolbar.git", branch: "main"),
    ],
    targets: [
        .target(name: "IQTextView",
                dependencies: ["IQKeyboardToolbar"],
            path: "IQTextView",
            resources: [
                .copy("Assets/PrivacyInfo.xcprivacy")
            ],
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ]
)
