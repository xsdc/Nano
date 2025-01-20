// Generated using Sourcery 2.2.5 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
----------------------------------------------------------------------
AppFeature
├─ Tab
│	├─ case: bag
│	├─ case: catalog
├─ State
│	├─ var catalogTab: CatalogFeature.State 
│	├─ var bagTab: BagFeature.State 
│	├─ var selectedTab: Tab 
├─ Action
│	├─ case: catalogTab
│	│	├─ associatedValue: CatalogFeature.Action
│	├─ case: bagTab
│	│	├─ associatedValue: BagFeature.Action
│	├─ case: selectedTabChanged
│	│	├─ associatedValue: Tab
----------------------------------------------------------------------
BagFeature
├─ State
│	├─ var products: IdentifiedArrayOf<Product> 
├─ Action
│	├─ case: addedProduct
│	│	├─ associatedValue: Product
│	├─ case: removedProducts
│	│	├─ associatedValue: IndexSet
│	├─ case: productTapped
│	│	├─ associatedValue: Product.ID
│	├─ case: goToCatalogTapped
│	├─ case: delegate
│	│	├─ associatedValue: Delegate
----------------------------------------------------------------------
CatalogFeature
├─ State
│	├─ var products: IdentifiedArrayOf<Product> 
├─ Action
│	├─ case: addedProduct
│	│	├─ associatedValue: Product
│	├─ case: removedProducts
│	│	├─ associatedValue: IndexSet
│	├─ case: productTapped
│	│	├─ associatedValue: Product.ID
│	├─ case: goToCatalogTapped
│	├─ case: delegate
│	│	├─ associatedValue: Delegate
----------------------------------------------------------------------
