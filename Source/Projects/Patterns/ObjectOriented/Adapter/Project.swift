import ProjectDescription

let project = Project(
    name: "Adapter",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "AdapterAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.adapter.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "AdapterConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.adapter.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "AdapterAbstractions")
            ]
        ),
        .target(
            name: "AdapterKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.adapter.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "AdapterMocks"),
                .target(name: "AdapterConcretions"),
            ]
        ),
        .target(
            name: "AdapterKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.adapter.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "AdapterMocks"),
                .target(name: "AdapterConcretions"),
            ]
        ),
        .target(
            name: "AdapterMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.adapter.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "AdapterConcretions")
            ]
        ),
        .target(
            name: "AdapterTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.adapter.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "AdapterMocks"),
                .target(name: "AdapterConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
