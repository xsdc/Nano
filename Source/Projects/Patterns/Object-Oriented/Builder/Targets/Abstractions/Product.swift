import Foundation

public struct AppleWatch {
    public var collection: String
    public var size: String
    public var material: String
    public var band: String
    
    public init(collection: String, size: String, material: String, band: String) {
        self.collection = collection
        self.size = size
        self.material = material
        self.band = band
    }
}
