import ProjectDescription

let project = Project(
    name: "State",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "StateAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.state.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "StateConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.state.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "StateAbstractions")
            ]
        ),
        .target(
            name: "StateKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.state.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "StateMocks"),
                .target(name: "StateConcretions"),
            ]
        ),
        .target(
            name: "StateKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.state.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "StateMocks"),
                .target(name: "StateConcretions"),
            ]
        ),
        .target(
            name: "StateMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.state.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "StateConcretions")
            ]
        ),
        .target(
            name: "StateTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.state.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "StateMocks"),
                .target(name: "StateConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
