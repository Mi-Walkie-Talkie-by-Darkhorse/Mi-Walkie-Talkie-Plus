package org.jboss.netty.util;

import java.util.Set;
import java.util.concurrent.TimeUnit;

public interface Timer {
    Timeout newTimeout(TimerTask timerTask, long j, TimeUnit timeUnit);

    Set<Timeout> stop();
}
