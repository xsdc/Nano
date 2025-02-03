import ProjectDescription

let project = Project(
    name: "Visitor",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "VisitorAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.visitor.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "VisitorConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.visitor.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "VisitorAbstractions")
            ]
        ),
        .target(
            name: "VisitorKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.visitor.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "VisitorMocks"),
                .target(name: "VisitorConcretions"),
            ]
        ),
        .target(
            name: "VisitorKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.visitor.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "VisitorMocks"),
                .target(name: "VisitorConcretions"),
            ]
        ),
        .target(
            name: "VisitorMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.visitor.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "VisitorConcretions")
            ]
        ),
        .target(
            name: "VisitorTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.visitor.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "VisitorMocks"),
                .target(name: "VisitorConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
