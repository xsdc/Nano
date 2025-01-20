# Bridge Summary

- The Bridge pattern allows for two separate but related objects to work together while keeping them decoupled.

- It is particularly useful when there are multiple variations of both the abstraction and the implementation that need to be combined in different ways.

## Implementor

- Sets up the interface for the component renderers.

- These can be grouped by device type, such as iPhone, iPad, etc.

```swift
protocol ProductComponentRenderer {}
```

## Concrete Implementors

- For each device, a set of components can be grouped as an implementor of `ProductComponentRenderer`.

- Each component can be rendered in a different way based on the device used.

- The fonts, colors, and layout can be adjusted as needed.

```swift
struct iPhoneProductComponentRenderer: ProductComponentRenderer {}
struct iPadProductComponentRenderer: ProductComponentRenderer {}
```

## Abstraction

- The interface for the product view.

- Based on the component renderer, we are able to generate various visual representations of the product.

```swift
protocol RenderableProductView {}
```

## Refined Abstraction

- The implementation for each product view.

- Each product view can be rendered in different ways based on the device used via the component renderer.

- Variations can be created as needed based on what the component renderer makes available.

```swift
class AppleWatchSummaryView: RenderableProductView {}
class AppleWatchTechSpecsView: RenderableProductView {}
```
