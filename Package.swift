// swift-tools-version: 5.5

//
// Copyright 2023 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


import PackageDescription

let package = Package(
  name: "GoogleMaps", platforms: [.iOS(.v14)],
  products: [
    .library(name: "GoogleMaps", targets: ["GoogleMapsTarget"]),
    .library(name: "GoogleMapsCore", targets: ["GoogleMapsCoreTarget"]),
    .library(name: "GoogleMapsBase", targets: ["GoogleMapsBase"]),
    .library(name: "GoogleMapsUtils", targets: ["GoogleMapsUtilsTarget"]),
  ], dependencies: [],
  targets: [
    .binaryTarget(
      name: "GoogleMaps", url: "https://nuvyyo-bootstrap.s3.us-east-1.amazonaws.com/spm/GoogleMaps.xcframework.zip",
      checksum: "b62a7e481a02a9020c9b94a8bb31fa2228310236db4538a30e197f6aed78895b"
    ),
    .target(
      name: "GoogleMapsTarget",
      dependencies: ["GoogleMaps"],
      path: "Maps",
      sources: ["GMSEmpty.m"],
      resources: [.copy("Resources/GoogleMapsResources/GoogleMaps.bundle")],
      publicHeadersPath: "Sources",
      linkerSettings: [
        .linkedLibrary("z"),
        .linkedLibrary("c++"),
        .linkedFramework("Accelerate"),
        .linkedFramework("CoreData"),
        .linkedFramework("CoreGraphics"),
        .linkedFramework("CoreImage"),
        .linkedFramework("CoreLocation"),
        .linkedFramework("CoreTelephony"),
        .linkedFramework("CoreText"),
        .linkedFramework("GLKit"),
        .linkedFramework("ImageIO"),
        .linkedFramework("Metal"),
        .linkedFramework("OpenGLES"),
        .linkedFramework("QuartzCore"),
        .linkedFramework("SystemConfiguration"),
        .linkedFramework("UIKit"),
      ]
    ),
    .binaryTarget(
      name: "GoogleMapsCore", url: "https://nuvyyo-bootstrap.s3.us-east-1.amazonaws.com/spm/GoogleMapsCore.xcframework.zip",
      checksum: "05009364db1e95f3dc6845d3813d42b9a0cb8f5d54cb8579d8b4e6c73cab178e"
    ),
    .target(
      name: "GoogleMapsCoreTarget",
      dependencies: ["GoogleMapsCore"],
      path: "Core",
      sources: ["GMSEmpty.m"],
      publicHeadersPath: "Sources"
    ),
    .binaryTarget(
      name: "GoogleMapsBase", 
      url: "https://nuvyyo-bootstrap.s3.us-east-1.amazonaws.com/spm/GoogleMapsBase.xcframework.zip",
      checksum: "42813c113b0124018f8d640b57f8b0d41d9bca86287ff5421cd500fc2454b4cb"
    ),
    .binaryTarget(
      name: "GoogleMapsUtils", url: "https://nuvyyo-bootstrap.s3.us-east-1.amazonaws.com/spm/GoogleMapsUtils.xcframework.zip",
      checksum: "b967c0ecd55caa2a7c9cfa3ca19e08f9a966e97ab00b12dbfdf20805e0e49ae9"
    ),
    .target(
      name: "GoogleMapsUtilsTarget",
      dependencies: ["GoogleMapsUtils"],
      path: "Utils",
      sources: ["GMSEmpty.m"],
      publicHeadersPath: "Sources"
    ),
  ]
)