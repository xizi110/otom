package com.github.otom.handler;

import net.sf.jsqlparser.statement.Statement;

/**
 * @author lizezhong
 * @date 2024/1/8 18:45
 * @description
 */
public interface StatementHandler {
    String handle(Statement statement);
}
