import ProjectDescription

let project = Project(
    name: "Builder",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "BuilderAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.builder.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "BuilderConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.builder.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "BuilderAbstractions")
            ]
        ),
        .target(
            name: "BuilderKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.builder.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "BuilderMocks"),
                .target(name: "BuilderConcretions"),
            ]
        ),
        .target(
            name: "BuilderKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.builder.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "BuilderMocks"),
                .target(name: "BuilderConcretions"),
            ]
        ),
        .target(
            name: "BuilderMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.builder.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "BuilderConcretions")
            ]
        ),
        .target(
            name: "BuilderTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.builder.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "BuilderMocks"),
                .target(name: "BuilderConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
