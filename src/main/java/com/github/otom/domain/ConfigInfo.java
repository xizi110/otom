package com.github.otom.domain;

import com.github.otom.util.StatementUtil;

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

    private static final Map<String, DataType> dataTypeMap = new HashMap<>();

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
}
