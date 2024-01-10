package com.github.otom;

import junit.framework.TestCase;

import java.io.File;

/**
 * Unit test for simple App.
 */
public class AppTest extends TestCase {


    public void testCreateTable() throws Exception {
        Oracle2MySQLConverter sqlConverter = new Oracle2MySQLConverter(getClass().getResourceAsStream("/typeMappingTable.properties"));
        sqlConverter.convertToMySQL(new File("mysql-temp.sql"), getClass().getResourceAsStream("/oracle_test_create_table.sql"));
    }
}
