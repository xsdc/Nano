import ProjectDescription

let project = Project(
    name: "Decorator",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "DecoratorAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.decorator.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "DecoratorConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.decorator.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "DecoratorAbstractions")
            ]
        ),
        .target(
            name: "DecoratorKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.decorator.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "DecoratorMocks"),
                .target(name: "DecoratorConcretions"),
            ]
        ),
        .target(
            name: "DecoratorKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.decorator.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "DecoratorMocks"),
                .target(name: "DecoratorConcretions"),
            ]
        ),
        .target(
            name: "DecoratorMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.decorator.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "DecoratorAbstractions")
            ]
        ),
        .target(
            name: "DecoratorTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.decorator.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "DecoratorMocks"),
                .target(name: "DecoratorConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
