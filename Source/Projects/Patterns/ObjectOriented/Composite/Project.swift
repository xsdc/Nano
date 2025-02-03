import ProjectDescription

let project = Project(
    name: "Composite",
    organizationName: "Apple Inc.",
    targets: [
        //.target(
        //    name: "CompositeApp",
        //    destinations: [.iPhone],
        //    product: .app,
        //    bundleId: "com.apple.store.composite",
        //    deploymentTargets: .iOS("18.2"),
        //    infoPlist: .extendingDefault(with: [
        //        "UILaunchStoryboardName": "LaunchScreen"
        //    ]),
        //    sources: ["Targets/App/Sources/**"],
        //    resources: [
        //        "Targets/App/Resources/**"
        //    ],
        //    dependencies: [
        //        .target(name: "CompositeExamples")
        //    ]
        //),
        .target(
            name: "CompositeAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.composite.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Frameworks/Abstractions/**"]
        ),
        .target(
            name: "CompositeMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.composite.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Frameworks/Mocks/**"],
            dependencies: [
                .target(name: "CompositeConcretions")
            ]
        ),
        .target(
            name: "CompositeConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.composite.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Frameworks/Concretions/**"],
            dependencies: [
                .external(name: "ComposableArchitecture"),
                .target(name: "CompositeAbstractions"),
            ]
        ),
        //.target(
        //    name: "CompositeExamples",
        //    destinations: .macOS,
        //    product: .framework,
        //    bundleId: "com.apple.store.composite.examples",
        //    sources: ["Targets/Frameworks/Examples/**"],
        //    dependencies: [
        //        .external(name: "ComposableArchitecture"),
        //        .target(name: "CompositeConcretions"),
        //        .target(name: "CompositeMocks"),
        //    ]
        //),
        .target(
            name: "CompositeKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.composite.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Frameworks/Katas/Final/**"],
            dependencies: [
                .target(name: "CompositeMocks"),
                .target(name: "CompositeConcretions"),
            ]
        ),
        .target(
            name: "CompositeKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.composite.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Frameworks/Katas/Initial/**"],
            dependencies: [
                .target(name: "CompositeMocks"),
                .target(name: "CompositeConcretions"),
            ]
        ),
        .target(
            name: "CompositeTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.composite.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Frameworks/Tests/**"],
            dependencies: [
                .external(name: "ComposableArchitecture"),
                .target(name: "CompositeMocks"),
                .target(name: "CompositeConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
