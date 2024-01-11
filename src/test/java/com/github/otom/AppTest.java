package com.github.otom;

import com.github.otom.converter.DefaultDataTypeConverter;
import com.github.otom.listener.ConsoleStatementListener;
import com.github.otom.listener.WriteFileStatementListener;
import junit.framework.TestCase;
import net.sf.jsqlparser.JSQLParserException;
import net.sf.jsqlparser.parser.CCJSqlParserUtil;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 * Unit test for simple App.
 */
public class AppTest extends TestCase {

    private InputStream oracleFileIs;

    @Override
    protected void setUp() throws Exception {
        oracleFileIs = getClass().getResourceAsStream("/oracle_test_create_table.sql");
    }

    public void testWriteFileStatementListener() throws JSQLParserException, FileNotFoundException {
        WriteFileStatementListener listener = new WriteFileStatementListener(new FileOutputStream("mysql-temp.sql"), new DefaultDataTypeConverter());
        CCJSqlParserUtil.streamStatements(listener, oracleFileIs, "utf-8");
    }

    public void testConsoleStatementListener() throws JSQLParserException {
        ConsoleStatementListener listener = new ConsoleStatementListener(new DefaultDataTypeConverter());
        CCJSqlParserUtil.streamStatements(listener, oracleFileIs, "utf-8");
    }
}
