# Abstract Factory Summary

- The Abstract Factory pattern enables the creation of families of related objects.

- It can be seen as an extension of the Factory Method pattern.

## Abstract Products

- Declare protocols for components we want to create.

- Collectively, these protocols define a group of products that make up a product family.

- We've kept it simple by only including two components: a carousel and a bento box.

```swift
protocol BentoBoxViewable {}
protocol CarouselViewable {}
```

## Concrete Products

- Concrete implementations of the abstract products.

- Each product must implement the interface of its family.

- For simplicity, we have two families of products: iPhone and iPad.

```swift
class iPhoneBentoBoxView: BentoBoxViewable {}
class iPhoneCarouselView: CarouselViewable {}

class iPadBentoBoxView: BentoBoxViewable {}
class iPadCarouselView: CarouselViewable {}
```

## Abstract Factory

- Declares a protocol for each product family.

- Each protocol declares a set of methods for creating each product.

```swift
protocol AbstractComponentFactory {}
```

## Concrete Factory

Implements the protocol declared by the abstract factory.

```swift
class iPhoneComponentFactory: AbstractComponentFactory {}
class iPadComponentFactory: AbstractComponentFactory {}
```

## Client

- The client uses the abstract factory to create products.

- These can be used without knowing the specific classes of the products.

```swift
class ProductView {}
```
