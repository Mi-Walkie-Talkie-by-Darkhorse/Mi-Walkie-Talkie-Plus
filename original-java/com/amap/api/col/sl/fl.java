package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.location.AMapLocationClientOption.GeoLanguage;
import java.util.HashMap;
import org.apache.http.protocol.HTTP;

/* compiled from: LocNetManager */
public final class fl {
    private static fl c = null;
    dn a;
    GeoLanguage b;
    private int d;
    private int e;
    private boolean f;

    private fl() {
        this.a = null;
        this.d = 0;
        this.e = fq.f;
        this.f = false;
        this.b = GeoLanguage.DEFAULT;
        this.a = dn.a();
    }

    public static fl a() {
        if (c == null) {
            c = new fl();
        }
        return c;
    }

    public final void a(long j, boolean z, GeoLanguage geoLanguage) {
        try {
            this.f = z;
            this.e = Long.valueOf(j).intValue();
            if (geoLanguage == null) {
                this.b = GeoLanguage.DEFAULT;
            } else {
                this.b = geoLanguage;
            }
        } catch (Throwable th) {
            fq.a(th, "netmanager", "setOption");
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.amap.api.col.sl.fm a(android.content.Context r8, byte[] r9, java.lang.String r10, boolean r11) {
        /*
            r7 = this;
            r1 = 0
            java.util.HashMap r2 = new java.util.HashMap     // Catch:{ Throwable -> 0x00fe }
            r2.<init>()     // Catch:{ Throwable -> 0x00fe }
            com.amap.api.col.sl.fm r0 = new com.amap.api.col.sl.fm     // Catch:{ Throwable -> 0x00fe }
            com.amap.api.col.sl.bz r3 = com.amap.api.col.sl.fq.b()     // Catch:{ Throwable -> 0x00fe }
            r0.<init>(r8, r3)     // Catch:{ Throwable -> 0x00fe }
            java.lang.String r1 = "Content-Type"
            java.lang.String r3 = "application/octet-stream"
            r2.put(r1, r3)     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r1 = "Accept-Encoding"
            java.lang.String r3 = "gzip"
            r2.put(r1, r3)     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r1 = "gzipped"
            java.lang.String r3 = "1"
            r2.put(r1, r3)     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r1 = "Connection"
            java.lang.String r3 = "Keep-Alive"
            r2.put(r1, r3)     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r1 = "User-Agent"
            java.lang.String r3 = "AMAP_Location_SDK_Android 3.8.0"
            r2.put(r1, r3)     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r1 = "KEY"
            java.lang.String r3 = com.amap.api.col.sl.bp.f(r8)     // Catch:{ Throwable -> 0x00ec }
            r2.put(r1, r3)     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r1 = "enginever"
            java.lang.String r3 = "4.9"
            r2.put(r1, r3)     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r1 = com.amap.api.col.sl.bs.a()     // Catch:{ Throwable -> 0x00ec }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r4 = "key="
            r3.<init>(r4)     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r4 = com.amap.api.col.sl.bp.f(r8)     // Catch:{ Throwable -> 0x00ec }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r3 = r3.toString()     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r3 = com.amap.api.col.sl.bs.a(r8, r1, r3)     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r4 = "ts"
            r2.put(r4, r1)     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r1 = "scode"
            r2.put(r1, r3)     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r1 = "encr"
            java.lang.String r3 = "1"
            r2.put(r1, r3)     // Catch:{ Throwable -> 0x00ec }
            r0.c = r2     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r1 = "loc"
            if (r11 != 0) goto L_0x0076
            java.lang.String r1 = "locf"
        L_0x0076:
            r2 = 1
            r0.m = r2     // Catch:{ Throwable -> 0x00ec }
            java.util.Locale r2 = java.util.Locale.US     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r3 = "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"
            r4 = 3
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ Throwable -> 0x00ec }
            r5 = 0
            java.lang.String r6 = "3.8.0"
            r4[r5] = r6     // Catch:{ Throwable -> 0x00ec }
            r5 = 1
            r4[r5] = r1     // Catch:{ Throwable -> 0x00ec }
            r1 = 2
            r5 = 3
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ Throwable -> 0x00ec }
            r4[r1] = r5     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r1 = java.lang.String.format(r2, r3, r4)     // Catch:{ Throwable -> 0x00ec }
            r0.k = r1     // Catch:{ Throwable -> 0x00ec }
            r0.j = r11     // Catch:{ Throwable -> 0x00ec }
            r0.d = r10     // Catch:{ Throwable -> 0x00ec }
            byte[] r1 = com.amap.api.col.sl.fy.a(r9)     // Catch:{ Throwable -> 0x00ec }
            r0.e = r1     // Catch:{ Throwable -> 0x00ec }
            java.net.Proxy r1 = com.amap.api.col.sl.bx.a(r8)     // Catch:{ Throwable -> 0x00ec }
            r0.a(r1)     // Catch:{ Throwable -> 0x00ec }
            java.util.HashMap r1 = new java.util.HashMap     // Catch:{ Throwable -> 0x00ec }
            r1.<init>()     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r2 = "output"
            java.lang.String r3 = "bin"
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r2 = "policy"
            java.lang.String r3 = "3103"
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00ec }
            int[] r2 = com.amap.api.col.sl.fl.AnonymousClass1.a     // Catch:{ Throwable -> 0x00ec }
            com.amap.api.location.AMapLocationClientOption$GeoLanguage r3 = r7.b     // Catch:{ Throwable -> 0x00ec }
            int r3 = r3.ordinal()     // Catch:{ Throwable -> 0x00ec }
            r2 = r2[r3]     // Catch:{ Throwable -> 0x00ec }
            switch(r2) {
                case 1: goto L_0x00e6;
                case 2: goto L_0x00ee;
                case 3: goto L_0x00f6;
                default: goto L_0x00c7;
            }     // Catch:{ Throwable -> 0x00ec }
        L_0x00c7:
            r0.l = r1     // Catch:{ Throwable -> 0x00ec }
            int r1 = r7.e     // Catch:{ Throwable -> 0x00ec }
            r0.a(r1)     // Catch:{ Throwable -> 0x00ec }
            int r1 = r7.e     // Catch:{ Throwable -> 0x00ec }
            r0.b(r1)     // Catch:{ Throwable -> 0x00ec }
            boolean r1 = r7.f     // Catch:{ Throwable -> 0x00ec }
            if (r1 == 0) goto L_0x00e5
            java.lang.String r1 = r0.f()     // Catch:{ Throwable -> 0x00ec }
            java.lang.String r2 = "http"
            java.lang.String r3 = "https"
            java.lang.String r1 = r1.replace(r2, r3)     // Catch:{ Throwable -> 0x00ec }
            r0.d = r1     // Catch:{ Throwable -> 0x00ec }
        L_0x00e5:
            return r0
        L_0x00e6:
            java.lang.String r2 = "custom"
            r1.remove(r2)     // Catch:{ Throwable -> 0x00ec }
            goto L_0x00c7
        L_0x00ec:
            r1 = move-exception
            goto L_0x00e5
        L_0x00ee:
            java.lang.String r2 = "custom"
            java.lang.String r3 = "language:cn"
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00ec }
            goto L_0x00c7
        L_0x00f6:
            java.lang.String r2 = "custom"
            java.lang.String r3 = "language:en"
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00ec }
            goto L_0x00c7
        L_0x00fe:
            r0 = move-exception
            r0 = r1
            goto L_0x00e5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fl.a(android.content.Context, byte[], java.lang.String, boolean):com.amap.api.col.sl.fm");
    }

    public final du a(fm fmVar) throws Throwable {
        long b2 = fy.b();
        dn dnVar = this.a;
        du a2 = dn.a(fmVar, this.f);
        this.d = Long.valueOf(fy.b() - b2).intValue();
        return a2;
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String a(android.content.Context r11, double r12, double r14) {
        /*
            r10 = this;
            r1 = 0
            java.util.HashMap r0 = new java.util.HashMap     // Catch:{ Throwable -> 0x00d4 }
            r0.<init>()     // Catch:{ Throwable -> 0x00d4 }
            com.amap.api.col.sl.fm r2 = new com.amap.api.col.sl.fm     // Catch:{ Throwable -> 0x00d4 }
            com.amap.api.col.sl.bz r3 = com.amap.api.col.sl.fq.b()     // Catch:{ Throwable -> 0x00d4 }
            r2.<init>(r11, r3)     // Catch:{ Throwable -> 0x00d4 }
            r0.clear()     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r3 = "Content-Type"
            java.lang.String r4 = "application/x-www-form-urlencoded"
            r0.put(r3, r4)     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r3 = "Connection"
            java.lang.String r4 = "Keep-Alive"
            r0.put(r3, r4)     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r3 = "User-Agent"
            java.lang.String r4 = "AMAP_Location_SDK_Android 3.8.0"
            r0.put(r3, r4)     // Catch:{ Throwable -> 0x00d4 }
            java.util.HashMap r3 = new java.util.HashMap     // Catch:{ Throwable -> 0x00d4 }
            r3.<init>()     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r4 = "custom"
            java.lang.String r5 = "26260A1F00020002"
            r3.put(r4, r5)     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r4 = "key"
            java.lang.String r5 = com.amap.api.col.sl.bp.f(r11)     // Catch:{ Throwable -> 0x00d4 }
            r3.put(r4, r5)     // Catch:{ Throwable -> 0x00d4 }
            int[] r4 = com.amap.api.col.sl.fl.AnonymousClass1.a     // Catch:{ Throwable -> 0x00d4 }
            com.amap.api.location.AMapLocationClientOption$GeoLanguage r5 = r10.b     // Catch:{ Throwable -> 0x00d4 }
            int r5 = r5.ordinal()     // Catch:{ Throwable -> 0x00d4 }
            r4 = r4[r5]     // Catch:{ Throwable -> 0x00d4 }
            switch(r4) {
                case 1: goto L_0x00cd;
                case 2: goto L_0x00d7;
                case 3: goto L_0x00e0;
                default: goto L_0x0049;
            }     // Catch:{ Throwable -> 0x00d4 }
        L_0x0049:
            java.lang.String r4 = com.amap.api.col.sl.bs.a()     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r5 = com.amap.api.col.sl.ca.b(r3)     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r5 = com.amap.api.col.sl.bs.a(r11, r4, r5)     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r6 = "ts"
            r3.put(r6, r4)     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r4 = "scode"
            r3.put(r4, r5)     // Catch:{ Throwable -> 0x00d4 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r5 = "output=json&radius=1000&extensions=all&location="
            r4.<init>(r5)     // Catch:{ Throwable -> 0x00d4 }
            java.lang.StringBuilder r4 = r4.append(r14)     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r5 = ","
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Throwable -> 0x00d4 }
            java.lang.StringBuilder r4 = r4.append(r12)     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r4 = r4.toString()     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r5 = "UTF-8"
            byte[] r4 = r4.getBytes(r5)     // Catch:{ Throwable -> 0x00d4 }
            r2.b(r4)     // Catch:{ Throwable -> 0x00d4 }
            r4 = 0
            r2.m = r4     // Catch:{ Throwable -> 0x00d4 }
            r4 = 1
            r2.j = r4     // Catch:{ Throwable -> 0x00d4 }
            java.util.Locale r4 = java.util.Locale.US     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r5 = "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"
            r6 = 3
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch:{ Throwable -> 0x00d4 }
            r7 = 0
            java.lang.String r8 = "3.8.0"
            r6[r7] = r8     // Catch:{ Throwable -> 0x00d4 }
            r7 = 1
            java.lang.String r8 = "loc"
            r6[r7] = r8     // Catch:{ Throwable -> 0x00d4 }
            r7 = 2
            r8 = 3
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ Throwable -> 0x00d4 }
            r6[r7] = r8     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r4 = java.lang.String.format(r4, r5, r6)     // Catch:{ Throwable -> 0x00d4 }
            r2.k = r4     // Catch:{ Throwable -> 0x00d4 }
            r2.l = r3     // Catch:{ Throwable -> 0x00d4 }
            r2.c = r0     // Catch:{ Throwable -> 0x00d4 }
            java.lang.String r0 = "http://restapi.amap.com/v3/geocode/regeo"
            r2.d = r0     // Catch:{ Throwable -> 0x00d4 }
            java.net.Proxy r0 = com.amap.api.col.sl.bx.a(r11)     // Catch:{ Throwable -> 0x00d4 }
            r2.a(r0)     // Catch:{ Throwable -> 0x00d4 }
            int r0 = com.amap.api.col.sl.fq.f     // Catch:{ Throwable -> 0x00d4 }
            r2.a(r0)     // Catch:{ Throwable -> 0x00d4 }
            int r0 = com.amap.api.col.sl.fq.f     // Catch:{ Throwable -> 0x00d4 }
            r2.b(r0)     // Catch:{ Throwable -> 0x00d4 }
            com.amap.api.col.sl.dn r0 = r10.a     // Catch:{ Throwable -> 0x00e9 }
            byte[] r2 = r0.b(r2)     // Catch:{ Throwable -> 0x00e9 }
            java.lang.String r0 = new java.lang.String     // Catch:{ Throwable -> 0x00e9 }
            java.lang.String r3 = "utf-8"
            r0.<init>(r2, r3)     // Catch:{ Throwable -> 0x00e9 }
        L_0x00cc:
            return r0
        L_0x00cd:
            java.lang.String r4 = "language"
            r3.remove(r4)     // Catch:{ Throwable -> 0x00d4 }
            goto L_0x0049
        L_0x00d4:
            r0 = move-exception
            r0 = r1
            goto L_0x00cc
        L_0x00d7:
            java.lang.String r4 = "language"
            java.lang.String r5 = "zh-CN"
            r3.put(r4, r5)     // Catch:{ Throwable -> 0x00d4 }
            goto L_0x0049
        L_0x00e0:
            java.lang.String r4 = "language"
            java.lang.String r5 = "en"
            r3.put(r4, r5)     // Catch:{ Throwable -> 0x00d4 }
            goto L_0x0049
        L_0x00e9:
            r0 = move-exception
            java.lang.String r2 = "LocNetManager"
            java.lang.String r3 = "post"
            com.amap.api.col.sl.fq.a(r0, r2, r3)     // Catch:{ Throwable -> 0x00d4 }
            r0 = r1
            goto L_0x00cc
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fl.a(android.content.Context, double, double):java.lang.String");
    }

    public final String a(byte[] bArr, Context context, String str) {
        try {
            HashMap hashMap = new HashMap();
            fk fkVar = new fk();
            hashMap.clear();
            hashMap.put("Content-Type", "application/x-www-form-urlencoded");
            hashMap.put("Connection", HTTP.CONN_KEEP_ALIVE);
            fkVar.a = hashMap;
            fkVar.c = str;
            fkVar.d = bArr;
            fkVar.a(bx.a(context));
            fkVar.a(fq.f);
            fkVar.b(fq.f);
            return new String(this.a.b(fkVar), "utf-8");
        } catch (Throwable th) {
            return null;
        }
    }

    public final int b() {
        return this.d;
    }
}
