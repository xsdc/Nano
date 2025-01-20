import ProjectDescription

let project = Project(
    name: "Facade",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "FacadeAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.facade.abstractions",
            sources: ["Targets/Abstractions/**"],
            dependencies: [
                .target(name: "FacadeConcretions")
            ]
        ),
        .target(
            name: "FacadeConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.facade.concretions",
            sources: ["Targets/Concretions/**"]
        ),
        .target(
            name: "FacadeKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.facade.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "FacadeMocks"),
                .target(name: "FacadeConcretions"),
            ]
        ),
        .target(
            name: "FacadeKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.facade.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "FacadeMocks"),
                .target(name: "FacadeConcretions"),
            ]
        ),
        .target(
            name: "FacadeMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.facade.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "FacadeConcretions")
            ]
        ),
        .target(
            name: "FacadeTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.facade.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "FacadeMocks"),
                .target(name: "FacadeAbstractions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
