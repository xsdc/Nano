# Visitor Pattern Summary

-   The Visitor pattern provides a way of adding functionality to existing objects without modifying them.

-   A visitor is created separately from the existing objects it operates on.

-   The visitor accesses an existing object, and performs the additional functionality.

## Element:

Defines the protocol that accepts different types of discount visitors.

```swift

```

## Concrete elements:

Concrete product types that accept a visitor according to the protocol defined above.

```swift

```

## Visitor:

Defines the discount calculation methods for each product type.

```swift

```

## Concrete visitors:

Implements the discount calculations for each product type.

Education discount is 25%.

Employee discount is 50%.

```swift

```
