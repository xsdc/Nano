import ProjectDescription

let project = Project(
    name: "Prototype",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "PrototypeAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.prototype.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "PrototypeConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.prototype.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "PrototypeAbstractions")
            ]
        ),
        .target(
            name: "PrototypeKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.prototype.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "PrototypeMocks"),
                .target(name: "PrototypeConcretions"),
            ]
        ),
        .target(
            name: "PrototypeKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.prototype.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "PrototypeMocks"),
                .target(name: "PrototypeConcretions"),
            ]
        ),
        .target(
            name: "PrototypeMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.prototype.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "PrototypeConcretions")
            ]
        ),
        .target(
            name: "PrototypeTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.prototype.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "PrototypeMocks"),
                .target(name: "PrototypeConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
