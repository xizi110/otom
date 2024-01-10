package com.github.otom.domain;

import com.github.otom.util.StatementUtil;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author lizezhong
 * @date 2024/1/9 10:27
 * @description
 */
public class DataType {

    private String type;
    private List<String> arguments;

    public DataType(String type, String[] args) {
        this.type = type;
        this.arguments = args == null ? null : Arrays.stream(args).collect(Collectors.toList());
    }

    public DataType(String type, List<String> args) {
        this.type = type;
        this.arguments = args;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public List<String> getArguments() {
        return arguments;
    }

    public void setArguments(List<String> arguments) {
        this.arguments = arguments;
    }

    @Override
    public String toString() {
        return StatementUtil.dataTypeToString(this);
    }
}
