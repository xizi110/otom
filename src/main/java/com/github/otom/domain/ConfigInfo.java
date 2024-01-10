package com.github.otom.domain;

import com.github.otom.handler.DefaultStatementHandler;
import com.github.otom.handler.StatementHandler;
import com.github.otom.util.StatementUtil;
import net.sf.jsqlparser.statement.Statement;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * @author lizezhong
 * @date 2024/1/9 13:53
 * @description
 */
public class ConfigInfo {

    /**
     * 类型map，key为Oracle类型，value为封装的MySQL类型
     */
    private static final Map<String, DataType> dataTypeMap = new HashMap<>();
    /**
     * 处理器map，key为需要处理的Statement class，value为对应的处理器实例
     */
    private static final Map<Class<?>, StatementHandler> statementHandlerMap = new HashMap<>();
    /**
     * 默认的处理器，Statement没有匹配的handler时，使用默认的
     */
    public static final DefaultStatementHandler DEFAULT_STATEMENT_HANDLER = new DefaultStatementHandler();

    public static Map<String, DataType> getDataTypeMap() {
        return dataTypeMap;
    }

    public static void setDataTypeMappings(List<DataTypeMapping> dataTypeMappings) {
        if (dataTypeMap.isEmpty() && dataTypeMappings != null && !dataTypeMappings.isEmpty()) {
            for (DataTypeMapping dataTypeMapping : dataTypeMappings) {
                DataType source = dataTypeMapping.getSource();
                DataType target = dataTypeMapping.getTarget();
                dataTypeMap.put(StatementUtil.dataTypeToString(source).toUpperCase(Locale.ROOT), target);
            }
        }
    }

    public static DataType getDataType(String s) {
        return dataTypeMap.get(s.toUpperCase(Locale.ROOT));
    }

    public static void putHandler(Class<? extends Statement> clazz, StatementHandler handler) {
        statementHandlerMap.put(clazz, handler);
    }

    public static StatementHandler getHandler(Class<? extends Statement> clazz) {
        return statementHandlerMap.get(clazz);
    }
}
