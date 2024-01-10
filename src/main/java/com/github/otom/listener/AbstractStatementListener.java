package com.github.otom.listener;

import com.github.otom.domain.ConfigInfo;
import com.github.otom.handler.DefaultStatementHandler;
import com.github.otom.handler.StatementHandler;
import net.sf.jsqlparser.parser.StatementListener;
import net.sf.jsqlparser.statement.Statement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author lizezhong
 * @date 2024/1/9 14:22
 * @description
 */
public abstract class AbstractStatementListener implements StatementListener {

    private static final Logger LOG = LoggerFactory.getLogger(AbstractStatementListener.class);

    @Override
    public void accept(Statement statement) {
        StatementHandler statementHandler = ConfigInfo.getHandler(statement.getClass());
        if (statementHandler == null) {
            LOG.warn("No available handler found for {}，use the default handler {}", statement.getClass(), DefaultStatementHandler.class);
            statementHandler = ConfigInfo.DEFAULT_STATEMENT_HANDLER;
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
