# Builder Summary

- The Builder pattern is used to construct objects piece by piece.

- Each part of the object is configured via a method on a builder object.

- We are able to provide different representations of the object using the same construction process.

## Product

The object that is being constructed.

```swift
struct AppleWatch {}
```

## Builder

- The protocol that declares the options for constructing the product.

- Associated types are used here so that each concrete builder can define its own enum types for size, material, and band.

- Compare the `Series10Builder` and `HèrmesSeries10Builder` enum types to see this in action.

- The protocol makes use of a fluent interface, allowing for the chaining of builder methods.

```swift
protocol AppleWatchBuilder {}
```

## Concrete Builders

- Conforms to the builder protocol and provides an implementation for building the product.

- Two concrete builders are defined here: `Series10Builder` and `HèrmesSeries10Builder`.

- Each one is tailored to a specific collection of Apple Watch.

- Type aliases are used here to pair the associated types for each concrete builder's enum type implementation.

```swift
class Series10Builder: AppleWatchBuilder {}
class HèrmesSeries10Builder: AppleWatchBuilder {}
```
