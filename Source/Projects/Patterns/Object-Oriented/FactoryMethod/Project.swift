import ProjectDescription

let project = Project(
    name: "FactoryMethod",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "FactoryMethodAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.factory-method.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "FactoryMethodConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.factory-method.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "FactoryMethodAbstractions")
            ]
        ),
        .target(
            name: "FactoryMethodKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.factory-method.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "FactoryMethodMocks"),
                .target(name: "FactoryMethodConcretions"),
            ]
        ),
        .target(
            name: "FactoryMethodKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.factory-method.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "FactoryMethodMocks"),
                .target(name: "FactoryMethodConcretions"),
            ]
        ),
        .target(
            name: "FactoryMethodMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.factory-method.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "FactoryMethodAbstractions")
            ]
        ),
        .target(
            name: "FactoryMethodTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.factory-method.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "FactoryMethodMocks"),
                .target(name: "FactoryMethodConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
