import ProjectDescription

let project = Project(
    name: "DSA",
    organizationName: "Shaun Culver",
    targets: [
        .target(
            name: "DSACore",
            destinations: .macOS,
            product: .framework,
            bundleId: "dsa.core",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Core/**"]
        ),
        .target(
            name: "DSASolutions",
            destinations: .macOS,
            product: .framework,
            bundleId: "dsa.solutions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Solutions/**"],
            dependencies: [
                .target(name: "DSACore")
            ]
        ),
        .target(
            name: "DSATechniques",
            destinations: .macOS,
            product: .framework,
            bundleId: "dsa.techniques",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Techniques/**"],
            dependencies: [
                .target(name: "DSACore")
            ]
        ),
        .target(
            name: "DSATests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "dsa.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "DSACore"),
                .target(name: "DSASolutions"),
            ]
        ),
    ]
)
