import ProjectDescription

let project = Project(
    name: "Observer",
    organizationName: "Apple Inc.",
    targets: [
        //.target(
        //    name: "ObserverApp",
        //    destinations: [.iPhone],
        //    product: .app,
        //    bundleId: "com.apple.store.observer",
        //    deploymentTargets: .macOS("15.1.1"),
        //    infoPlist: .extendingDefault(with: [
        //        "UILaunchStoryboardName": "LaunchScreen"
        //    ]),
        //    sources: ["Targets/App/Sources/**"],
        //    resources: [
        //        "Targets/App/Resources/**"
        //    ],
        //    dependencies: [
        //        .target(name: "ObserverExamples")
        //    ]
        //),
        .target(
            name: "ObserverAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.observer.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Frameworks/Abstractions/**"]
        ),
        .target(
            name: "ObserverMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.observer.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Frameworks/Mocks/**"],
            dependencies: [
                .target(name: "ObserverAbstractions")
            ]
        ),
        .target(
            name: "ObserverConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.observer.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Frameworks/Concretions/**"],
            dependencies: [
                .external(name: "ComposableArchitecture"),
                .target(name: "ObserverAbstractions"),
            ]
        ),
        //.target(
        //    name: "ObserverExamples",
        //    destinations: .macOS,
        //    product: .framework,
        //    bundleId: "com.apple.store.observer.examples",
        //    deploymentTargets: .macOS("15.1.1"),
        //    sources: ["Targets/Frameworks/Examples/**"],
        //    dependencies: [
        //        .external(name: "ComposableArchitecture"),
        //        .target(name: "ObserverConcretions"),
        //        .target(name: "ObserverMocks"),
        //    ]
        //),
        .target(
            name: "ObserverKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.observer.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Frameworks/Katas/Final/**"],
            dependencies: [
                .target(name: "ObserverMocks"),
                .target(name: "ObserverConcretions"),
            ]
        ),
        .target(
            name: "ObserverKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.observer.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Frameworks/Katas/Initial/**"],
            dependencies: [
                .target(name: "ObserverMocks"),
                .target(name: "ObserverConcretions"),
            ]
        ),
        .target(
            name: "ObserverTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.observer.tests",
            deploymentTargets: .macOS("15.1.1"),
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
