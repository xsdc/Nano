import ProjectDescription

let project = Project(
    name: "ChainOfResponsibility",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "ChainOfResponsibilityAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.chain-of-responsibility.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "ChainOfResponsibilityConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.chain-of-responsibility.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "ChainOfResponsibilityAbstractions")
            ]
        ),
        .target(
            name: "ChainOfResponsibilityKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.chain-of-responsibility.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "ChainOfResponsibilityMocks"),
                .target(name: "ChainOfResponsibilityConcretions"),
            ]
        ),
        .target(
            name: "ChainOfResponsibilityKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.chain-of-responsibility.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "ChainOfResponsibilityMocks"),
                .target(name: "ChainOfResponsibilityConcretions"),
            ]
        ),
        .target(
            name: "ChainOfResponsibilityMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.chain-of-responsibility.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "ChainOfResponsibilityConcretions")
            ]
        ),
        .target(
            name: "ChainOfResponsibilityTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.chain-of-responsibility.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "ChainOfResponsibilityMocks"),
                .target(name: "ChainOfResponsibilityConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
