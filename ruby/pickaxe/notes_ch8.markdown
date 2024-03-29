# Sharing Functionality: Inheritance, Modules, and Mixins #
The interesting chapter!

## Inheritance and Messages ##
*Inheritance* allows you to create a class that is a refinement or
specialization of another class.  The original is the *superclass* of
the created class, and the created class is the *subclass* of the
original. (Or commonly referred as parent and child classes).

The *child class* inherits all of the *parent's* public and protected
instances methods.

**Syntax**

```ruby
class Child < Parent
    ...
end
```

*Every* object in Ruby is the child (multiplied by many generations) of
the `BasicObject`, which is a "blank canvas" object created in ruby 1.9.
For most functional cases, the root of the 'family tree' is `Object`.

**To call superclass methods**

```ruby
class Class < Parent
    def method_name()
        super()
    end
    ...
end
```

`super()` calls the parent class's method that matches the name of the
child's method.

## Modules ##
*Modules* are a way of grouping together methods, classes, and
constants.

Modules:
* provide a namespace and prevent name clashes.
* support he mixin facility

A *mixin* is 'like a partial class definition' and a combination of
flexibility of multi-inheritance and simplicity of single-inheritance.

### Namespaces ###
Modules are used to handle method name conflicts.

A module is defined by

```ruby
module AModule
    ...
end
```

Then conflicting methods are called with `AModule.method_name`.

*Note:* Modules are **not** classes.  Therefore, they cannot have
*instance* methods (methods that are defined by `def self.method_name`.

### Mixins ###
"At a stroke, they (modules) pretty much eliminate the need for inheritance."

*Mixins* are created when modules are included in classes.

```ruby
module ModuleName
    def module_method
         ...
    end
end

class ClassName
    include ModuleName
    def class_method
        ...
    end
end

an_class_instance = ClassName.new
an_class_instance.module_method
```

By including a module in a class, that class has access to all of the
module's instance methods (even though modules cannot have instances
because they're not classes).

*Note*: in order to use `include ModuleName`, one may need to first
`load` or `require` the file that contains the module.

## Inheritance, Mixins, and Design ##
When to use what?

* **Inheritance**: when it is a *is-a* relationship.
* **Mixins**: when it is a *has a* or *use a* relationship.
