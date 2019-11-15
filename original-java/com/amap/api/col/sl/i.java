package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.mi.milinkforgame.sdk.data.Const.Service;
import java.util.List;
import org.json.JSONObject;

/* compiled from: LastLocationManager */
public final class i {
    static fh b = null;
    static cq e = null;
    static long g = 0;
    String a = null;
    fh c = null;
    fh d = null;
    long f = 0;
    boolean h = false;
    private Context i;

    public i(Context context) {
        this.i = context.getApplicationContext();
    }

    public final void a() {
        if (!this.h) {
            try {
                if (this.a == null) {
                    this.a = ff.a("MD5", bu.t(this.i));
                }
                if (e == null) {
                    e = new cq(this.i, cq.a(fi.class), fy.i());
                }
            } catch (Throwable th) {
                fq.a(th, "LastLocationManager", "<init>:DBOperation");
            }
            this.h = true;
        }
    }

    public final boolean a(AMapLocation aMapLocation, String str) {
        if (this.i == null || aMapLocation == null || !fy.a(aMapLocation) || aMapLocation.getLocationType() == 2 || aMapLocation.isMock() || aMapLocation.isFixLastLocation()) {
            return false;
        }
        fh fhVar = new fh();
        fhVar.a(aMapLocation);
        if (aMapLocation.getLocationType() == 1) {
            fhVar.a((String) null);
        } else {
            fhVar.a(str);
        }
        try {
            b = fhVar;
            g = fy.b();
            this.c = fhVar;
            if ((this.d == null || fy.a(this.d.a(), fhVar.a()) > 500.0f) && fy.b() - this.f > 30000) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            fq.a(th, "LastLocationManager", "setLastFix");
            return false;
        }
    }

