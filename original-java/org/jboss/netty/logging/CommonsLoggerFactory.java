package org.jboss.netty.logging;

import org.apache.commons.logging.b;

public class CommonsLoggerFactory extends InternalLoggerFactory {
    public InternalLogger newInstance(String str) {
        return new CommonsLogger(b.a(str), str);
    }
}
