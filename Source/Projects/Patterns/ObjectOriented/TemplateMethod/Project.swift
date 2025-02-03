import ProjectDescription

let project = Project(
    name: "TemplateMethod",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "TemplateMethodAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.template-method.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "TemplateMethodConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.template-method.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "TemplateMethodAbstractions")
            ]
        ),
        .target(
            name: "TemplateMethodKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.template-method.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "TemplateMethodMocks"),
                .target(name: "TemplateMethodConcretions"),
            ]
        ),
        .target(
            name: "TemplateMethodKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.template-method.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "TemplateMethodMocks"),
                .target(name: "TemplateMethodConcretions"),
            ]
        ),
        .target(
            name: "TemplateMethodMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.template-method.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "TemplateMethodConcretions")
            ]
        ),
        .target(
            name: "TemplateMethodTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.template-method.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "TemplateMethodMocks"),
                .target(name: "TemplateMethodConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
