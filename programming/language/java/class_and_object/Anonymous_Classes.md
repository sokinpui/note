# Declaring Anonymous Classes
```java
interface HelloWorld {
        public void greet();
        public void greetSomeone(String someone);
    }

HelloWorld frenchGreeting = new HelloWorld() {
    String name = "tout le monde";
    public void greet() {
        greetSomeone("tout le monde");
    }
    public void greetSomeone(String someone) {
        name = someone;
        System.out.println("Salut " + name);
    }
};
```

Anonymous Classes is a expression that instance and initialize class without 
providing name, adn it should end with `;`.
The words after access modifier can be interface to implements or class to 
extends.

The access scope to loacl varaiable is same as 
[nested_class](nested_class.md#local%20class%20access%20member%20variables)

