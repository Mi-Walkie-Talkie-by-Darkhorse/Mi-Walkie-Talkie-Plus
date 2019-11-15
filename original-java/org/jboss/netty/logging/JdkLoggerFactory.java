package org.jboss.netty.logging;

import java.util.logging.Logger;

public class JdkLoggerFactory extends InternalLoggerFactory {
    public InternalLogger newInstance(String str) {
        return new JdkLogger(Logger.getLogger(str), str);
    }
}
