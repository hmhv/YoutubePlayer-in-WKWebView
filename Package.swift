// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "YoutubePlayer-in-WKWebView",
    products: [
        .library(
            name: "YoutubePlayer-in-WKWebView",
            targets: ["YoutubePlayer-in-WKWebView"]
        )
    ],
    targets: [
        .target(
            name: "YoutubePlayer-in-WKWebView",
            path: "WKYTPlayerView",
            //exclude: ["youtube-player-ios-example", "YoutubePlayer-in-WKWebView.podspec"],
            resources: [
                .process("WKYTPlayerView.bundle")
                .process("PrivacyInfo.xcprivacy")
            ],
            publicHeadersPath: ".",
            cSettings: [
                .define("SPM_BUNDLE")
            ]
        )
    ]
)
