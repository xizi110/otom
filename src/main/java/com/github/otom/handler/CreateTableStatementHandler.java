package com.github.otom.handler;

import com.github.otom.util.StatementUtil;
import net.sf.jsqlparser.statement.Statement;
import net.sf.jsqlparser.statement.create.table.ColDataType;
import net.sf.jsqlparser.statement.create.table.ColumnDefinition;
import net.sf.jsqlparser.statement.create.table.CreateTable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
 * @author lizezhong
 * @date 2024/1/8 18:45
 * @description
 */
public class CreateTableStatementHandler extends AbstractStatementHandler {

    private static final Logger LOG = LoggerFactory.getLogger(CreateTableStatementHandler.class);

    @Override
    public String handle(Statement statement) {
        CreateTable createTable = (CreateTable) statement;
        List<ColumnDefinition> columnDefinitions = createTable.getColumnDefinitions();
        LOG.debug("列定义转换为MySQL格式，表名{}，列数量{}", createTable.getTable().getName(), columnDefinitions.size());
        for (ColumnDefinition columnDefinition : columnDefinitions) {
            convertToMysqlColumnDefinition(createTable, columnDefinition);
        }
        return createTable + ";";
    }

    private void convertToMysqlColumnDefinition(CreateTable createTable, ColumnDefinition columnDefinition) {
        ColDataType colDataType = columnDefinition.getColDataType();
        if (colDataType.getDataType() == null || colDataType.getDataType().isEmpty()) {
            LOG.error("列名{}，原始类型为null", columnDefinition.getColumnName());
            return;
        }
        String originType = StatementUtil.colDataTypeToString(colDataType);
        StatementUtil.convertDataType(colDataType);
        String mysqlType = StatementUtil.colDataTypeToString(colDataType);
        LOG.debug("列名{}，原始类型为{}，转换后类型为{}", columnDefinition.getColumnName(), originType, mysqlType);
        // 放入map，以备后续使用
        putColumnDefinition(createTable.getTable().getName(), columnDefinition.getColumnName(), columnDefinition);
    }
}
