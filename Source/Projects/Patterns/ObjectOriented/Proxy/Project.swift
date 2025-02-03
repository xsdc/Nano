import ProjectDescription

let project = Project(
    name: "Proxy",
    organizationName: "Apple Inc.",
    targets: [
        .target(
            name: "ProxyAbstractions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.proxy.abstractions",
            sources: ["Targets/Abstractions/**"]
        ),
        .target(
            name: "ProxyConcretions",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.proxy.concretions",
            sources: ["Targets/Concretions/**"],
            dependencies: [
                .target(name: "ProxyAbstractions")
            ]
        ),
        .target(
            name: "ProxyKatasFinal",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.proxy.katas-final",
            sources: ["Targets/Katas/Final/**"],
            dependencies: [
                .target(name: "ProxyMocks"),
                .target(name: "ProxyConcretions"),
            ]
        ),
        .target(
            name: "ProxyKatasInitial",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.proxy.katas-initial",
            sources: ["Targets/Katas/Initial/**"],
            dependencies: [
                .target(name: "ProxyMocks"),
                .target(name: "ProxyConcretions"),
            ]
        ),
        .target(
            name: "ProxyMocks",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.apple.store.proxy.mocks",
            sources: ["Targets/Mocks/**"],
            dependencies: [
                .target(name: "ProxyConcretions")
            ]
        ),
        .target(
            name: "ProxyTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.apple.store.proxy.tests",
            sources: ["Targets/Tests/**"],
            dependencies: [
                .target(name: "ProxyMocks"),
                .target(name: "ProxyConcretions"),
            ]
        ),
    ],
    additionalFiles: ["Audit/**", "Documentation/**"]
)
