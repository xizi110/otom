package com.github.otom.listener;

import com.github.otom.converter.DataTypeConverter;
import com.github.otom.handler.DefaultStatementHandler;
import com.github.otom.handler.StatementHandler;
import com.github.otom.util.StatementHandlerLoader;
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

    private static final DefaultStatementHandler DEFAULT_STATEMENT_HANDLER = new DefaultStatementHandler();
    private final DataTypeConverter converter;

    public AbstractStatementListener(DataTypeConverter converter) {
        this.converter = converter;
    }

    @Override
    public void accept(Statement statement) {
        StatementHandler statementHandler = StatementHandlerLoader.getHandler(statement.getClass());
        if (statementHandler == null) {
            LOG.warn("No available handler found for {}，use the default handler {}", statement.getClass(), DefaultStatementHandler.class);
            statementHandler = DEFAULT_STATEMENT_HANDLER;
        }
        handleBefore(statement, statementHandler);
        String result = statementHandler.handle(statement, converter);
        handleComplete(result);
    }

    protected void handleBefore(Statement statement, StatementHandler handler) {
    }

    protected void handleComplete(String result) {
    }
}
