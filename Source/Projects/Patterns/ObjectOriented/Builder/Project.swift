import ProjectDescription

let project = Project(
    name: "Builder",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "BuilderAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.builder.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "BuilderConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.builder.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "BuilderAbstractions")
            ]
        ),
        .target(
            name: "BuilderKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.builder.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "BuilderMocks"),
                .target(name: "BuilderConcretions"),
            ]
        ),
        .target(
            name: "BuilderKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.builder.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "BuilderMocks"),
                .target(name: "BuilderConcretions"),
            ]
        ),
        .target(
            name: "BuilderMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.builder.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "BuilderConcretions")
            ]
        ),
        .target(
            name: "BuilderTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.builder.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "BuilderMocks"),
                .target(name: "BuilderConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
