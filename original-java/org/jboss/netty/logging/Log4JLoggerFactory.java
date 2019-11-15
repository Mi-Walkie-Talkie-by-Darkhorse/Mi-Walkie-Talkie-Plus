package org.jboss.netty.logging;

import org.apache.log4j.Logger;

public class Log4JLoggerFactory extends InternalLoggerFactory {
    public InternalLogger newInstance(String str) {
        return new Log4JLogger(Logger.getLogger(str));
    }
}
