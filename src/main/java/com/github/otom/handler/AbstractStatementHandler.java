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
        String key = (tableName + ":" + columnName).replaceAll("\"", "");
        return columnDefinitionMap.get(key.toUpperCase(Locale.ROOT));
    }

    public static void putColumnDefinition(String tableName, String columnName, ColumnDefinition columnDefinition) {
        String key = (tableName + ":" + columnName).replaceAll("\"", "");
        columnDefinitionMap.put(key.toUpperCase(Locale.ROOT), columnDefinition);
    }

}
