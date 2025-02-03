import ProjectDescription

let project = Project(
    name: "DSA",
    organizationName: "Shaun Culver",
    targets: [
        .target(
            name: "DSACore",
            destinations: .iOS,
            product: .framework,
            bundleId: "dsa.core",
            sources: ["Core/**"]
        ),
        .target(
            name: "DSASolutions",
            destinations: .iOS,
            product: .framework,
            bundleId: "dsa.solutions",
            sources: ["Solutions/**"],
            dependencies: [
                .target(name: "DSACore")
            ]
        ),
        .target(
            name: "DSATests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dsa.tests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "DSACore"),
                .target(name: "DSASolutions"),
            ]
        ),
    ]
)
