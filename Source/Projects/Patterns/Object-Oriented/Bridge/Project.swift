import ProjectDescription

let project = Project(
    name: "Bridge",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "BridgeAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.bridge.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "BridgeConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.bridge.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "BridgeAbstractions")
            ]
        ),
        .target(
            name: "BridgeKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.bridge.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "BridgeMocks"),
                .target(name: "BridgeConcretions"),
            ]
        ),
        .target(
            name: "BridgeKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.bridge.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "BridgeMocks"),
                .target(name: "BridgeConcretions"),
            ]
        ),
        .target(
            name: "BridgeMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.bridge.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "BridgeAbstractions")
            ]
        ),
        .target(
            name: "BridgeTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.bridge.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "BridgeMocks"),
                .target(name: "BridgeConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
