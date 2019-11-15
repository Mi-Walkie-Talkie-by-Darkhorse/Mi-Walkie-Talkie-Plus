package com.mi.milinkforgame.sdk.base.os.timer;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;

public class SimpleClock extends Clock {
    private static final int CLOCK_MAX_COUNT = 32;
    private static final String CLOCK_SERVICE_NAME = "base.clock.service";
    private static Handler clockHandler;
    private static HandlerThread clockThread;
    private static SimpleClock[] clocks;

    public static SimpleClock set(long j, long j2, OnClockListener onClockListener) {
        SimpleClock simpleClock;
        synchronized (SimpleClock.class) {
            initClockService();
            int i = -1;
            int i2 = 0;
            while (true) {
                if (i2 >= clocks.length) {
                    break;
                } else if (clocks[i2] == null) {
                    i = i2;
                    break;
                } else {
                    i2++;
                }
            }
            if (i < 0) {
                simpleClock = null;
            } else {
                simpleClock = new SimpleClock(i, j, onClockListener);
                clocks[i] = simpleClock;
                prepareNextInterval(i, j2);
            }
        }
        return simpleClock;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void cancel(com.mi.milinkforgame.sdk.base.os.timer.SimpleClock r4) {
        /*
            java.lang.Class<com.mi.milinkforgame.sdk.base.os.timer.SimpleClock> r1 = com.mi.milinkforgame.sdk.base.os.timer.SimpleClock.class
            monitor-enter(r1)
            if (r4 != 0) goto L_0x0007
            monitor-exit(r1)     // Catch:{ all -> 0x0014 }
        L_0x0006:
            return
        L_0x0007:
            int r0 = r4.getClockId()     // Catch:{ all -> 0x0014 }
            if (r0 < 0) goto L_0x0012
            com.mi.milinkforgame.sdk.base.os.timer.SimpleClock[] r2 = clocks     // Catch:{ all -> 0x0014 }
            int r2 = r2.length     // Catch:{ all -> 0x0014 }
            if (r0 < r2) goto L_0x0017
        L_0x0012:
            monitor-exit(r1)     // Catch:{ all -> 0x0014 }
            goto L_0x0006
        L_0x0014:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0014 }
            throw r0
        L_0x0017:
            com.mi.milinkforgame.sdk.base.os.timer.SimpleClock[] r2 = clocks     // Catch:{ all -> 0x0014 }
            r2 = r2[r0]     // Catch:{ all -> 0x0014 }
            if (r2 == 0) goto L_0x0024
            if (r2 != r4) goto L_0x0024
            com.mi.milinkforgame.sdk.base.os.timer.SimpleClock[] r2 = clocks     // Catch:{ all -> 0x0014 }
            r3 = 0
            r2[r0] = r3     // Catch:{ all -> 0x0014 }
        L_0x0024:
            monitor-exit(r1)     // Catch:{ all -> 0x0014 }
            goto L_0x0006
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.base.os.timer.SimpleClock.cancel(com.mi.milinkforgame.sdk.base.os.timer.SimpleClock):void");
    }

    private static void initClockService() {
        synchronized (SimpleClock.class) {
            if (clocks == null) {
                clocks = new SimpleClock[32];
            }
            if (clockThread == null) {
                clockThread = new HandlerThread(CLOCK_SERVICE_NAME);
            }
            if (!clockThread.isAlive()) {
                clockThread.start();
            }
            if (clockThread.isAlive() && clockHandler == null) {
                clockHandler = new Handler(clockThread.getLooper()) {
                    public void handleMessage(Message message) {
                        SimpleClock.handleClockMessage(message.what);
                    }
                };
            }
        }
    }

    /* access modifiers changed from: private */
    public static void handleClockMessage(int i) {
        if (i >= 0 && i < clocks.length) {
            SimpleClock simpleClock = clocks[i];
            if (simpleClock != null) {
                OnClockListener listener = simpleClock.getListener();
                if (listener == null) {
                    return;
                }
                if (listener.onClockArrived(simpleClock)) {
                    prepareNextInterval(i, simpleClock.getInterval());
                } else {
                    cancel(simpleClock);
                }
            }
        }
    }

    private static void prepareNextInterval(int i, long j) {
        if (clockHandler == null) {
            return;
        }
        if (j > 0) {
            clockHandler.sendEmptyMessageDelayed(i, j);
        } else {
            clockHandler.sendEmptyMessage(i);
        }
    }

    protected SimpleClock(int i, long j, OnClockListener onClockListener) {
        super(i, j, onClockListener);
    }

    public void cancel() {
        cancel(this);
    }
}
