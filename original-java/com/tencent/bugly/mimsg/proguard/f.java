package com.tencent.bugly.mimsg.proguard;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
public final class f extends k {
    private static byte[] k = null;
    private static Map<String, String> l = null;
    private static /* synthetic */ boolean m;
    public short a = 0;
    public int b = 0;
    public String c = null;
    public String d = null;
    public byte[] e;
    private byte f = 0;
    private int g = 0;
    private int h = 0;
    private Map<String, String> i;
    private Map<String, String> j;

    static {
        boolean z;
        if (!f.class.desiredAssertionStatus()) {
            z = true;
        } else {
            z = false;
        }
        m = z;
    }

    public final boolean equals(Object obj) {
        f fVar = (f) obj;
        if (!l.a(1, (int) fVar.a) || !l.a(1, (int) fVar.f) || !l.a(1, fVar.g) || !l.a(1, fVar.b) || !l.a((Object) Integer.valueOf(1), (Object) fVar.c) || !l.a((Object) Integer.valueOf(1), (Object) fVar.d) || !l.a((Object) Integer.valueOf(1), (Object) fVar.e) || !l.a(1, fVar.h) || !l.a((Object) Integer.valueOf(1), (Object) fVar.i) || !l.a((Object) Integer.valueOf(1), (Object) fVar.j)) {
            return false;
        }
        return true;
    }

    public final Object clone() {
        boolean z = false;
        try {
            return super.clone();
        } catch (CloneNotSupportedException e2) {
            if (m) {
                return z;
            }
            throw new AssertionError();
        }
    }

    public final void a(j jVar) {
        jVar.a(this.a, 1);
        jVar.a(this.f, 2);
        jVar.a(this.g, 3);
        jVar.a(this.b, 4);
        jVar.a(this.c, 5);
        jVar.a(this.d, 6);
        jVar.a(this.e, 7);
        jVar.a(this.h, 8);
        jVar.a(this.i, 9);
        jVar.a(this.j, 10);
    }

    public final void a(i iVar) {
        try {
            this.a = iVar.a(this.a, 1, true);
            this.f = iVar.a(this.f, 2, true);
            this.g = iVar.a(this.g, 3, true);
            this.b = iVar.a(this.b, 4, true);
            this.c = iVar.b(5, true);
            this.d = iVar.b(6, true);
            if (k == null) {
                k = new byte[]{0};
            }
            byte[] bArr = k;
            this.e = iVar.c(7, true);
            this.h = iVar.a(this.h, 8, true);
            if (l == null) {
                HashMap hashMap = new HashMap();
                l = hashMap;
                hashMap.put("", "");
            }
            this.i = (Map) iVar.a(l, 9, true);
            if (l == null) {
                HashMap hashMap2 = new HashMap();
                l = hashMap2;
                hashMap2.put("", "");
            }
            this.j = (Map) iVar.a(l, 10, true);
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
            System.out.println("RequestPacket decode error " + e.a(this.e));
            throw new RuntimeException(e2);
        }
    }

    public final void a(StringBuilder sb, int i2) {
        h hVar = new h(sb, i2);
        hVar.a(this.a, "iVersion");
        hVar.a(this.f, "cPacketType");
        hVar.a(this.g, "iMessageType");
        hVar.a(this.b, "iRequestId");
        hVar.a(this.c, "sServantName");
        hVar.a(this.d, "sFuncName");
        hVar.a(this.e, "sBuffer");
        hVar.a(this.h, "iTimeout");
        hVar.a(this.i, "context");
        hVar.a(this.j, "status");
    }
}
