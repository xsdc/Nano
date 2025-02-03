# Visitor Summary

- The Visitor pattern provides a way of adding functionality to existing objects without modifying them.

- A visitor is created separately from the existing objects it operates on.

- The visitor accesses an existing object, and performs the additional functionality.

## Element

- Defines the protocol that accepts different types of discount visitors.

- Products are will be accepting visitors, so we define each roles involved in the Element.

```swift
protocol VisitorAccepting {}
protocol Product {}
```

## Concrete Elements

Concrete product types that accept a visitor according to the protocol defined above.

```swift
struct MacBookProProduct: Product, VisitorAccepting {}
struct VisionProProduct: Product, VisitorAccepting {}
```

## Visitor

- Defines the visitor protocol that will be implemented by concrete visitors.

- We are able to define the return type via the use of an associated type.

```swift
protocol Visitor {}
```

## Concrete Visitors

- Concrete visitors that implement the visitor protocol.

- We have two discount types, education and employee discounts, and a description visitor.

```swift
class EducationDiscountVisitor: Visitor {}
class EmployeeDiscountVisitor: Visitor {}
class DescriptionVisitor: Visitor {}
```
