package com.github.otom.handler;

import net.sf.jsqlparser.schema.Column;
import net.sf.jsqlparser.schema.Table;
import net.sf.jsqlparser.statement.Statement;
import net.sf.jsqlparser.statement.comment.Comment;
import net.sf.jsqlparser.statement.create.table.ColumnDefinition;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author lizezhong
 * @date 2024/1/8 18:47
 * @description
 */
public class CommentStatementHandler extends AbstractStatementHandler {

    private static final Logger LOG = LoggerFactory.getLogger(CommentStatementHandler.class);

    @Override
    public String handle(Statement statement) {
        Comment comment = (Comment) statement;
        Table table = comment.getTable();
        // 表注释
        if (table != null) {
            return tableCommentHandler(comment);
        } else {
            // 列注释
            return columnCommentHandler(comment);
        }
    }

    private String columnCommentHandler(Comment comment) {
        Column column = comment.getColumn();
        Table table = column.getTable();
        ColumnDefinition columnDefinition = getColumnDefinition(table.getName(), column.getColumnName());
        if (columnDefinition != null) {
            return String.format("ALTER TABLE %s MODIFY COLUMN %s COMMENT '%s';", table.getName(), columnDefinition.toString().replaceAll("\"", ""), comment.getComment().getValue());
        } else {
            LOG.warn("列{}没有找到列定义，无法转换", column.getColumnName());
        }
        return comment.toString();
    }

    private String tableCommentHandler(Comment comment) {
        return String.format("ALTER TABLE %s COMMENT '%s';", comment.getTable().getName(), comment.getComment().getValue());
    }

    @Override
    public Class<Comment> statementClass() {
        return Comment.class;
    }
}
