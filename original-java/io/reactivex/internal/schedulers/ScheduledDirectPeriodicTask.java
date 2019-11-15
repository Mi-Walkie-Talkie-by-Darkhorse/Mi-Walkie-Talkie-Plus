package io.reactivex.internal.schedulers;

public final class ScheduledDirectPeriodicTask extends AbstractDirectTask implements Runnable {
    private static final long serialVersionUID = 1811839108042568751L;

    public ScheduledDirectPeriodicTask(Runnable runnable) {
        super(runnable);
    }

    public void run() {
        this.b = Thread.currentThread();
        try {
            this.a.run();
        } catch (Throwable th) {
            this.b = null;
            throw th;
        }
        this.b = null;
    }
}
