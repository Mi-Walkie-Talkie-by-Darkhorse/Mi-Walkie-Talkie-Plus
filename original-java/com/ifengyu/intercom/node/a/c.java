package com.ifengyu.intercom.node.a;

import com.ifengyu.intercom.b.s;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* compiled from: ConnectionRetryTimer */
public final class c {
    public static c a;
    private final int b = 1000;
    private final int c = 8;
    private final long d = -1;
    private final long e = OpenStreetMapTileProviderConstants.ONE_HOUR;
    private long f;
    private long g;
    private boolean h = false;

    private c() {
    }

    public static c a() {
        if (a == null) {
            a = new c();
        }
        return a;
    }

    public void b() {
        c();
        this.h = false;
    }

    public void c() {
        this.f = 0;
        this.g = 0;
    }

    public long d() {
        this.f = Math.min(8, this.f + 1);
        long j = 1000 * ((long) (1 << ((int) (this.f - 1))));
        this.g += j;
        if (e()) {
            return OpenStreetMapTileProviderConstants.ONE_HOUR;
        }
        return j;
    }

    public boolean e() {
        return false;
    }

    public void f() {
        s.b("ConnectionRetryTimer", "onError");
        this.f = 8;
        this.g = Math.max(this.g, -1);
    }

    public void a(boolean z) {
        this.h = z;
    }
}
