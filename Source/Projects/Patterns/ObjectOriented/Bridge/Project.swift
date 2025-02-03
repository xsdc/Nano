import ProjectDescription

let project = Project(
    name: "Bridge",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "BridgeAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.bridge.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "BridgeConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.bridge.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "BridgeAbstractions")
            ]
        ),
        .target(
            name: "BridgeKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.bridge.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "BridgeMocks"),
                .target(name: "BridgeConcretions"),
            ]
        ),
        .target(
            name: "BridgeKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.bridge.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "BridgeMocks"),
                .target(name: "BridgeConcretions"),
            ]
        ),
        .target(
            name: "BridgeMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.bridge.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "BridgeAbstractions")
            ]
        ),
        .target(
            name: "BridgeTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.bridge.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "BridgeMocks"),
                .target(name: "BridgeConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
