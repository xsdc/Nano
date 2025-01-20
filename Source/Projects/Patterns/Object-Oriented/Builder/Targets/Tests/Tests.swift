import Testing
import BuilderMocks

@testable import BuilderConcretions

struct Tests {
    @Test func testSeries10BuilderDefaults() {
        let builder = Mocks.series10Builder()
        
        let appleWatch = builder.build()

        #expect(appleWatch.collection == "Series 10")
        #expect(appleWatch.size == "42mm")
        #expect(appleWatch.material == "Aluminum")
        #expect(appleWatch.band == "Sport Band")
    }
    
    @Test func testSeries10BuilderConfiguration() {
        var builder = Mocks.series10Builder()
        builder = builder.setSize(.fortySix).setMaterial(.titanium).setBand(.milaneseLoop)
        
        let appleWatch = builder.build()
        
        #expect(appleWatch.collection == "Series 10")
        #expect(appleWatch.size == "46mm")
        #expect(appleWatch.material == "Titanium")
        #expect(appleWatch.band == "Milanese Loop")
    }

    @Test func testHèrmesSeries10BuilderDefaults() {
        let builder = Mocks.hèrmesSeries10Builder()
        
        let appleWatch = builder.build()
        
        #expect(appleWatch.collection == "Hèrmes Series 10")
        #expect(appleWatch.size == "42mm")
        #expect(appleWatch.material == "Titanium")
        #expect(appleWatch.band == "Torsade Single Tour")
    }
    
    @Test func testHèrmesSeries10BuilderConfiguration() {
        var builder = Mocks.hèrmesSeries10Builder()
        builder = builder.setSize(.fortySix).setMaterial(.titanium).setBand(.grand)
        
        let appleWatch = builder.build()
        
        #expect(appleWatch.collection == "Hèrmes Series 10")
        #expect(appleWatch.size == "46mm")
        #expect(appleWatch.material == "Titanium")
        #expect(appleWatch.band == "Grand H")
    }
}
