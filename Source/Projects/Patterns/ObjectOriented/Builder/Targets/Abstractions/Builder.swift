import Foundation

public protocol AppleWatchBuilder {
    associatedtype SizeType
    associatedtype MaterialType
    associatedtype BandType

    func setSize(_ size: SizeType) -> Self
    func setMaterial(_ material: MaterialType) -> Self
    func setBand(_ band: BandType) -> Self
    func build() -> AppleWatch
}
