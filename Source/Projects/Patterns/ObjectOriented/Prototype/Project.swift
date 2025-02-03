import ProjectDescription

let project = Project(
    name: "Prototype",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "PrototypeAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.prototype.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "PrototypeConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.prototype.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "PrototypeAbstractions")
            ]
        ),
        .target(
            name: "PrototypeKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.prototype.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "PrototypeMocks"),
                .target(name: "PrototypeConcretions"),
            ]
        ),
        .target(
            name: "PrototypeKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.prototype.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "PrototypeMocks"),
                .target(name: "PrototypeConcretions"),
            ]
        ),
        .target(
            name: "PrototypeMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.prototype.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "PrototypeConcretions")
            ]
        ),
        .target(
            name: "PrototypeTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.prototype.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "PrototypeMocks"),
                .target(name: "PrototypeConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
