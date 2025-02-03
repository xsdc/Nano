import ProjectDescription

let project = Project(
    name: "Decorator",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "DecoratorAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.decorator.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "DecoratorConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.decorator.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "DecoratorAbstractions")
            ]
        ),
        .target(
            name: "DecoratorKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.decorator.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "DecoratorMocks"),
                .target(name: "DecoratorConcretions"),
            ]
        ),
        .target(
            name: "DecoratorKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.decorator.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "DecoratorMocks"),
                .target(name: "DecoratorConcretions"),
            ]
        ),
        .target(
            name: "DecoratorMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.decorator.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "DecoratorAbstractions")
            ]
        ),
        .target(
            name: "DecoratorTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.decorator.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "DecoratorMocks"),
                .target(name: "DecoratorConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
