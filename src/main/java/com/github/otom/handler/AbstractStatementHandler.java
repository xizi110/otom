package com.github.otom.handler;

import net.sf.jsqlparser.statement.create.table.ColumnDefinition;

import java.util.LinkedHashMap;
import java.util.Locale;

/**
 * @author lizezhong
 * @date 2024/1/8 18:50
 * @description
 */
public abstract class AbstractStatementHandler implements StatementHandler {

    private static final LinkedHashMap<String, ColumnDefinition> columnDefinitionMap = new LinkedHashMap<>();


    public static ColumnDefinition getColumnDefinition(String tableName, String columnName) {
        String key = buildKey(tableName, columnName);
        return columnDefinitionMap.get(key);
    }

    public static void putColumnDefinition(String tableName, String columnName, ColumnDefinition columnDefinition) {
        String key = buildKey(tableName, columnName);
        columnDefinitionMap.put(key, columnDefinition);
    }

    /**
     * 使用(表名:列名)构造map的key，去除多余的双引号和反引号，并且key统一为大写字母
     *
     * @param tableName  表名
     * @param columnName 列名
     * @return key
     */
    private static String buildKey(String tableName, String columnName) {
        return (tableName + ":" + columnName).replaceAll("[`\"]", "").toUpperCase(Locale.ROOT);
    }

}
