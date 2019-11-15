package de.greenrobot.event;

import android.util.Log;

/* compiled from: BackgroundPoster */
final class b implements Runnable {
    private final h a = new h();
    private final c b;
    private volatile boolean c;

    b(c cVar) {
        this.b = cVar;
    }

    public void a(l lVar, Object obj) {
        g a2 = g.a(lVar, obj);
        synchronized (this) {
            this.a.a(a2);
            if (!this.c) {
                this.c = true;
                this.b.c().execute(this);
            }
        }
    }

    public void run() {
        while (true) {
            try {
                g a2 = this.a.a(1000);
                if (a2 == null) {
                    synchronized (this) {
                        a2 = this.a.a();
                        if (a2 == null) {
                            this.c = false;
                            this.c = false;
                            return;
                        }
                    }
                }
                this.b.a(a2);
            } catch (InterruptedException e) {
                Log.w("Event", Thread.currentThread().getName() + " was interruppted", e);
                this.c = false;
                return;
            } catch (Throwable th) {
                this.c = false;
                throw th;
            }
        }
    }
}
