import CompositeAbstractions

class Category: BreadcrumbProviding {
    let name: String
    private var children: [BreadcrumbProviding] = []
    private var parent: Category?

    init(name: String, parent: Category?) {
        self.name = name
        self.parent = parent
    }

    var breadcrumbs: [String] {
        if let parent = parent {
            return parent.breadcrumbs + [name]
        } else {
            return [name]
        }
    }

    func addChild(_ child: BreadcrumbProviding) {
        children.append(child)
    }
}
