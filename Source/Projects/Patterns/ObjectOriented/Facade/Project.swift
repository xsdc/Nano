import ProjectDescription

let project = Project(
    name: "Facade",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "FacadeAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.facade.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"],
            dependencies: [
                .target(name: "FacadeConcretions")
            ]
        ),
        .target(
            name: "FacadeConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.facade.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"]
        ),
        .target(
            name: "FacadeKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.facade.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "FacadeMocks"),
                .target(name: "FacadeConcretions"),
            ]
        ),
        .target(
            name: "FacadeKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.facade.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "FacadeMocks"),
                .target(name: "FacadeConcretions"),
            ]
        ),
        .target(
            name: "FacadeMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.facade.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "FacadeConcretions")
            ]
        ),
        .target(
            name: "FacadeTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.facade.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "FacadeMocks"),
                .target(name: "FacadeAbstractions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
