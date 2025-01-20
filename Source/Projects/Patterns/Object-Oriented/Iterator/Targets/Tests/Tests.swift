import Foundation
import Testing
import IteratorMocks

@testable import IteratorConcretions

struct Tests {
    @Test func testArrayCatalogIterator() {
        struct Category {
            let name: String
        }

        let categories = ["iPhone", "iPad", "Mac", "Watch"]
        let arrayCatalog = ArrayCatalog(categories: categories)
        let arrayIterator = arrayCatalog.makeIterator()

        #expect(arrayCatalog.categories.count == 4)
        
        guard let category = arrayIterator.next() else { Issue.record("Category expected"); return  }
        
        #expect(category.name == "iPhone")
        
        guard let category = arrayIterator.next() else { Issue.record("Category expected"); return  }
        
        #expect(category.name == "iPad")
        
        guard let category = arrayIterator.next() else { Issue.record("Category expected"); return  }
        
        #expect(category.name == "Mac")
    }

    @Test func testDictionaryCatalogIterator() {
        let categoryDictionary = [
            "1": "iPhone",
            "2": "iPad",
            "3": "Mac",
            "4": "Watch"
        ]
        let dictionaryCatalog = DictionaryCatalog(categories: categoryDictionary)
        let dictionaryIterator = dictionaryCatalog.makeIterator()
        
        #expect(dictionaryCatalog.categories.count == 4)
        
        guard let category = dictionaryIterator.next() else { Issue.record("Category expected"); return  }
        
        #expect(category.name == "iPhone")
        
        guard let category = dictionaryIterator.next() else { Issue.record("Category expected"); return  }
        
        #expect(category.name == "iPad")
        
        guard let category = dictionaryIterator.next() else { Issue.record("Category expected"); return  }
        
        #expect(category.name == "Mac")
        
        guard let category = dictionaryIterator.next() else { Issue.record("Category expected"); return  }
        
        #expect(category.name == "Watch")
    }
}
