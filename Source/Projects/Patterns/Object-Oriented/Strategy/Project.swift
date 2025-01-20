import ProjectDescription

let project = Project(
    name: "Strategy",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "StrategyAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.strategy.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "StrategyConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.strategy.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "StrategyAbstractions")
            ]
        ),
        .target(
            name: "StrategyKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.strategy.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "StrategyMocks"),
                .target(name: "StrategyConcretions"),
            ]
        ),
        .target(
            name: "StrategyKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.strategy.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "StrategyMocks"),
                .target(name: "StrategyConcretions"),
            ]
        ),
        .target(
            name: "StrategyMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.strategy.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "StrategyConcretions")
            ]
        ),
        .target(
            name: "StrategyTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.strategy.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "StrategyMocks"),
                .target(name: "StrategyConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