    public final AMapLocation b() {
        e();
        if (b != null && fy.a(b.a())) {
            return b.a();
        }
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0040, code lost:
        if (r2 <= r10) goto L_0x0042;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0066, code lost:
        if (com.amap.api.col.sl.fy.a(b.b(), r9) == false) goto L_0x0068;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.amap.api.location.AMapLocation a(com.amap.api.location.AMapLocation r8, java.lang.String r9, long r10) {
        /*
            r7 = this;
            r0 = 1
            if (r8 != 0) goto L_0x0004
        L_0x0003:
            return r8
        L_0x0004:
            int r1 = r8.getErrorCode()
            if (r1 == 0) goto L_0x0003
            int r1 = r8.getLocationType()
            if (r1 == r0) goto L_0x0003
            int r1 = r8.getErrorCode()
            r2 = 7
            if (r1 == r2) goto L_0x0003
            r7.e()     // Catch:{ Throwable -> 0x006a }
            com.amap.api.col.sl.fh r1 = b     // Catch:{ Throwable -> 0x006a }
            if (r1 == 0) goto L_0x0003
            com.amap.api.col.sl.fh r1 = b     // Catch:{ Throwable -> 0x006a }
            com.amap.api.location.AMapLocation r1 = r1.a()     // Catch:{ Throwable -> 0x006a }
            if (r1 == 0) goto L_0x0003
            r1 = 0
            boolean r2 = android.text.TextUtils.isEmpty(r9)     // Catch:{ Throwable -> 0x006a }
            if (r2 == 0) goto L_0x005c
            long r2 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x006a }
            com.amap.api.col.sl.fh r4 = b     // Catch:{ Throwable -> 0x006a }
            long r4 = r4.d()     // Catch:{ Throwable -> 0x006a }
            long r2 = r2 - r4
            r4 = 0
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 < 0) goto L_0x0068
            int r2 = (r2 > r10 ? 1 : (r2 == r10 ? 0 : -1))
            if (r2 > 0) goto L_0x0068
        L_0x0042:
            if (r0 == 0) goto L_0x0003
            com.amap.api.col.sl.fh r0 = b     // Catch:{ Throwable -> 0x006a }
            com.amap.api.location.AMapLocation r0 = r0.a()     // Catch:{ Throwable -> 0x006a }
            r1 = 9
            r0.setLocationType(r1)     // Catch:{ Throwable -> 0x0073 }
            r1 = 1
            r0.setFixLastLocation(r1)     // Catch:{ Throwable -> 0x0073 }
            java.lang.String r1 = r8.getLocationDetail()     // Catch:{ Throwable -> 0x0073 }
            r0.setLocationDetail(r1)     // Catch:{ Throwable -> 0x0073 }
            r8 = r0
            goto L_0x0003
        L_0x005c:
            com.amap.api.col.sl.fh r2 = b     // Catch:{ Throwable -> 0x006a }
            java.lang.String r2 = r2.b()     // Catch:{ Throwable -> 0x006a }
            boolean r2 = com.amap.api.col.sl.fy.a(r2, r9)     // Catch:{ Throwable -> 0x006a }
            if (r2 != 0) goto L_0x0042
        L_0x0068:
            r0 = r1
            goto L_0x0042
        L_0x006a:
            r0 = move-exception
        L_0x006b:
            java.lang.String r1 = "LastLocationManager"
            java.lang.String r2 = "fixLastLocation"
            com.amap.api.col.sl.fq.a(r0, r1, r2)
            goto L_0x0003
        L_0x0073:
            r1 = move-exception
            r8 = r0
            r0 = r1
            goto L_0x006b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.i.a(com.amap.api.location.AMapLocation, java.lang.String, long):com.amap.api.location.AMapLocation");
    }

    public final void c() {
        try {
            d();
            this.f = 0;
            this.h = false;
            this.c = null;
            this.d = null;
        } catch (Throwable th) {
            fq.a(th, "LastLocationManager", "destroy");
        }
    }

    public final void d() {
        String str;
        String str2 = null;
        try {
            a();
            if (this.c != null && fy.a(this.c.a()) && e != null && this.c != this.d && this.c.d() == 0) {
                String str3 = this.c.a().toStr();
                String b2 = this.c.b();
                this.d = this.c;
                if (!TextUtils.isEmpty(str3)) {
                    str = bv.b(ff.c(str3.getBytes("UTF-8"), this.a));
                    if (!TextUtils.isEmpty(b2)) {
                        str2 = bv.b(ff.c(b2.getBytes("UTF-8"), this.a));
                    }
                } else {
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    fh fhVar = new fh();
                    fhVar.b(str);
                    fhVar.a(fy.b());
                    fhVar.a(str2);
                    e.a((Object) fhVar, "_id=1");
                    this.f = fy.b();
                    if (b != null) {
                        b.a(fy.b());
                    }
                }
            }
        } catch (Throwable th) {
            fq.a(th, "LastLocationManager", "saveLastFix");
        }
    }

    private void e() {
        if (b == null || fy.b() - g > Service.DefHeartBeatInterval) {
            fh f2 = f();
            g = fy.b();
            if (f2 != null && fy.a(f2.a())) {
                b = f2;
            }
        }
    }

    private fh f() {
        fh fhVar;
        Throwable th;
        String str;
        byte[] b2;
        byte[] d2;
        String str2 = null;
        if (this.i == null) {
            return null;
        }
        a();
        try {
            if (e == null) {
                return null;
            }
            List b3 = e.b("_id=1", fh.class);
            if (b3 == null || b3.size() <= 0) {
                fhVar = null;
            } else {
                fhVar = (fh) b3.get(0);
                try {
                    byte[] b4 = bv.b(fhVar.c());
                    if (b4 != null && b4.length > 0) {
                        byte[] d3 = ff.d(b4, this.a);
                        if (d3 != null && d3.length > 0) {
                            str = new String(d3, "UTF-8");
                            b2 = bv.b(fhVar.b());
                            if (b2 != null && b2.length > 0) {
                                d2 = ff.d(b2, this.a);
                                if (d2 != null && d2.length > 0) {
                                    str2 = new String(d2, "UTF-8");
                                }
                            }
                            fhVar.a(str2);
                            str2 = str;
                        }
                    }
                    str = null;
                    b2 = bv.b(fhVar.b());
                    d2 = ff.d(b2, this.a);
                    str2 = new String(d2, "UTF-8");
                    fhVar.a(str2);
                    str2 = str;
                } catch (Throwable th2) {
                    th = th2;
                    fq.a(th, "LastLocationManager", "readLastFix");
                    return fhVar;
                }
            }
            if (TextUtils.isEmpty(str2)) {
                return fhVar;
            }
            AMapLocation aMapLocation = new AMapLocation("");
            fq.a(aMapLocation, new JSONObject(str2));
            if (!fy.b(aMapLocation)) {
                return fhVar;
            }
            fhVar.a(aMapLocation);
            return fhVar;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            fhVar = null;
            th = th4;
            fq.a(th, "LastLocationManager", "readLastFix");
            return fhVar;
        }
    }
}
