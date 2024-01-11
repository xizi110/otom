# Oracle To MySQL (otom)

> 有几个项目需要从Oracle转为MySQL，表结构需要转换，所以写了个小工具，用来快速转换Oracle语句为MySQL。
> 项目改完之后，完善了一下代码发出来，目前主要实现了建表语句转换。
> 如果有需要，可以自行实现复杂的转换。

### 类型映射

> 首先是类型的转换，实现接口DataTypeConverter，可以自定义转换规则，默认实现为DefaultDataTypeConverter。
>
>
>

### 转换功能

> 转换功能也可以实现接口StatementHandler自行实现，根据转换规则不同，可以将任意数据库转换为任意数据库语句。
>
> Oracle的列注释是单独的语句，而MySQL可以在建表语句加注释，也可以使用alter修改，我选择的是alter修改列注释。
> 不管哪种方式都需要Oracle建表语句和注释语句在一个文件中。注释语句应在建表语句下面。

1. AlterStatementHandler 用来转换alter语句。
2. CommentStatementHandler 用来转换comment语句。
3. CreateTableStatementHandler 用来转换create table语句。
4. DefaultStatementHandler 默认不转换。

### 定制转换

**定制listener**

实现AbstractStatementListener，可以控制结果输出位置

**定制handler**

实现StatementHandler或AbstractStatementHandler，可以控制sql转换功能，实现不同sql系统间的转换，也可以将sql转换为其他格式的数据。

**定制converter**

实现DataTypeConverter，可以控制不同sql系统检类型的映射。

### 用法
```java
// 结果输出到文件
WriteFileStatementListener listener = new WriteFileStatementListener(new FileOutputStream("mysql-temp.sql"), new DefaultDataTypeConverter());
CCJSqlParserUtil.

streamStatements(listener, oracleFileIs, "utf-8");

// 结果输出到控制台
ConsoleStatementListener listener = new ConsoleStatementListener(new DefaultDataTypeConverter());
CCJSqlParserUtil.

streamStatements(listener, oracleFileIs, "utf-8");
```
