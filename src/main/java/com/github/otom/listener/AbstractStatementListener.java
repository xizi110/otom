package com.github.otom.listener;

import com.github.otom.handler.*;
import net.sf.jsqlparser.parser.StatementListener;
import net.sf.jsqlparser.statement.Statement;
import net.sf.jsqlparser.statement.alter.Alter;
import net.sf.jsqlparser.statement.comment.Comment;
import net.sf.jsqlparser.statement.create.table.CreateTable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.Map;

/**
 * @author lizezhong
 * @date 2024/1/9 14:22
 * @description
 */
public abstract class AbstractStatementListener implements StatementListener {

    private static final Logger LOG = LoggerFactory.getLogger(AbstractStatementListener.class);

    public static final Map<Class<?>, StatementHandler> statementHandlerMap = new HashMap<>();
    public static final DefaultStatementHandler DEFAULT_STATEMENT_HANDLER = new DefaultStatementHandler();

    static {
        statementHandlerMap.put(CreateTable.class, new CreateTableStatementHandler());
        statementHandlerMap.put(Comment.class, new CommentStatementHandler());
        statementHandlerMap.put(Alter.class, new AlterStatementHandler());
    }

    @Override
    public void accept(Statement statement) {
        StatementHandler statementHandler = statementHandlerMap.get(statement.getClass());
        if (statementHandler == null) {
            LOG.warn("No available handler found for {}，use the default handler {}", statement.getClass(), DefaultStatementHandler.class);
            statementHandler = DEFAULT_STATEMENT_HANDLER;
        }
        handleBefore(statement, statementHandler);
        String result = statementHandler.handle(statement);
        handleComplete(result);
    }

    protected void handleBefore(Statement statement, StatementHandler handler) {
    }

    protected void handleComplete(String result) {
    }
}
