package org.jboss.netty.util;

public interface Timeout {
    void cancel();

    TimerTask getTask();

    Timer getTimer();

    boolean isCancelled();

    boolean isExpired();
}
