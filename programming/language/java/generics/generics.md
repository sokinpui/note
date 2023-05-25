# Syntax of generics
```java
class name<T1, T2, ..., Tn> { /* ... */ }
```

# create new instance of generics
```java
Box<Integer> integerBox = new Box<>();
```

# type parameters
```java
public interface Pair<K, V> {
    public K getKey();
    public V getValue();
}

public class OrderedPair<K, V> implements Pair<K, V> {

    private K key;
    private V value;

    public OrderedPair(K key, V value) {
    this.key = key;
    this.value = value;
    }

    public K getKey()    { return key; }
    public V getValue() { return value; }
}
```

The K and V s substituted by String and Integer respectively.
```java
Pair<String, Integer> p1 = new OrderedPair<String, Integer>("Even", 8);
Pair<String, String>  p2 = new OrderedPair<String, String>("hello", "world");
```


