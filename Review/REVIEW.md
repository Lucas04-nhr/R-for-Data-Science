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

### 基本数据类型

最基本的数据类型包括**数字**，**逻辑符号**和**字符串**，是其它数据类型的基本组成部分。

### 简单数据类型

包括```vector```和矩阵，它们都可以包含某一种基本数据类型的多个数值，比如由多个数字组成的矩阵，多个字符串组成的```vector```等。但它们**只能包含单一数据类型**。

```R
c(100, 20, 30) ## 整数 vector 
c("字符串", "数组","是我") ## 字符串 vector
c(TRUE, FALSE, TRUE, T, F) ## 一个逻辑 vector
```

如上所示，数组通常用函数 `c()` 来定义。除此之外，还可以用 `:` 操作符号来定义包含连续整数的 `vector`。

### 数据类型间的转换

1. 自动转换

	`vector`只能包含一种基本数据类型。因此，在定义数组时，如果输入的数值是混合的，那么某些基本数据类型会自动转换为其它类型，以保证数值类型的一致性；这在英文里称为`coerce`，有强制转换的意思。这种转换的优先级为：

	* 逻辑类型 -> 数字类型
	* 逻辑类型 -> 字符串 
	* 数字类型 -> 字符串

1. 手动转换

	除了自动转换外，还可以手动转换向量中元素的类型

	+ 查看变量类型`class()`
	+ 类的检查`is.type()`
	+ 类的转换`as.type()`

### 矩阵中的一些特殊值

+ `NA`缺失值

+ `NaN`无意义

+ `-Inf`负无穷

+ `NULL`空

判断这些特殊值的一些函数

+ `is.na()`

+ `is.finite()`

+ `is.infinite()`
