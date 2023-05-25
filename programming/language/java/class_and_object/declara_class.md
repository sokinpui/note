# What is constructors
constructors for initializing new objects.
A class contains constructors that are invoked to create objects from the class 
blueprint.
Constructor use the name of the class and have no return type.

## overloading of constructors
same as [method](./method.md#overloading%20method)


# Example of declarate a class:
```java
class MyClass extends MySuperClass implements YourInterface {
    // field, constructor, and
    // method declarations
}
```

The beginning can add `public` or `private` to change the access level of the 
declarated object.

# Using superclass constructor `supar`
```java
public class MountainBike extends Bicycle {
        
    // Constructor
    public MountainBike(int startHeight, int startCadence,
                        int startSpeed, int startGear) {
        super(startCadence, startSpeed, startGear);
        seatHeight = startHeight;
    }
}
```
Using `supar` will inherint the constructor from parent class.

# access modifier `public`
The public keyword identifies these fields as public members, accessible by any 
object that can access the class.

If no access modifier is declarated, then it is by defualt package-private.  
Accesible by class within the same class, private to the package outside.

# static
same as [keywords](keywords.md)

## static block
This code inside the static block is executed only once.
It's a static initializer. It's executed when the class is loaded (or 
initialized, to be precise, but you usually don't notice the difference).
