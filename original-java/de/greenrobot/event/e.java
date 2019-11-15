package de.greenrobot.event;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* compiled from: HandlerPoster */
final class e extends Handler {
    private final h a = new h();
    private final int b;
    private final c c;
    private boolean d;

    e(c cVar, Looper looper, int i) {
        super(looper);
        this.c = cVar;
        this.b = i;
    }

    /* access modifiers changed from: 0000 */
    public void a(l lVar, Object obj) {
        g a2 = g.a(lVar, obj);
        synchronized (this) {
            this.a.a(a2);
            if (!this.d) {
                this.d = true;
                if (!sendMessage(obtainMessage())) {
                    throw new EventBusException("Could not send handler message");
                }
            }
        }
    }

    public void handleMessage(Message message) {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                g a2 = this.a.a();
                if (a2 == null) {
                    synchronized (this) {
                        a2 = this.a.a();
                        if (a2 == null) {
                            this.d = false;
                            this.d = false;
                            return;
                        }
                    }
                }
                this.c.a(a2);
            } while (SystemClock.uptimeMillis() - uptimeMillis < ((long) this.b));
            if (!sendMessage(obtainMessage())) {
                throw new EventBusException("Could not send handler message");
            }
            this.d = true;
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }
}
