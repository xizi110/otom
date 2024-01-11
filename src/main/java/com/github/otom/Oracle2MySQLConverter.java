package com.github.otom;

import com.github.otom.domain.ConfigInfo;
import com.github.otom.domain.DataType;
import com.github.otom.domain.DataTypeMapping;
import com.github.otom.exception.OtomException;
import com.github.otom.listener.WriteFileStatementListener;
import net.sf.jsqlparser.JSQLParserException;
import net.sf.jsqlparser.parser.CCJSqlParserUtil;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

/**
 * @author lizezhong
 * @date 2024/1/9 13:52
 * @description
 */
public class Oracle2MySQLConverter {

    public Oracle2MySQLConverter(File file) throws IOException {
        this(Files.newInputStream(file.toPath()));
    }

    public Oracle2MySQLConverter(InputStream in) throws IOException {
        Properties properties = new Properties();
        properties.load(in);
        initConfig(properties);
    }

    public Oracle2MySQLConverter(Properties properties) {
        initConfig(properties);
    }

    public void convertToMySQL(File file, InputStream input) throws JSQLParserException, IOException {
        convertToMySQL(Files.newOutputStream(file.toPath()), input);
    }

    public void convertToMySQL(File output, File oracleSqlFile) throws JSQLParserException, IOException {
        convertToMySQL(Files.newOutputStream(output.toPath()), Files.newInputStream(oracleSqlFile.toPath()));
    }

    public void convertToMySQL(File file, File oracleSqlFile, Charset charset) throws JSQLParserException, IOException {
        convertToMySQL(Files.newOutputStream(file.toPath()), Files.newInputStream(oracleSqlFile.toPath()), charset);
    }

    public void convertToMySQL(OutputStream output, InputStream input) throws JSQLParserException {
        convertToMySQL(output, input, Charset.defaultCharset());
    }

    public void convertToMySQL(File file, InputStream input, Charset charset) throws JSQLParserException, IOException {
        convertToMySQL(Files.newOutputStream(file.toPath()), input, charset);
    }

    public void convertToMySQL(OutputStream output, InputStream input, Charset charset) throws JSQLParserException {
        CCJSqlParserUtil.streamStatements(new WriteFileStatementListener(output), input, charset.name());
    }

    private void initConfig(Properties properties) {
        initTypeMappings(properties);
    }

    private void initTypeMappings(Properties properties) {
        String typeMappings = properties.getProperty("typeMappings");
        if (typeMappings == null) {
            throw new OtomException("缺失typeMappings属性");
        }
        String[] typePairs = typeMappings.split(";");
        List<DataTypeMapping> dataTypeMappingList = new ArrayList<>(typePairs.length);
        for (String typePair : typePairs) {
            // 忽略空格
            String[] typePairArr = typePair.replaceAll(" ", "").split("\\|");
            if (typePairArr.length != 2) {
                throw new OtomException("typeMappings属性值格式不正确，使用|分割类型，多个类型对之间使用\";\"分割");
            }
            DataType source = buildDataType(typePairArr[0]);
            DataType target = buildDataType(typePairArr[1]);

            DataTypeMapping dataTypeMapping = new DataTypeMapping(source, target);
            dataTypeMappingList.add(dataTypeMapping);
        }
        ConfigInfo.setDataTypeMappings(dataTypeMappingList);
    }

    private DataType buildDataType(String typeStr) {
        if (typeStr.contains("(") && typeStr.contains(")")) {
            String type = typeStr.substring(0, typeStr.indexOf("("));
            String[] args = typeStr.substring(typeStr.indexOf("(") + 1, typeStr.indexOf(")")).split(",");
            return new DataType(type, args);
        }
        return new DataType(typeStr, new String[0]);
    }
}
