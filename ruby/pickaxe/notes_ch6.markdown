# Classes, Objects, and Variables #

*Objects* are created from classes to be program representation of
real-life items to be manipulated.

**Classes are defined:**

```ruby
class ClassName
end
```

**Objects of each class are created:**

```ruby
a_class = ClassName.new
another_class = ClassName.new
```

Each time that an instance of an object is created, the class's
*initialize* method is called.  

```ruby
class ClassName
    def initialize(parm0, parm1)
         @parm0 = parm0
         @parm1 = parm1
    end
end
```

This method is called mostly to setup default values of each object instance.

Likewise, every object in Ruby has a standard message method, `to_s`,
that can be overwritten to output human-readable string representation
of the object.

## Objects and Attributes ##
*Attributes* are the externally visible facets of an object.  These are
usually manipulated by 'getter' (or accessor) methods and 'setter'
methods.

*Accessor methods* can be created with `attr_reader :accessor0, :accessor1`,
which functions the same as:

```ruby
def accessor0
    ...
end

def accessor1
    ...
end
```

*Setter methods* can be created with `attr_writer :setter0`, which
functions the same as:

```ruby
def setter0=(value)
    ...
end
```

Partial to Ruby, any method names that ends in `=` can be accessed as
`className.setter0 = value`.  This abstracts out the difference between
accessing variables and accessing methods.

However, since one would want to have both read and write access for a
given attribute, Ruby also offers this method creation: `attr_accessor
:name`, which creates both getter and setter methods.

## Classes Working with Other Classes ##
To import additional classes, call (for example)

```ruby
require 'csv'
require_relative 'className'
class CurrentClass
    ...
end
```

`require_relative` uses the current class's directory as file path to
look for the class name.

## Access Control ##
Controls for accessing your classes are done (primarily) through setting
the accessibility of your methods.  Methods can be either `public` -
callable by everyone and default for *all methods* except `initialize`,
`protected` - callable by the **class** itself and **sub-classes** (not class instances!),
`private` - callable only by class instance `self`.

Methods can be defined as `private` (for example) by one of two ways:

```ruby
private
    def method0
        ...
    end
    
    def method1
        ...
    end
```

or

```ruby
def method0
    ...
end
def method1
    ...
end
    ...
private :method0, :method1
```

Either declaration makes `method0` and `method1` private methods.


