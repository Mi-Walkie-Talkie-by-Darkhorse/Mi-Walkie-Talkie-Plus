package pl.droidsonroids.gif;

import java.lang.Thread.UncaughtExceptionHandler;

/* compiled from: SafeRunnable */
abstract class l implements Runnable {
    final c c;

    /* access modifiers changed from: 0000 */
    public abstract void a();

    l(c cVar) {
        this.c = cVar;
    }

    public final void run() {
        try {
            if (!this.c.a()) {
                a();
            }
        } catch (Throwable th) {
            UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            if (defaultUncaughtExceptionHandler != null) {
                defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
            }
            throw th;
        }
    }
}
