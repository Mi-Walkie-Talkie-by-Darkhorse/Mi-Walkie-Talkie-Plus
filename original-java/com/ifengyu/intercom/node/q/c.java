package com.ifengyu.intercom.node.q;

import com.ifengyu.intercom.i.z;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* compiled from: ConnectionRetryTimer.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: c  reason: collision with root package name */
    public static c f5950c;

    /* renamed from: a  reason: collision with root package name */
    private long f5951a;

    /* renamed from: b  reason: collision with root package name */
    private long f5952b;

    private c() {
    }

    public static c f() {
        if (f5950c == null) {
            f5950c = new c();
        }
        return f5950c;
    }

    public long a() {
        long min;
        this.f5951a = Math.min(8L, this.f5951a + 1);
        long j = (1 << ((int) (min - 1))) * 1000;
        this.f5952b += j;
        return c() ? OpenStreetMapTileProviderConstants.ONE_HOUR : j;
    }

    public void a(boolean z) {
    }

    public void b() {
        e();
    }

    public boolean c() {
        return false;
    }

    public void d() {
        z.a("ConnectionRetryTimer", "onError");
        this.f5951a = 8L;
        this.f5952b = Math.max(this.f5952b, -1L);
    }

    public void e() {
        this.f5951a = 0L;
        this.f5952b = 0L;
    }
}
