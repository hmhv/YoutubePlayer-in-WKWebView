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
            resources: [
                .copy("WKYTPlayerView.bundle"),
                .copy("PrivacyInfo.xcprivacy")
            ],
            publicHeadersPath: ".",
            cSettings: [
                .define("SPM_BUNDLE")
            ]
        )
    ]
)