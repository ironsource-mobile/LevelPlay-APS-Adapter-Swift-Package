// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-APS-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/aps-adapter/5.12.0/ISAPSAdapter5.12.0.zip",
      checksum: "8a04b4dc9ab19384e6ec6ae5d462e92c619efea24f75f8ca46b5ef0f17e60e39"
    )
  ]
)
