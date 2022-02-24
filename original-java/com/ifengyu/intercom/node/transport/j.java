package com.ifengyu.intercom.node.transport;

import android.os.Handler;
import android.os.SystemClock;
import com.ifengyu.intercom.i.z;
import java.util.concurrent.atomic.AtomicLong;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* compiled from: TransportTracer.java */
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    public Thread f5970a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f5971b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicLong f5972c = new AtomicLong(0);
    private final AtomicLong d = new AtomicLong(0);
    private String e;

    public j(Handler handler) {
        this.f5971b = handler;
    }

    public void a() {
        this.f5970a.interrupt();
    }

    public void b(boolean z) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (z) {
            this.f5972c.set(elapsedRealtime);
            this.f5971b.removeMessages(hashCode());
            Handler handler = this.f5971b;
            handler.sendMessageDelayed(handler.obtainMessage(hashCode(), this), OpenStreetMapTileProviderConstants.ONE_MINUTE);
            return;
        }
        long andSet = elapsedRealtime - this.f5972c.getAndSet(0L);
        if (andSet > 1000) {
            z.d("TransportTraceer", "took " + andSet + " ms to perform write");
        }
    }

    public final void c() {
        this.f5971b.removeMessages(hashCode());
    }

    public void a(boolean z) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (z) {
            this.d.set(elapsedRealtime);
            return;
        }
        long andSet = elapsedRealtime - this.d.getAndSet(0L);
        if (andSet > 1000) {
            z.d("TransportTraceer", "took " + andSet + " ms to perform read");
        }
    }

    public void a(String str) {
        this.e = str;
    }

    public boolean b() {
        long j = this.f5972c.get();
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i != 0) {
            z.d("TransportTraceer", "Write start time:  " + j);
        }
        if (i <= 0) {
            return false;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - j;
        z.d("TransportTraceer", "Last write duration:  " + elapsedRealtime);
        if (elapsedRealtime <= OpenStreetMapTileProviderConstants.ONE_MINUTE) {
            return false;
        }
        z.e("TransportTraceer", "Write has been stuck for more than " + elapsedRealtime + " ms.");
        return true;
    }
}
