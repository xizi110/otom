package com.github.otom.handler;

import com.github.otom.util.StatementUtil;
import net.sf.jsqlparser.statement.Statement;
import net.sf.jsqlparser.statement.alter.Alter;
import net.sf.jsqlparser.statement.alter.AlterExpression;
import net.sf.jsqlparser.statement.alter.AlterOperation;
import net.sf.jsqlparser.statement.create.table.ColDataType;
import net.sf.jsqlparser.statement.create.table.ColumnDefinition;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
 * @author lizezhong
 * @date 2024/1/9 16:46
 * @description
 */
public class AlterStatementHandler extends AbstractStatementHandler {

    private static final Logger LOG = LoggerFactory.getLogger(AlterStatementHandler.class);

    @Override
    public String handle(Statement statement) {
        Alter alter = (Alter) statement;
        for (AlterExpression alterExpression : alter.getAlterExpressions()) {
            AlterOperation operation = alterExpression.getOperation();
            if (operation == AlterOperation.MODIFY) {
                return handleModify(alter, alterExpression);
            }
            if (operation == AlterOperation.RENAME_TABLE) {
                return handleRenameTable(alter, alterExpression);
            }
            if (operation == AlterOperation.RENAME) {
                return handleRename(alter, alterExpression);
            }
        }
        return alter + ";";
    }

    private static String handleRename(Alter alter, AlterExpression alterExpression) {
        String tableName = alter.getTable().getName();
        String oldName = alterExpression.getColumnOldName();
        String newTableName = alterExpression.getColumnName();
        ColumnDefinition columnDefinition = getColumnDefinition(tableName, oldName);
        if (columnDefinition == null) {
            LOG.error("列{}没有找到列定义，无法转换", oldName);
            return alter + ";";
        } else {
            return String.format("ALTER TABLE %s CHANGE %s %s %s;", tableName, oldName, newTableName, columnDefinition.getColDataType());
        }
    }

    private String handleRenameTable(Alter alter, AlterExpression alterExpression) {
        String oldName = alter.getTable().getName();
        String newTableName = alterExpression.getNewTableName();
        return String.format("RENAME TABLE %s TO %s;", oldName, newTableName);
    }

    private String handleModify(Alter alter, AlterExpression alterExpression) {
        List<AlterExpression.ColumnDataType> colDataTypeList = alterExpression.getColDataTypeList();
        if (colDataTypeList != null) {
            // 修改列定义
            for (AlterExpression.ColumnDataType columnDataType : colDataTypeList) {
                ColDataType colDataType = columnDataType.getColDataType();
                StatementUtil.convertDataType(colDataType);
            }
        }
        return alter + ";";
    }

    @Override
    public Class<Alter> statementClass() {
        return Alter.class;
    }
}
