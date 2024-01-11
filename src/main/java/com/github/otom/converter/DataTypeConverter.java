package com.github.otom.converter;

import net.sf.jsqlparser.statement.create.table.ColDataType;

/**
 * @author lizezhong
 * @date 2024/1/11 10:54
 * @description
 */
public interface DataTypeConverter {

    void convert(ColDataType dataType);

}
