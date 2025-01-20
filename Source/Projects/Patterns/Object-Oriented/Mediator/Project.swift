import ProjectDescription

let project = Project(
    name: "Mediator",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "MediatorAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.mediator.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "MediatorConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.mediator.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "MediatorAbstractions")
            ]
        ),
        .target(
            name: "MediatorKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.mediator.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "MediatorMocks"),
                .target(name: "MediatorConcretions"),
            ]
        ),
        .target(
            name: "MediatorKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.mediator.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "MediatorMocks"),
                .target(name: "MediatorConcretions"),
            ]
        ),
        .target(
            name: "MediatorMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.mediator.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "MediatorConcretions")
            ]
        ),
        .target(
            name: "MediatorTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.mediator.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "MediatorMocks"),
                .target(name: "MediatorConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
