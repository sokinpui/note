# What is abstract class and abstract method
An abstract class is a class that is declared abstract—it may or may not include 
abstract methods. Abstract classes cannot be instantiated, but they can be 
subclassed.

An abstract method is a method that is declared without an implementation 
(without braces, and followed by a semicolon), like this:

example:
```java
public abstract class GraphicObject {
   // declare fields
   // declare nonabstract methods
   abstract void draw();
}
```

Because Class can extened only once times, abstract class are allowed to 
extended once from its subclass, while a class can extend multi-times.

# Difference between abstract class and interface
When abstract class implement an [interface](progLang/java/class_and_object/interface/interface.md), methods in intreace are no needed to 
be fully implemented.
