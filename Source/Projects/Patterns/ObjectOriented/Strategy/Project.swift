import ProjectDescription

let project = Project(
    name: "Strategy",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "StrategyAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.strategy.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "StrategyConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.strategy.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "StrategyAbstractions")
            ]
        ),
        .target(
            name: "StrategyKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.strategy.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "StrategyMocks"),
                .target(name: "StrategyConcretions"),
            ]
        ),
        .target(
            name: "StrategyKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.strategy.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "StrategyMocks"),
                .target(name: "StrategyConcretions"),
            ]
        ),
        .target(
            name: "StrategyMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.strategy.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "StrategyConcretions")
            ]
        ),
        .target(
            name: "StrategyTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.strategy.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "StrategyMocks"),
                .target(name: "StrategyConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
