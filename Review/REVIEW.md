# Review of the course “R for Data Science”

<font size = 1>**By Haoran Nie @ HUST Life ST**</font>

<p xmlns:cc="http://creativecommons.org/ns#" >This work is licensed under <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-NC-SA 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1"></a></p>


## Multi-omics data analysis and visualisation, #1
> Talk 01
> 	View the original slide through [this link](../talk01.pdf).
> 	View the original R markdown file of the slide through [this link](../talk01.Rmd).

This section has nothing to explain :)



## R language basics, part 1

> Talk 02
> 	View the original slide through [this link](../talk02.pdf).
> 	View the original R markdown file of the slide through [this link](../talk02.Rmd).

###  Fundamental Data Type

The most basic data types include **numbers**, **logical symbols** and **strings** and are the basic building blocks of the other data types.

###  Simple Data Types

This includes vectors and matrices, both of which can contain multiple values of a certain basic data type, such as a **matrix** consisting of multiple numbers, a **vector** consisting of multiple strings, and so on. However, **they can only contain a single data type.**

```R
c(100, 20, 30) ## Interger vector 
c("String", "Array", "It's me".) ## String vector
c(TRUE, FALSE, TRUE, T, F) ## A logic vector
```

As shown above, arrays are usually defined with the function `c()`. In addition, a `vector` containing consecutive integers can be defined using the `:` operator.

###  Conversion between data types

1. Automatic Conversion

	A `vector` can contain only one basic data type. Therefore, when defining arrays, if the input values are mixed, certain basic data types are automatically converted to other types to ensure consistency of the numeric types; this is called `coerce` in English, and has the meaning of forced conversion. The priority of this conversion is:

	* Logical types -> numeric types
	* Logical Type -> String 
	* numeric type -> string

1. Manual switchover

	In addition to the automatic conversion, you can manually convert the types of the elements in a vector:

	+ Checking the type of a variable `class()`
	+ Checking of classes `is.type()`
	+ Conversion of classes `as.type()`

### Some special values in matrices

+ `NA` (Not Available) missing values

+ `NaN` (Not a Number)is meaningless

+ `-Inf` Negative Infinity

+ `Inf` Positive Infinity

+ `NULL` Null

Some functions to determine these special values:

+ `is.na()`
+ `is.finite()`
+ `is.infinite()`

## Vectors and Arrays

Both are arrays. A `vector` is a one-dimensional array and a matrix is a two-dimensional array.

This means.

- There can be more dimensional arrays
- High-dimensional arrays, like `vector` and matrices, can contain only one basic data type.
- Higher dimensional arrays can be defined by the `array()` function.

### Vector maniulation

```R
dim(m);
nrow(m);
ncol(m);
range(m); ## Available when the content is numeric
summary(m); ## Can also be used in vector
```

Extra:

- Incorporation`ab = c(a, b)`
- Take part`ab[1]`
- Replacement of individual values`ab[1] = c`
- Replacing multiple values`ab[c(2, 3)] = c("Weihua", "Chen")`
- Naming 
