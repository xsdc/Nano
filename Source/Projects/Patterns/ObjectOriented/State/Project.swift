import ProjectDescription

let project = Project(
    name: "State",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "StateAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.state.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "StateConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.state.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "StateAbstractions")
            ]
        ),
        .target(
            name: "StateKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.state.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "StateMocks"),
                .target(name: "StateConcretions"),
            ]
        ),
        .target(
            name: "StateKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.state.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "StateMocks"),
                .target(name: "StateConcretions"),
            ]
        ),
        .target(
            name: "StateMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.state.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "StateConcretions")
            ]
        ),
        .target(
            name: "StateTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.state.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "StateMocks"),
                .target(name: "StateConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
