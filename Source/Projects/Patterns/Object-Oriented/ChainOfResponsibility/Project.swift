import ProjectDescription

let project = Project(
    name: "ChainOfResponsibility",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "ChainOfResponsibilityAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.chain-of-responsibility.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "ChainOfResponsibilityConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.chain-of-responsibility.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "ChainOfResponsibilityAbstractions")
            ]
        ),
        .target(
            name: "ChainOfResponsibilityKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.chain-of-responsibility.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "ChainOfResponsibilityMocks"),
                .target(name: "ChainOfResponsibilityConcretions"),
            ]
        ),
        .target(
            name: "ChainOfResponsibilityKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.chain-of-responsibility.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "ChainOfResponsibilityMocks"),
                .target(name: "ChainOfResponsibilityConcretions"),
            ]
        ),
        .target(
            name: "ChainOfResponsibilityMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.chain-of-responsibility.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "ChainOfResponsibilityConcretions")
            ]
        ),
        .target(
            name: "ChainOfResponsibilityTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.chain-of-responsibility.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "ChainOfResponsibilityMocks"),
                .target(name: "ChainOfResponsibilityConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
