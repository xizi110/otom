package com.github.otom.listener;

import com.github.otom.converter.DataTypeConverter;

/**
 * @author lizezhong
 * @date 2024/1/8 18:57
 * @description 结果输出到控制台
 */
public class ConsoleStatementListener extends AbstractStatementListener {

    public ConsoleStatementListener(DataTypeConverter converter) {
        super(converter);
    }

    @Override
    protected void handleComplete(String result) {
        System.out.println(result);
    }
}
