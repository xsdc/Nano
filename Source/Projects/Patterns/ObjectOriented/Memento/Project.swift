import ProjectDescription

let project = Project(
    name: "Memento",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "MementoAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.memento.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "MementoConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.memento.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "MementoAbstractions")
            ]
        ),
        .target(
            name: "MementoKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.memento.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "MementoMocks"),
                .target(name: "MementoConcretions"),
            ]
        ),
        .target(
            name: "MementoKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.memento.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "MementoMocks"),
                .target(name: "MementoConcretions"),
            ]
        ),
        .target(
            name: "MementoMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.memento.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "MementoAbstractions")
            ]
        ),
        .target(
            name: "MementoTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.memento.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "MementoMocks"),
                .target(name: "MementoConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
