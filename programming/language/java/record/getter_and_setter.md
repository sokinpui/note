# What is getter and setter?
Getters and setters are used to protect your data, particularly when creating 
classes. For each instance variable, a getter method returns its value while a 
setter method sets or updates its value. Given this, getters and setters are 
also known as accessors and mutators

# Why we need getter and setter?
The data accessed are declarated with private, the data need to access with 
setter and getter method, so that the data is protected, validation can be 
implemented when updating the value. Also the interface that update the value is 
consisent.

from [this 
answer](https://stackoverflow.com/questions/1568091/why-use-getters-and-setters-accessors)

Encapsulation of behavior associated with getting or setting the property - this 
allows additional functionality (like validation) to be added more easily later.

Hiding the internal representation of the property while exposing a property 
using an alternative representation.

Insulating your public interface from change - allowing the public interface to 
remain constant while the implementation changes without affecting existing 
consumers.

Controlling the lifetime and memory management (disposal) semantics of the 
property - particularly important in non-managed memory environments (like C++ 
or Objective-C).

Providing a debugging interception point for when a property changes at runtime 
- debugging when and where a property changed to a particular value can be quite 
difficult without this in some languages.

Improved interoperability with libraries that are designed to operate against 
property getter/setters - Mocking, Serialization, and WPF come to mind.

Allowing inheritors to change the semantics of how the property behaves and is 
exposed by overriding the getter/setter methods.

Allowing the getter/setter to be passed around as lambda expressions rather than 
values.

Getters and setters can allow different access levels - for example the get may 
be public, but the set could be protected.

