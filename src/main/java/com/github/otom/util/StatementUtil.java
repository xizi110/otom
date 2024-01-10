package com.github.otom.util;

import com.github.otom.domain.ConfigInfo;
import com.github.otom.domain.DataType;
import net.sf.jsqlparser.statement.create.table.ColDataType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.StringJoiner;

/**
 * @author lizezhong
 * @date 2024/1/9 10:57
 * @description
 */
public class StatementUtil {

    private static final Logger LOG = LoggerFactory.getLogger(StatementUtil.class);

    public static String colDataTypeToString(ColDataType colDataType) {
        return dataTypeToString(new DataType(colDataType.getDataType(), colDataType.getArgumentsStringList()));
    }

    public static String dataTypeToString(DataType dataType) {
        String type = dataType.getType();
        List<String> arguments = dataType.getArguments();

        if (arguments == null || arguments.isEmpty()) {
            return type;
        }
        StringJoiner joiner = new StringJoiner(",", type + "(", ")");
        arguments.forEach(joiner::add);
        return joiner.toString();
    }

    public static void convertDataType(ColDataType colDataType) {
        DataType mysqlType = null;
        // 获取类型参数
        List<String> arguments = colDataType.getArgumentsStringList();
        if (arguments != null && !arguments.isEmpty()) {
            // 优先匹配类型参数
            mysqlType = ConfigInfo.getDataType(colDataTypeToString(colDataType));
        }
        // 匹配不到，只匹配类型
        if (mysqlType == null) {
            mysqlType = ConfigInfo.getDataType(colDataType.getDataType());
            if (mysqlType == null) {
                // 仍匹配不到，警告，不再处理
                LOG.warn("原始类型{}没有配置映射类型，使用原始类型", StatementUtil.colDataTypeToString(colDataType));
            } else {
                colDataType.setDataType(mysqlType.getType());
                if (mysqlType.getArguments() != null && !mysqlType.getArguments().isEmpty()) {
                    colDataType.setArgumentsStringList(mysqlType.getArguments());
                }
            }
        } else {
            // 匹配到了，替换配置的类型、参数
            colDataType.setDataType(mysqlType.getType());
            if (mysqlType.getArguments() != null && !mysqlType.getArguments().isEmpty()) {
                colDataType.setArgumentsStringList(mysqlType.getArguments());
            } else {
                colDataType.setArgumentsStringList(null);
            }
        }
    }
}
