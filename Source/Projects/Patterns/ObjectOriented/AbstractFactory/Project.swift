import ProjectDescription

let project = Project(
    name: "AbstractFactory",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "AbstractFactoryAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.abstract-factory.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "AbstractFactoryConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.abstract-factory.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "AbstractFactoryAbstractions")
            ]
        ),
        .target(
            name: "AbstractFactoryKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.abstract-factory.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "AbstractFactoryMocks"),
                .target(name: "AbstractFactoryConcretions"),
            ]
        ),
        .target(
            name: "AbstractFactoryKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.abstract-factory.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "AbstractFactoryMocks"),
                .target(name: "AbstractFactoryConcretions"),
            ]
        ),
        .target(
            name: "AbstractFactoryMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.abstract-factory.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "AbstractFactoryAbstractions")
            ]
        ),
        .target(
            name: "AbstractFactoryTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.abstract-factory.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "AbstractFactoryMocks"),
                .target(name: "AbstractFactoryConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
