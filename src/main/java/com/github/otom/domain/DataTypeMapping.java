package com.github.otom.domain;

/**
 * @author lizezhong
 * @date 2024/1/9 14:00
 * @description
 */
public class DataTypeMapping {

    private DataType source;
    private DataType target;

    public DataTypeMapping(DataType source, DataType target) {
        this.source = source;
        this.target = target;
    }

    public DataType getSource() {
        return source;
    }

    public void setSource(DataType source) {
        this.source = source;
    }

    public DataType getTarget() {
        return target;
    }

    public void setTarget(DataType target) {
        this.target = target;
    }

    @Override
    public String toString() {
        return "DataTypeMapping{" +
                "source=" + source +
                ", target=" + target +
                '}';
    }
}
