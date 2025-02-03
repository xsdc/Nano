fileprivate protocol AppleWatchConfiguration {
    func process()
    func mapDataForWatchCaseSize()
    func mapDataForWatchCaseMaterial()
    func mapDataForWatchBand()
    func mapDataForWatchBandSize()
    func mapDataForWatchEngraving()
}

open class DefaultAppleWatchConfiguration: AppleWatchConfiguration {
    public init() {}
    
    public final func process() {
        mapDataForWatchCaseSize()
        mapDataForWatchCaseMaterial()
        mapDataForWatchBand()
        mapDataForWatchBandSize()
        mapDataForWatchEngraving()
    }

    open func mapDataForWatchCaseSize() {
        print("Default implementation for case size.")
    }
    
    open func mapDataForWatchCaseMaterial() {
        print("Default implementation for case material.")
    }
    
    open func mapDataForWatchBand() {
        print("Default implementation for watch band.")
    }
    
    open func mapDataForWatchBandSize() {
        print("Default implementation for band size.")
    }
    
    open func mapDataForWatchEngraving() {
        print("Default implementation for engraving.")
    }
}
