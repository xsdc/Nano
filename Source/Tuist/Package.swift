// swift-tools-version: 5.9

@preconcurrency import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings = PackageSettings(
        productTypes: [
            "ComposableArchitecture": .framework
        ]
    )
#endif

let package = Package(
    name: "Packages",
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture.git", from: "1.17.0")
    ]
)
