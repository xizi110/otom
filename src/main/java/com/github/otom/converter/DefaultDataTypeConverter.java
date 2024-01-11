package com.github.otom.converter;


import net.sf.jsqlparser.statement.create.table.ColDataType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.*;
import java.util.function.Consumer;

/**
 * @author lizezhong
 * @date 2024/1/11 10:56
 * @description
 */
public class DefaultDataTypeConverter implements DataTypeConverter {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultDataTypeConverter.class);

    private static final List<String> SKIP_CONVERT_DATA_TYPE_LIST = List.of("INTEGER", "CHAR", "VARCHAR", "TIMESTAMP");
    private static final Map<String, Consumer<ColDataType>> DATA_TYPE_CONVERTER_MAP = new HashMap<>();

    private static final Consumer<ColDataType> CHAR_CONVERTER = (source) -> {
        switch (source.getDataType().toUpperCase(Locale.ROOT)) {
            case "VARCHAR2", "NVARCHAR2" -> source.setDataType("VARCHAR");
            case "NCHAR" -> source.setDataType("CHAR");
        }
    };
    private static final Consumer<ColDataType> NUMBER_CONVERTER = (source) -> {
        if ("NUMBER".equalsIgnoreCase(source.getDataType())) {
            List<String> args = source.getArgumentsStringList();
            // 无参数默认整型
            if (args == null || args.isEmpty()) {
                source.setDataType("INT");
            } else if (args.size() == 1 || (args.size() == 2 && Objects.equals(args.get(1), "0"))) {
                // 一个参数，或第二个参数为0，也是整型
                if (Integer.parseInt(args.get(0)) < 4) {
                    source.setDataType("TINYINT");
                } else if (Integer.parseInt(args.get(0)) < 6) {
                    source.setDataType("SMALLINT");
                } else if (Integer.parseInt(args.get(0)) < 9) {
                    source.setDataType("MEDIUMINT");
                } else if (Integer.parseInt(args.get(0)) < 11) {
                    source.setDataType("INT");
                } else {
                    source.setDataType("BIGINT");
                }
                source.setArgumentsStringList(null);
            } else {
                // 小数
                source.setDataType("DECIMAL");
            }
        }
    };
    private static final Consumer<ColDataType> FLOAT_CONVERTER = (source) -> {
        if ("BINARY_FLOAT".equalsIgnoreCase(source.getDataType())) {
            source.setDataType("FLOAT");
        } else if ("BINARY_DOUBLE".equalsIgnoreCase(source.getDataType())) {
            source.setDataType("DOUBLE");
        }
    };
    private static final Consumer<ColDataType> DATE_CONVERTER = (source) -> {
        if ("DATE".equalsIgnoreCase(source.getDataType())) {
            source.setDataType("DATETIME");
        }
    };

    static {
        DATA_TYPE_CONVERTER_MAP.put("VARCHAR2", CHAR_CONVERTER);
        DATA_TYPE_CONVERTER_MAP.put("NVARCHAR2", CHAR_CONVERTER);
        DATA_TYPE_CONVERTER_MAP.put("NUMBER", NUMBER_CONVERTER);
        DATA_TYPE_CONVERTER_MAP.put("BINARY_FLOAT", FLOAT_CONVERTER);
        DATA_TYPE_CONVERTER_MAP.put("BINARY_DOUBLE", FLOAT_CONVERTER);
        DATA_TYPE_CONVERTER_MAP.put("DATE", DATE_CONVERTER);
    }

    @Override
    public void convert(ColDataType dataType) {
        Consumer<ColDataType> consumer = DATA_TYPE_CONVERTER_MAP.get(dataType.getDataType().toUpperCase(Locale.ROOT));
        if (consumer != null) {
            consumer.accept(dataType);
        } else if (!SKIP_CONVERT_DATA_TYPE_LIST.contains(dataType.getDataType().toUpperCase(Locale.ROOT))) {
            LOG.warn("没有找到匹配的converter：" + dataType.getDataType());
        }
    }
}