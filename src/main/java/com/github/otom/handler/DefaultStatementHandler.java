package com.github.otom.handler;

import net.sf.jsqlparser.statement.Statement;

/**
 * @author lizezhong
 * @date 2024/1/9 17:22
 * @description
 */
public class DefaultStatementHandler extends AbstractStatementHandler {
    @Override
    public String handle(Statement statement) {
        return statement + ";";
    }
}
