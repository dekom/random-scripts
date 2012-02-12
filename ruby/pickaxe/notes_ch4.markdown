# Containers, Blocks, and Iterators #
The two main container classes in Ruby are *Arrays* and *Hashes*.
Combine them with *blocks*, which are chunk of codes that can be passed
around, they can easily and quickly create *iterators*.

## Arrays ##
Arrays are created as literal arrays - `["a", "b", "c" ...]` or using
standard `Array.new` constructor.

Array elements are referenced using indices within `[]`.  
List of array access attributes:

* Negative indices counts backwards.
* Pair of numbers `[start, count]` returns an *array* starting at index
	`start` and contains up to `count` number of elements.
* Ranges `[start...end]` returns an *array* starting from index `start`
	and ends at index `end`.  Ranges can be negative.

Array element assignment is `a[1] = value` as well as working with pairs
and ranges selections.


## Hashes ##
Hashes are similar to arrays except that the *keys* can be any object,
as opposed to strictly Integers in Arrays.

Hashes are created using the standard constructor or hash literal -
`{'a' => 'z', 'b' => 'y' , ...}`.

Ruby 1.9 introduced new syntax for defining a `key => value`
association with symbols as *key*: `key: value`.

Likewise, Hash in ruby 1.9 remembers the insert order, which isn't a
guarantee in other language libraries.

### Word Frequency: Hashes and Arrays ###
When passing a parameter into `Hash.new(0)`, the parameter becomes the
object's default value for unavailable keys. For example:

	hash = Hash.new(0)
	puts hash['word'] #=> 0
	hash['word'] += 1
	puts has['word'] #=> 1

Since hash remembers the order of insertion, in order to sort element by
another parameter, we must call the Hash instance's `sort_by` element.

## Blocks and Iterators ##
*Blocks* are chunks of code that can be passed around, while iterators
invoke block of code.

### Blocks ###
A *block* is simply a chunk of code enclosed between either braces or
the keywords `do` and `end`.

Like a method, blocks can take parameters by having  `|varaible0,
variable1|` in the beginning of the block (I call them pipes).

Key notes on blocks is variable scoping.  As long as variable within the
block shares the same name as a variable outside of it, it *will* change
the said variable.  In ruby 1.9, however, all block parameters are
local, and by adding a semicolon prior to a local variable within the
'pipes', e.g. `[1, 2, 3, 4].each do |value; square|`, then the variable
becomes local to the block, in this case `square` is block local.

### Implementing Iterators ###
'A Ruby iterator is simply a method that can invoke a block of code.'

Block codes in iterators are called using the `yield` statement.

One can imagine `yield` as an interrupt in the control flow of the code,
where the control is passed to the block of code and then back.

Useful, default iterators (look into Ruby API for details):
`.each`, `.each_with_index`, `.collect`, and the mind-numbing `.inject`,
which is (apparently) similar to the foldl function of SMLNJ.
