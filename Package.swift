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
    .library(
        name: "GoogleMaps", 
        targets: ["GoogleMapsTargets"])
  ],
  dependencies: [],
  targets: [
    .binaryTarget(
      name: "GoogleMapsTargets", 
      url: "https://nuvyyo-bootstrap.s3.us-east-1.amazonaws.com/spm/GoogleMaps-6.2.1-beta.zip",
      checksum: "88d75d16cecc97c5a2462810f48f2ab0760cbfbfa32faea8350a175692ea3f2b"
    )
  ]
)
