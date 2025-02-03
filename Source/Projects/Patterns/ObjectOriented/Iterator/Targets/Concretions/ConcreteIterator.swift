import IteratorAbstractions

class ArrayCatalogIterator: CatalogIterator {
    private let categories: [String]
    private var index = 0

    init(categories: [String]) {
        self.categories = categories
    }

    func next() -> Category? {
        guard index < categories.count else { return nil }
        let category = Category(name: categories[index])
        index += 1
        return category
    }
}

class DictionaryCatalogIterator: CatalogIterator {
    private let categories: [String]
    private var index = 0

    init(categories: [String: String]) {
        self.categories = categories
            .sorted { $0.key < $1.key }
            .map { $0.value }
    }

    func next() -> Category? {
        guard index < categories.count else { return nil }
        let category = Category(name: categories[index])
        index += 1
        return category
    }
}
