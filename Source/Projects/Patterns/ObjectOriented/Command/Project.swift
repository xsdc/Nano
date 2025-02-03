import ProjectDescription

let project = Project(
    name: "Command",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "CommandAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.command.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "CommandConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.command.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "CommandAbstractions")
            ]
        ),
        .target(
            name: "CommandKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.command.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "CommandMocks"),
                .target(name: "CommandConcretions"),
            ]
        ),
        .target(
            name: "CommandKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.command.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "CommandMocks"),
                .target(name: "CommandConcretions"),
            ]
        ),
        .target(
            name: "CommandMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.command.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "CommandConcretions")
            ]
        ),
        .target(
            name: "CommandTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.command.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "CommandMocks"),
                .target(name: "CommandConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
