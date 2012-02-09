# Syntax Convention
* * *
The first characters of a name indicate how the name is used.

- Begin with lowercase or underscore: local variables, method parameters, and method names
- Begin with uppercase: class names, module names, and constants
- Append with dollar sign \($\): global variables
- Append with at sign \(@\): instance variables
- Append with double at sign \(@@\): class variables

Allowed characters:

- All:

	> - letters \(exception @\)
	> - digits
	> - underscores

- Instance variables: underscores\_between\_words
- Class names: CamelCase
- Method names: may end with ?, !, =

# Objects
* * *
Ruby is entirely object-oriented. Objects *instances* are created using the constructor `<Object>.new`.

## Characteristics of object instances
- object identifier (object ID)
- instance variables
- instance methods

### Strings ###
*String literals* are created either from single-quote `'` or double-quotes `"`.

In the single-quote construction, Ruby processes very little of the the content, creating a true *literal* string.
While the double-quote construction involves more Ruby processing.

For double-quote strings, Ruby will:

1. Look for substitutions `\n, \t` and replace with binary value
2. Look for expression interpolation. `#{expression}`
