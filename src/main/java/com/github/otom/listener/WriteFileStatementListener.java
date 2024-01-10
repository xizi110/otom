package com.github.otom.listener;

import java.io.OutputStream;
import java.io.PrintWriter;

/**
 * @author lizezhong
 * @date 2024/1/8 18:57
 * @description
 */
public class WriteFileStatementListener extends AbstractStatementListener {

    private final PrintWriter pw;


    public WriteFileStatementListener(OutputStream outputStream) {
        this.pw = new PrintWriter(outputStream, true);
    }

    @Override
    protected void handleComplete(String result) {
        pw.println(result);
        pw.flush();
    }
}
