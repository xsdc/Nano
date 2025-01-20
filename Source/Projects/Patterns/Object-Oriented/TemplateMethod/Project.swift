import ProjectDescription

let project = Project(
    name: "TemplateMethod",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "TemplateMethodAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.template-method.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "TemplateMethodConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.template-method.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "TemplateMethodAbstractions")
            ]
        ),
        .target(
            name: "TemplateMethodKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.template-method.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "TemplateMethodMocks"),
                .target(name: "TemplateMethodConcretions"),
            ]
        ),
        .target(
            name: "TemplateMethodKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.template-method.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "TemplateMethodMocks"),
                .target(name: "TemplateMethodConcretions"),
            ]
        ),
        .target(
            name: "TemplateMethodMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.template-method.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "TemplateMethodConcretions")
            ]
        ),
        .target(
            name: "TemplateMethodTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.template-method.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "TemplateMethodMocks"),
                .target(name: "TemplateMethodConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
