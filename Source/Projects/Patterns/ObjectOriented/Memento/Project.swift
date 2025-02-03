import ProjectDescription

let project = Project(
    name: "Memento",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "MementoAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.memento.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "MementoConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.memento.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "MementoAbstractions")
            ]
        ),
        .target(
            name: "MementoKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.memento.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "MementoMocks"),
                .target(name: "MementoConcretions"),
            ]
        ),
        .target(
            name: "MementoKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.memento.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "MementoMocks"),
                .target(name: "MementoConcretions"),
            ]
        ),
        .target(
            name: "MementoMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.memento.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "MementoAbstractions")
            ]
        ),
        .target(
            name: "MementoTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.memento.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "MementoMocks"),
                .target(name: "MementoConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
