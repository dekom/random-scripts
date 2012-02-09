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

### Characteristics of object instances ###
- object identifier (object ID)
- instance variables
- instance methods

## Strings ##
*String literals* are created either from single-quote `'` or double-quotes `"`.

In the single-quote construction, Ruby processes very little of the content, creating a true *literal* string.
While the double-quote construction involves more Ruby processing.

For double-quote strings, Ruby will:

1. Look for substitutions `\n, \t` and replace with binary value
2. Look for expression interpolation. `#{expression}`

## Arrays and Hashes ##
Both are indexed, non-homogeneous collections, using *key* to store *value*.

### Arrays ###
Arrays are more efficient.

- Constructor: `a[0] = "an"`
- Keys are integers
- Referenced using `array[0]`
- `%w{ an array of words } => ["an", "array", "of", "words"]`

### Hashes ###
Hashes are more flexible

- Constructor: `{ key => value }`
- `Hash.new(0)` => sets the return value of a non-existent key to 0
- Keys are any object
- Keys *must* be unique
- Referenced using `hash[key]`

## Symbols ##
They are constant names that do not need to be predeclared and that are guaranteed to be unique,
regardless of location of appearance.

A symbol begins with a colon `:` and followed by a name. `:north`

*Most notably used as keys in hashes*

**Special syntax for creating a hash with symbols as keys**

` 
inst_section = {
	cello:		'string',
	clarinet:	'woodwind',
	drum:			'percussion',
}`

`	inst_section[:cello] #=> string `

## Control Structures ##

