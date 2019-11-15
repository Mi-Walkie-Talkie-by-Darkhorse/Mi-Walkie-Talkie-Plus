package org.jboss.netty.util.internal;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

public class SharedResourceMisuseDetector {
    private static final int MAX_ACTIVE_INSTANCES = 256;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(SharedResourceMisuseDetector.class);
    private final AtomicLong activeInstances = new AtomicLong();
    private final AtomicBoolean logged = new AtomicBoolean();
    private final Class<?> type;

    public SharedResourceMisuseDetector(Class<?> cls) {
        if (cls == null) {
            throw new NullPointerException("type");
        }
        this.type = cls;
    }

    public void increase() {
        if (this.activeInstances.incrementAndGet() > 256 && logger.isWarnEnabled() && this.logged.compareAndSet(false, true)) {
            logger.warn("You are creating too many " + this.type.getSimpleName() + " instances.  " + this.type.getSimpleName() + " is a shared resource that must be reused across the" + " application, so that only a few instances are created.");
        }
    }

    public void decrease() {
        this.activeInstances.decrementAndGet();
    }
}
