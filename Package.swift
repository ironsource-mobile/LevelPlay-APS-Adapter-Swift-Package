// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-APS-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "APSAdapter", targets: ["APSAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/amzn/swift-package-manager-amazon-aps", exact: "5.6.6"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "APSAdapter",
      dependencies: [
        "APSAdapterSDK",
        .product(name: "AmazonPublisherServicesSDK", package: "swift-package-manager-amazon-aps"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "APSAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/aps-adapter/5.13.0/ISAPSAdapter5.13.0.zip",
      checksum: "b4bff71f3096ae99e21c1b48dddfd54699b7f49d1e7c3c0eaae56f9f08025199"
    )
  ]
)
