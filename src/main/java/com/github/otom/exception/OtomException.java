package com.github.otom.exception;

/**
 * @author lizezhong
 * @date 2024/1/10 16:27
 * @description
 */
public class OtomException extends RuntimeException {

    public OtomException() {
    }

    public OtomException(String message) {
        super(message);
    }

    public OtomException(String message, Throwable cause) {
        super(message, cause);
    }

    public OtomException(Throwable cause) {
        super(cause);
    }
}
