import ProjectDescription

let project = Project(
    name: "Proxy",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "ProxyAbstractions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.proxy.abstractions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "ProxyConcretions",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.proxy.concretions",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "ProxyAbstractions")
            ]
        ),
        .target(
            name: "ProxyKatasFinal",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.proxy.katas-final",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "ProxyMocks"),
                .target(name: "ProxyConcretions"),
            ]
        ),
        .target(
            name: "ProxyKatasInitial",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.proxy.katas-initial",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "ProxyMocks"),
                .target(name: "ProxyConcretions"),
            ]
        ),
        .target(
            name: "ProxyMocks",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.apple.store.proxy.mocks",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "ProxyConcretions")
            ]
        ),
        .target(
            name: "ProxyTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "com.apple.store.proxy.tests",
            deploymentTargets: .macOS("15.1.1"),
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "ProxyMocks"),
                .target(name: "ProxyConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
