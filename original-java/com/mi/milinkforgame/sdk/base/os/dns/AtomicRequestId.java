package com.mi.milinkforgame.sdk.base.os.dns;

import java.util.concurrent.atomic.AtomicInteger;

public class AtomicRequestId {
    private static final int initValue = 100;
    private static final int maxValue = 65535;
    private static AtomicRequestId reqId = null;
    private static AtomicInteger reqIdentity = new AtomicInteger(100);

    public static synchronized AtomicRequestId getInstance() {
        AtomicRequestId atomicRequestId;
        synchronized (AtomicRequestId.class) {
            if (reqId == null) {
                reqId = new AtomicRequestId();
            }
            atomicRequestId = reqId;
        }
        return atomicRequestId;
    }

    public synchronized int getId() {
        int andIncrement;
        andIncrement = reqIdentity.getAndIncrement();
        if (andIncrement >= 65535) {
            reqIdentity = new AtomicInteger(100);
            andIncrement = reqIdentity.getAndIncrement();
        }
        return andIncrement;
    }
}
