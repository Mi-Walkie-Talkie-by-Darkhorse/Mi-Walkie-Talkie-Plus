package org.jboss.netty.logging;

import org.jboss.logging.Logger;

public class JBossLoggerFactory extends InternalLoggerFactory {
    public InternalLogger newInstance(String str) {
        return new JBossLogger(Logger.getLogger(str));
    }
}
