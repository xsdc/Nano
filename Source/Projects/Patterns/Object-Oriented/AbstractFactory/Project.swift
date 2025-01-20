import ProjectDescription

let project = Project(
    name: "AbstractFactory",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "AbstractFactoryAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.abstract-factory.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "AbstractFactoryConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.abstract-factory.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "AbstractFactoryAbstractions")
            ]
        ),
        .target(
            name: "AbstractFactoryKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.abstract-factory.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "AbstractFactoryMocks"),
                .target(name: "AbstractFactoryConcretions"),
            ]
        ),
        .target(
            name: "AbstractFactoryKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.abstract-factory.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "AbstractFactoryMocks"),
                .target(name: "AbstractFactoryConcretions"),
            ]
        ),
        .target(
            name: "AbstractFactoryMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.abstract-factory.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "AbstractFactoryAbstractions")
            ]
        ),
        .target(
            name: "AbstractFactoryTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.abstract-factory.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "AbstractFactoryMocks"),
                .target(name: "AbstractFactoryConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
