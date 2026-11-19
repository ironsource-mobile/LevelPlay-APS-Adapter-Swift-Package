// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-APS-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "APSAdapter", targets: ["APSAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/amzn/swift-package-manager-amazon-aps", exact: "5.7.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/aps-adapter/5.14.0/ISAPSAdapter5.14.0.zip",
      checksum: "0b6b8d7c1f5fe86ad706ea2d5194b8dac325877ef739229ce9aeee817634dc54"
    )
  ]
)
