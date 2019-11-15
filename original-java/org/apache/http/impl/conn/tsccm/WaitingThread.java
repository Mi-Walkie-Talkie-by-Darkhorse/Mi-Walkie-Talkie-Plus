package org.apache.http.impl.conn.tsccm;

import java.util.Date;
import java.util.concurrent.locks.Condition;

@Deprecated
public class WaitingThread {
    public WaitingThread(Condition condition, RouteSpecificPool routeSpecificPool) {
        throw new RuntimeException("Stub!");
    }

    public final Condition getCondition() {
        throw new RuntimeException("Stub!");
    }

    public final RouteSpecificPool getPool() {
        throw new RuntimeException("Stub!");
    }

    public final Thread getThread() {
        throw new RuntimeException("Stub!");
    }

    public boolean await(Date date) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public void wakeup() {
        throw new RuntimeException("Stub!");
    }

    public void interrupt() {
        throw new RuntimeException("Stub!");
    }
}
