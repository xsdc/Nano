import ProjectDescription

let project = Project(
    name: "Mediator",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "MediatorAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.mediator.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "MediatorConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.mediator.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "MediatorAbstractions")
            ]
        ),
        .target(
            name: "MediatorKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.mediator.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "MediatorMocks"),
                .target(name: "MediatorConcretions"),
            ]
        ),
        .target(
            name: "MediatorKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.mediator.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "MediatorMocks"),
                .target(name: "MediatorConcretions"),
            ]
        ),
        .target(
            name: "MediatorMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.mediator.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "MediatorConcretions")
            ]
        ),
        .target(
            name: "MediatorTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.mediator.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "MediatorMocks"),
                .target(name: "MediatorConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
