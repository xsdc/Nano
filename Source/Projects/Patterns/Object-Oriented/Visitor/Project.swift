import ProjectDescription

let project = Project(
    name: "Visitor",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "VisitorAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.visitor.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "VisitorConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.visitor.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "VisitorAbstractions")
            ]
        ),
        .target(
            name: "VisitorKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.visitor.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "VisitorMocks"),
                .target(name: "VisitorConcretions"),
            ]
        ),
        .target(
            name: "VisitorKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.visitor.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "VisitorMocks"),
                .target(name: "VisitorConcretions"),
            ]
        ),
        .target(
            name: "VisitorMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.visitor.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "VisitorConcretions")
            ]
        ),
        .target(
            name: "VisitorTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.visitor.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "VisitorMocks"),
                .target(name: "VisitorConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
