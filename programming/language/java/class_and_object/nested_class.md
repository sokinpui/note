To declare a new inner Class which is nested in some class.
```java
OuterClass outerObject = new OuterClass();
OuterClass.InnerClass innerObject = outerObject.new InnerClass();
```
use `outerObject.new` to define new instance of inner object.

# local class access member variables
Local class can only access variable that have not changed its value after 
initialized, which is basically with `final` or efficiently final.
