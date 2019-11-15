package org.jboss.netty.util;

import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

public class ThreadRenamingRunnable implements Runnable {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(ThreadRenamingRunnable.class);
    private static volatile ThreadNameDeterminer threadNameDeterminer = ThreadNameDeterminer.PROPOSED;
    private final ThreadNameDeterminer determiner;
    private final String proposedThreadName;
    private final Runnable runnable;

    public static ThreadNameDeterminer getThreadNameDeterminer() {
        return threadNameDeterminer;
    }

    public static void setThreadNameDeterminer(ThreadNameDeterminer threadNameDeterminer2) {
        if (threadNameDeterminer2 == null) {
            throw new NullPointerException("threadNameDeterminer");
        }
        threadNameDeterminer = threadNameDeterminer2;
    }

    public ThreadRenamingRunnable(Runnable runnable2, String str, ThreadNameDeterminer threadNameDeterminer2) {
        if (runnable2 == null) {
            throw new NullPointerException("runnable");
        } else if (str == null) {
            throw new NullPointerException("proposedThreadName");
        } else {
            this.runnable = runnable2;
            this.determiner = threadNameDeterminer2;
            this.proposedThreadName = str;
        }
    }

    public ThreadRenamingRunnable(Runnable runnable2, String str) {
        this(runnable2, str, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x001f A[DONT_GENERATE] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r6 = this;
            java.lang.Thread r2 = java.lang.Thread.currentThread()
            java.lang.String r3 = r2.getName()
            java.lang.String r1 = r6.getNewThreadName(r3)
            r0 = 0
            boolean r4 = r3.equals(r1)
            if (r4 != 0) goto L_0x002b
            r2.setName(r1)     // Catch:{ SecurityException -> 0x0023 }
            r0 = 1
            r1 = r0
        L_0x0018:
            java.lang.Runnable r0 = r6.runnable     // Catch:{ all -> 0x002d }
            r0.run()     // Catch:{ all -> 0x002d }
            if (r1 == 0) goto L_0x0022
            r2.setName(r3)
        L_0x0022:
            return
        L_0x0023:
            r1 = move-exception
            org.jboss.netty.logging.InternalLogger r4 = logger
            java.lang.String r5 = "Failed to rename a thread due to security restriction."
            r4.debug(r5, r1)
        L_0x002b:
            r1 = r0
            goto L_0x0018
        L_0x002d:
            r0 = move-exception
            if (r1 == 0) goto L_0x0033
            r2.setName(r3)
        L_0x0033:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.ThreadRenamingRunnable.run():void");
    }

    private String getNewThreadName(String str) {
        String str2;
        try {
            ThreadNameDeterminer threadNameDeterminer2 = this.determiner;
            if (threadNameDeterminer2 == null) {
                threadNameDeterminer2 = getThreadNameDeterminer();
            }
            str2 = threadNameDeterminer2.determineThreadName(str, this.proposedThreadName);
        } catch (Throwable th) {
            logger.warn("Failed to determine the thread name", th);
            str2 = null;
        }
        if (str2 == null) {
            return str;
        }
        return str2;
    }
}
