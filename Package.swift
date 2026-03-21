// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "YoutubePlayer_in_WKWebView",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "YoutubePlayer_in_WKWebView",
            targets: ["YoutubePlayer_in_WKWebView"]
        )
    ],
    targets: [
        .target(
            name: "YoutubePlayer_in_WKWebView",
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
