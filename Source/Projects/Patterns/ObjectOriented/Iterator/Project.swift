import ProjectDescription

let project = Project(
    name: "Iterator",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "IteratorAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.iterator.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "IteratorConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.iterator.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "IteratorAbstractions")
            ]
        ),
        .target(
            name: "IteratorKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.iterator.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "IteratorMocks"),
                .target(name: "IteratorConcretions"),
            ]
        ),
        .target(
            name: "IteratorKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.iterator.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "IteratorMocks"),
                .target(name: "IteratorConcretions"),
            ]
        ),
        .target(
            name: "IteratorMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.iterator.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "IteratorAbstractions")
            ]
        ),
        .target(
            name: "IteratorTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.iterator.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "IteratorMocks"),
                .target(name: "IteratorConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
