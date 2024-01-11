package com.github.otom.handler;

import com.github.otom.converter.DataTypeConverter;
import net.sf.jsqlparser.statement.Statement;

/**
 * @author lizezhong
 * @date 2024/1/9 17:22
 * @description
 */
public class DefaultStatementHandler extends AbstractStatementHandler {
    @Override
    public String handle(Statement statement, DataTypeConverter converter) {
        return statement + ";";
    }

    @Override
    public Class<Statement> statementClass() {
        return Statement.class;
    }
}
