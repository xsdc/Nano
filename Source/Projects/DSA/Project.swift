import ProjectDescription

let project = Project(
    name: "DSA",
    organizationName: "Shaun Culver",
    targets: [
        .target(
            name: "Core",
            destinations: .iOS,
            product: .framework,
            bundleId: "dsa.core",
            sources: ["Core/**"]
        ),
        .target(
            name: "Solutions",
            destinations: .iOS,
            product: .framework,
            bundleId: "dsa.solutions",
            sources: ["Solutions/**"],
            dependencies: [
                .target(name: "Core")
            ]
        ),
        .target(
            name: "Tests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dsa.tests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Core"),
                .target(name: "Solutions"),
            ]
        ),
    ],
    additionalFiles: ["Bots/**", "Problems/**"]
)
