package com.ifengyu.im.imservice.support;

public class SequenceNumberMaker {
    private static SequenceNumberMaker maker = new SequenceNumberMaker();
    private volatile short mSquence = 0;
    private volatile long preMsgId = 0;

    private SequenceNumberMaker() {
    }

    public static SequenceNumberMaker getInstance() {
        return maker;
    }

    public short make() {
        synchronized (this) {
            this.mSquence = (short) (this.mSquence + 1);
            if (this.mSquence >= Short.MAX_VALUE) {
                this.mSquence = 1;
            }
        }
        return this.mSquence;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (r1 >= 100000000) goto L_0x001c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int makelocalUniqueMsgId() {
        /*
            r6 = this;
            r0 = 90000000(0x55d4a80, float:1.04050536E-35)
            monitor-enter(r6)
            long r2 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x0021 }
            r4 = 10000000(0x989680, double:4.9406565E-317)
            long r2 = r2 % r4
            int r1 = (int) r2     // Catch:{ all -> 0x0021 }
            int r1 = r1 + r0
            long r2 = (long) r1     // Catch:{ all -> 0x0021 }
            long r4 = r6.preMsgId     // Catch:{ all -> 0x0021 }
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 != 0) goto L_0x0024
            int r1 = r1 + 1
            r2 = 100000000(0x5f5e100, float:2.3122341E-35)
            if (r1 < r2) goto L_0x0024
        L_0x001c:
            long r2 = (long) r0     // Catch:{ all -> 0x0021 }
            r6.preMsgId = r2     // Catch:{ all -> 0x0021 }
            monitor-exit(r6)     // Catch:{ all -> 0x0021 }
            return r0
        L_0x0021:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x0021 }
            throw r0
        L_0x0024:
            r0 = r1
            goto L_0x001c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.im.imservice.support.SequenceNumberMaker.makelocalUniqueMsgId():int");
    }

    public boolean isFailure(int i) {
        if (i >= 90000000) {
            return true;
        }
        return false;
    }
}
