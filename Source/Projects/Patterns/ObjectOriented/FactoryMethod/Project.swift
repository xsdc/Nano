import ProjectDescription

let project = Project(
    name: "FactoryMethod",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "FactoryMethodAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.factory-method.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "FactoryMethodConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.factory-method.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "FactoryMethodAbstractions")
            ]
        ),
        .target(
            name: "FactoryMethodKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.factory-method.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "FactoryMethodMocks"),
                .target(name: "FactoryMethodConcretions"),
            ]
        ),
        .target(
            name: "FactoryMethodKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.factory-method.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "FactoryMethodMocks"),
                .target(name: "FactoryMethodConcretions"),
            ]
        ),
        .target(
            name: "FactoryMethodMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.factory-method.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "FactoryMethodAbstractions")
            ]
        ),
        .target(
            name: "FactoryMethodTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.factory-method.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "FactoryMethodMocks"),
                .target(name: "FactoryMethodConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
