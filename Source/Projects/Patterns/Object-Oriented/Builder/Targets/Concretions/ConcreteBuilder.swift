import Foundation
import BuilderAbstractions

public class HèrmesSeries10Builder: AppleWatchBuilder {
    private var appleWatch = AppleWatch(
        collection: "Hèrmes Series 10",
        size: Size.fortyTwo.rawValue,
        material: Material.titanium.rawValue,
        band: Band.torsade.rawValue
    )
    
    public init() {}

    public enum Size: String {
        case fortyTwo = "42mm"
        case fortySix = "46mm"
    }

    public enum Material: String {
        case titanium = "Titanium"
    }

    public enum Band: String {
        case torsade = "Torsade Single Tour"
        case grand = "Grand H"
    }

    public typealias SizeType = Size
    public typealias MaterialType = Material
    public typealias BandType = Band

    public func setSize(_ size: Size) -> Self {
        appleWatch.size = size.rawValue
        return self
    }

    public func setMaterial(_ material: Material) -> Self {
        appleWatch.material = material.rawValue
        return self
    }

    public func setBand(_ band: Band) -> Self {
        appleWatch.band = band.rawValue
        return self
    }

    public func build() -> AppleWatch {
        return appleWatch
    }
}

public class Series10Builder: AppleWatchBuilder {
    private var appleWatch = AppleWatch(
        collection: "Series 10",
        size: Size.fortyTwo.rawValue,
        material: Material.aluminum.rawValue,
        band: Band.sportBand.rawValue
    )
    
    public init() {}

    public enum Size: String {
        case fortyTwo = "42mm"
        case fortySix = "46mm"
    }

    public enum Material: String {
        case aluminum = "Aluminum"
        case titanium = "Titanium"
    }

    public enum Band: String {
        case sportBand = "Sport Band"
        case milaneseLoop = "Milanese Loop"
    }

    public typealias SizeType = Size
    public typealias MaterialType = Material
    public typealias BandType = Band

    public func setSize(_ size: Size) -> Self {
        appleWatch.size = size.rawValue
        return self
    }

    public func setMaterial(_ material: Material) -> Self {
        appleWatch.material = material.rawValue
        return self
    }

    public func setBand(_ band: Band) -> Self {
        appleWatch.band = band.rawValue
        return self
    }

    public func build() -> AppleWatch {
        return appleWatch
    }
}
