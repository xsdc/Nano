import ProjectDescription

let project = Project(
    name: "Singleton",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "SingletonAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.singleton.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "SingletonConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.singleton.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "SingletonAbstractions")
            ]
        ),
        .target(
            name: "SingletonKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.singleton.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "SingletonMocks"),
                .target(name: "SingletonConcretions"),
            ]
        ),
        .target(
            name: "SingletonKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.singleton.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "SingletonMocks"),
                .target(name: "SingletonConcretions"),
            ]
        ),
        .target(
            name: "SingletonMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.singleton.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "SingletonAbstractions")
            ]
        ),
        .target(
            name: "SingletonTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.singleton.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "SingletonMocks"),
                .target(name: "SingletonConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
