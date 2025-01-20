import ProjectDescription

let project = Project(
    name: "Iterator",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "IteratorAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.iterator.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "IteratorConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.iterator.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "IteratorAbstractions")
            ]
        ),
        .target(
            name: "IteratorKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.iterator.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "IteratorMocks"),
                .target(name: "IteratorConcretions"),
            ]
        ),
        .target(
            name: "IteratorKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.iterator.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "IteratorMocks"),
                .target(name: "IteratorConcretions"),
            ]
        ),
        .target(
            name: "IteratorMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.iterator.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "IteratorAbstractions")
            ]
        ),
        .target(
            name: "IteratorTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.iterator.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "IteratorMocks"),
                .target(name: "IteratorConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
