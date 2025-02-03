import ProjectDescription

let project = Project(
    name: "Adapter",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "AdapterAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.adapter.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "AdapterConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.adapter.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "AdapterAbstractions")
            ]
        ),
        .target(
            name: "AdapterKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.adapter.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "AdapterMocks"),
                .target(name: "AdapterConcretions"),
            ]
        ),
        .target(
            name: "AdapterKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.adapter.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "AdapterMocks"),
                .target(name: "AdapterConcretions"),
            ]
        ),
        .target(
            name: "AdapterMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.adapter.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "AdapterConcretions")
            ]
        ),
        .target(
            name: "AdapterTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.adapter.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "AdapterMocks"),
                .target(name: "AdapterConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
