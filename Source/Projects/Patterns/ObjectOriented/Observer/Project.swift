import ProjectDescription

let project = Project(
    name: "Observer",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "ObserverApp",
            destinations: [.iPhone],
            product: .app,
            bundleId: "com.apple.store.observer",
            deploymentTargets: .iOS("18.2"),
            infoPlist: .extendingDefault(with: [
                "UILaunchStoryboardName": "LaunchScreen"
            ]),
            sources: ["Targets/App/Sources/**"],
            resources: [
                "Targets/App/Resources/**"
            ],
            dependencies: [
                .target(name: "ObserverExamples")
            ]
        ),
        .target(
            name: "ObserverAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.observer.abstractions",
            sources: ["Targets/Frameworks/Abstractions/**"]
        ),
        .target(
            name: "ObserverMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.observer.mocks",
            sources: ["Targets/Frameworks/Mocks/**"],
            dependencies: [
                .target(name: "ObserverAbstractions")
            ]
        ),
        .target(
            name: "ObserverConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.observer.concretions",
            sources: ["Targets/Frameworks/Concretions/**"],
            dependencies: [
                .external(name: "ComposableArchitecture"),
                .target(name: "ObserverAbstractions"),
            ]
        ),
        .target(
            name: "ObserverExamples",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.observer.examples",
            sources: ["Targets/Frameworks/Examples/**"],
            dependencies: [
                .external(name: "ComposableArchitecture"),
                .target(name: "ObserverConcretions"),
                .target(name: "ObserverMocks"),
            ]
        ),
        .target(
            name: "ObserverKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.observer.katas-final",
            sources: ["Targets/Frameworks/Katas/Final/**"],
            dependencies: [
                .target(name: "ObserverMocks"),
                .target(name: "ObserverConcretions"),
            ]
        ),
        .target(
            name: "ObserverKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.observer.katas-initial",
            sources: ["Targets/Frameworks/Katas/Initial/**"],
            dependencies: [
                .target(name: "ObserverMocks"),
                .target(name: "ObserverConcretions"),
            ]
        ),
        .target(
            name: "ObserverTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.observer.tests",
            sources: ["Targets/Frameworks/Tests/**"],
            dependencies: [
                .external(name: "ComposableArchitecture"),
                .target(name: "ObserverMocks"),
                .target(name: "ObserverConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
