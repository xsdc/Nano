import ProjectDescription

let project = Project(
    name: "Command",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "CommandAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.command.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "CommandConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.command.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "CommandAbstractions")
            ]
        ),
        .target(
            name: "CommandKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.command.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "CommandMocks"),
                .target(name: "CommandConcretions"),
            ]
        ),
        .target(
            name: "CommandKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.command.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "CommandMocks"),
                .target(name: "CommandConcretions"),
            ]
        ),
        .target(
            name: "CommandMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.command.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "CommandConcretions")
            ]
        ),
        .target(
            name: "CommandTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.command.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "CommandMocks"),
                .target(name: "CommandConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
