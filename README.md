# Oracle To MySQL (otom)
> 公司有几个项目需要从Oracle转为MySQL，表结构需要转换，所以写了个小工具，用来快速转换Oracle语句为MySQL。
> 项目改完之后，完善了一下代码发出来，目前主要实现了建表、列修改、创建索引的转换。
> 如果有需要，可以自行实现复杂的转换。

## 建表语句转换
> 首先是列类型的转换，我加了一个配置文件，可以手动配置Oracle的类型对应的MySQL类型。  
> 
> 其次，Oracle的列注释是单独的语句，而MySQL可以在建表语句加注释，也可以使用alter修改，我选择的是alter修改列注释。  
> 
> 不管哪种方式都需要Oracle建表语句和注释语句在一个文件中，注释语句在建表语句下面。
### 配置文件格式
> key的名字固定为typeMappings，value为 OracleType|MySQLType;OracleType|MySQLType 这种格式。  
> 
> 前面为Oracle列的类型，后面为MySQL列的类型，使用竖线分割，多个列类型之间使用“;”分割。   
> 
> 优先匹配带小括号的格式，如VARCHAR2(200)|VARCHAR(100)。  
> 
> 如果匹配不到，使用不带小括号的类型匹配，如VARCHAR2|VARCHAR。   
> 
> 如果没有配置映射关系，会打印warn日志。

配置文件格式如下
```properties
typeMappings=CHAR|CHAR;\
             VARCHAR2(200)|VARCHAR(100);\
             VARCHAR2|VARCHAR;\
             NVARCHAR2|VARCHAR;\
             NUMBER(1,0)|TINYINT;\
             NUMBER(1)|TINYINT;\
             NUMBER(2,0)|TINYINT;\
             NUMBER(2)|TINYINT;\
             NUMBER(6,0)|MEDIUMINT;\
             NUMBER(6)|MEDIUMINT;\
             NUMBER(16)|BIGINT;\
             NUMBER|DECIMAL;\
             INTEGER|INT;\
             DATE|DATE

```
用法
```java
// 引入配置文件，
Oracle2MySQLConverter converter = new Oracle2MySQLConverter(getClass().getResourceAsStream("/typeMappingTable.properties"));
// mysql-temp.sql为转换后输出的文件，oracle_test_create_table.sql为需要转换的Oracle文件。
converter.convertToMySQL(new File("mysql-temp.sql"), getClass().getResourceAsStream("/oracle_test_create_table.sql"));
    
```
