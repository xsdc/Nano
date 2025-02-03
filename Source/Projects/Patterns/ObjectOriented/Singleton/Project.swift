import ProjectDescription

let project = Project(
    name: "Singleton",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "SingletonAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.singleton.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "SingletonConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.singleton.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "SingletonAbstractions")
            ]
        ),
        .target(
            name: "SingletonKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.singleton.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "SingletonMocks"),
                .target(name: "SingletonConcretions"),
            ]
        ),
        .target(
            name: "SingletonKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.singleton.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "SingletonMocks"),
                .target(name: "SingletonConcretions"),
            ]
        ),
        .target(
            name: "SingletonMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.singleton.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "SingletonAbstractions")
            ]
        ),
        .target(
            name: "SingletonTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.singleton.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "SingletonMocks"),
                .target(name: "SingletonConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
