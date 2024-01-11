package com.github.otom.util;

import com.github.otom.exception.OtomException;
import com.github.otom.handler.StatementHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.Map;
import java.util.ServiceLoader;

/**
 * @author lizezhong
 * @date 2024/1/11 9:31
 * @description SPI机制加载handler
 */
public final class StatementHandlerLoader {
    private static final Logger LOG = LoggerFactory.getLogger(StatementHandlerLoader.class);

    /**
     * 处理器map，key为需要处理的Statement class，value为对应的处理器实例
     */
    private static final Map<Class<?>, StatementHandler> statementHandlerMap = new HashMap<>();

    private static void loadHandlers() {
        ServiceLoader<StatementHandler> handlers = ServiceLoader.load(StatementHandler.class);
        for (StatementHandler handler : handlers) {
            LOG.debug("SPI加载到的handler：" + handler.getClass());
            statementHandlerMap.put(handler.statementClass(), handler);
        }
        if (statementHandlerMap.isEmpty()) {
            throw new OtomException("没有加载到handler，请在META-INF/services目录配置com.github.otom.handler.StatementHandler文件，内容为实现类");
        }
    }

    public static StatementHandler getHandler(Class<?> clazz) {
        if (statementHandlerMap.isEmpty()) {
            loadHandlers();
        }
        return statementHandlerMap.get(clazz);
    }

}
