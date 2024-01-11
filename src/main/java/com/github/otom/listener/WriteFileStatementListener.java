package com.github.otom.listener;

import com.github.otom.converter.DataTypeConverter;

import java.io.OutputStream;
import java.io.PrintWriter;

/**
 * @author lizezhong
 * @date 2024/1/8 18:57
 * @description 结果输出到文件
 */
public class WriteFileStatementListener extends AbstractStatementListener {

    private final PrintWriter pw;


    public WriteFileStatementListener(OutputStream outputStream, DataTypeConverter converter) {
        super(converter);
        this.pw = new PrintWriter(outputStream, true);
    }

    @Override
    protected void handleComplete(String result) {
        pw.println(result);
        pw.flush();
    }
}
