package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.Selector;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.SystemPropertyUtil;

final class SelectorUtil {
    static final int DEFAULT_IO_THREADS = (Runtime.getRuntime().availableProcessors() * 2);
    static final long DEFAULT_SELECT_TIMEOUT = 500;
    static final boolean EPOLL_BUG_WORKAROUND = SystemPropertyUtil.getBoolean("org.jboss.netty.epollBugWorkaround", false);
    static final long SELECT_TIMEOUT = SystemPropertyUtil.getLong("org.jboss.netty.selectTimeout", DEFAULT_SELECT_TIMEOUT);
    static final long SELECT_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(SELECT_TIMEOUT);
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(SelectorUtil.class);

    static {
        String str = "sun.nio.ch.bugLevel";
        try {
            if (System.getProperty(str) == null) {
                System.setProperty(str, "");
            }
        } catch (SecurityException e) {
            if (logger.isDebugEnabled()) {
                logger.debug("Unable to get/set System Property '" + str + '\'', e);
            }
        }
        if (logger.isDebugEnabled()) {
            logger.debug("Using select timeout of " + SELECT_TIMEOUT);
            logger.debug("Epoll-bug workaround enabled = " + EPOLL_BUG_WORKAROUND);
        }
    }

    static int select(Selector selector) throws IOException {
        try {
            return selector.select(SELECT_TIMEOUT);
        } catch (CancelledKeyException e) {
            if (logger.isDebugEnabled()) {
                logger.debug(CancelledKeyException.class.getSimpleName() + " raised by a Selector - JDK bug?", e);
            }
            return -1;
        }
    }

    private SelectorUtil() {
    }
}
