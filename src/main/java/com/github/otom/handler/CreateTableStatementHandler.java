package com.github.otom.handler;

import com.github.otom.converter.DataTypeConverter;
import net.sf.jsqlparser.statement.Statement;
import net.sf.jsqlparser.statement.create.table.ColDataType;
import net.sf.jsqlparser.statement.create.table.ColumnDefinition;
import net.sf.jsqlparser.statement.create.table.CreateTable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.StringJoiner;

/**
 * @author lizezhong
 * @date 2024/1/8 18:45
 * @description
 */
public class CreateTableStatementHandler extends AbstractStatementHandler {

    private static final Logger LOG = LoggerFactory.getLogger(CreateTableStatementHandler.class);

    @Override
    public String handle(Statement statement, DataTypeConverter converter) {
        CreateTable createTable = (CreateTable) statement;
        List<ColumnDefinition> columnDefinitions = createTable.getColumnDefinitions();
        LOG.debug("列定义转换为MySQL格式，表名{}，列数量{}", createTable.getTable().getName(), columnDefinitions.size());
        for (ColumnDefinition columnDefinition : columnDefinitions) {
            convertToMysqlColumnDefinition(createTable, columnDefinition, converter);
        }
        return createTable + ";";
    }

    private void convertToMysqlColumnDefinition(CreateTable createTable, ColumnDefinition columnDefinition, DataTypeConverter converter) {
        ColDataType colDataType = columnDefinition.getColDataType();
        if (colDataType.getDataType() == null || colDataType.getDataType().isEmpty()) {
            LOG.error("列名{}，原始类型为null", columnDefinition.getColumnName());
            return;
        }
        String originType = colDataTypeToString(colDataType);
        converter.convert(colDataType);
        String mysqlType = colDataTypeToString(colDataType);
        LOG.debug("列名{}，原始类型为{}，转换后类型为{}", columnDefinition.getColumnName(), originType, mysqlType);
        // 放入map，以备后续使用
        putColumnDefinition(createTable.getTable().getName(), columnDefinition.getColumnName(), columnDefinition);
    }

    @Override
    public Class<CreateTable> statementClass() {
        return CreateTable.class;
    }

    private String colDataTypeToString(ColDataType colDataType) {
        String type = colDataType.getDataType();
        List<String> arguments = colDataType.getArgumentsStringList();

        if (arguments == null || arguments.isEmpty()) {
            return type;
        }
        StringJoiner joiner = new StringJoiner(",", type + "(", ")");
        arguments.forEach(joiner::add);
        return joiner.toString();
    }
}
