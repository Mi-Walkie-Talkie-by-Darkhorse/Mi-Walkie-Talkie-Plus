package org.jboss.netty.util;

public interface TimerTask {
    void run(Timeout timeout) throws Exception;
}
