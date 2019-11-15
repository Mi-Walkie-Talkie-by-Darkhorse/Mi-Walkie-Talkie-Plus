package com.amap.api.col.sl;

import com.amap.api.location.AMapLocation;

@cr(a = "c")
/* compiled from: LastLocationInfo */
public class fh {
    @cs(a = "a2", b = 6)
    private String a;
    @cs(a = "a3", b = 5)
    private long b;
    @cs(a = "a4", b = 6)
    private String c;
    private AMapLocation d;

    public final AMapLocation a() {
        return this.d;
    }

    public final void a(AMapLocation aMapLocation) {
        this.d = aMapLocation;
    }

    public final String b() {
        return this.c;
    }

    public final void a(String str) {
        this.c = str;
    }

    public final String c() {
        return this.a;
    }

    public final void b(String str) {
        this.a = str;
    }

    public final long d() {
        return this.b;
    }

    public final void a(long j) {
        this.b = j;
    }
}
