package com.github.otom.handler;

import com.github.otom.converter.DataTypeConverter;
import net.sf.jsqlparser.statement.Statement;

/**
 * @author lizezhong
 * @date 2024/1/8 18:45
 * @description
 */
public interface StatementHandler {
    String handle(Statement statement, DataTypeConverter converter);

    /**
     * @return 返回需要处理的Statement class
     */
    Class<?> statementClass();
}
