package com.ifengyu.intercom.node.transport;

import android.os.Handler;
import android.os.SystemClock;
import com.ifengyu.intercom.b.s;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: TransportTracer */
public class j {
    public Thread a;
    private final Handler b;
    private final AtomicLong c = new AtomicLong(0);
    private final AtomicLong d = new AtomicLong(0);
    private String e;

    public j(Handler handler) {
        this.b = handler;
    }

    public void a() {
        this.a.interrupt();
    }

    public void a(boolean z) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (z) {
            this.c.set(elapsedRealtime);
            this.b.removeMessages(hashCode());
            this.b.sendMessageDelayed(this.b.obtainMessage(hashCode(), this), 60000);
            return;
        }
        long andSet = elapsedRealtime - this.c.getAndSet(0);
        if (andSet > 1000) {
            s.a("TransportTraceer", "took " + andSet + " ms to perform write");
        }
    }

    public void b(boolean z) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (z) {
            this.d.set(elapsedRealtime);
            return;
        }
        long andSet = elapsedRealtime - this.d.getAndSet(0);
        if (andSet > 1000) {
            s.a("TransportTraceer", "took " + andSet + " ms to perform read");
        }
    }

    public final void b() {
        this.b.removeMessages(hashCode());
    }

    public void a(String str) {
        this.e = str;
    }

    public boolean c() {
        long j = this.c.get();
        if (j != 0) {
            s.a("TransportTraceer", "Write start time:  " + j);
        }
        if (j > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - j;
            s.a("TransportTraceer", "Last write duration:  " + elapsedRealtime);
            if (elapsedRealtime > 60000) {
                s.d("TransportTraceer", "Write has been stuck for more than " + elapsedRealtime + " ms.");
                return true;
            }
        }
        return false;
    }
}
