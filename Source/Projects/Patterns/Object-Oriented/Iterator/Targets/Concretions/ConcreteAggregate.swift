import IteratorAbstractions

struct ArrayCatalog: CatalogCollection {
    let categories: [String]

    init(categories: [String]) {
        self.categories = categories
    }

    func makeIterator() -> CatalogIterator {
        return ArrayCatalogIterator(categories: categories)
    }
}

class DictionaryCatalog: CatalogCollection {
    let categories: [String: String]

    init(categories: [String: String]) {
        self.categories = categories
    }

    func makeIterator() -> CatalogIterator {
        return DictionaryCatalogIterator(categories: categories)
    }
}
