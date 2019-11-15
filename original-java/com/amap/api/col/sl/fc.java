package com.amap.api.col.sl;

import android.content.Context;
import android.net.ConnectivityManager;
import com.amap.api.location.AMapLocationClientOption;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.util.Timer;
import java.util.TimerTask;

/* compiled from: CollectionManager */
public final class fc {
    public Object a = null;
    public String b = "com.data.carrier_v4.CollectorManager";
    private boolean c = false;
    private Timer d = null;
    private TimerTask e = null;
    private int f = 0;
    private boolean g = true;
    private fl h = null;
    /* access modifiers changed from: private */
    public fe i = null;
    /* access modifiers changed from: private */
    public ConnectivityManager j = null;
    /* access modifiers changed from: private */
    public long k = 0;
    private Context l = null;

    /* compiled from: CollectionManager */
    class a implements Runnable {
        a() {
        }

        public final void run() {
            try {
                ft.a(fc.this.a, "destroy", new Object[0]);
            } catch (Throwable th) {
                fq.a(th, "CollectionManager", "stop3rdCM");
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x004f A[SYNTHETIC, Splitter:B:12:0x004f] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00c5 A[Catch:{ Throwable -> 0x00b4, Throwable -> 0x0093 }] */
    /* JADX WARNING: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void a(com.amap.api.col.sl.fc r9, int r10) {
        /*
            r1 = 674234367(0x282fffff, float:9.769962E-15)
            r0 = 70254591(0x42fffff, float:2.0688699E-36)
            r8 = 3
            boolean r2 = r9.j()
            if (r2 == 0) goto L_0x0013
            boolean r2 = com.amap.api.col.sl.fp.v()
            if (r2 != 0) goto L_0x0017
        L_0x0013:
            r9.i()
        L_0x0016:
            return
        L_0x0017:
            switch(r10) {
                case 0: goto L_0x009d;
                case 1: goto L_0x001b;
                case 2: goto L_0x00a0;
                default: goto L_0x001a;
            }
        L_0x001a:
            r1 = r0
        L_0x001b:
            java.lang.Object r0 = r9.a     // Catch:{ Throwable -> 0x00b4 }
            java.lang.String r2 = "callBackWrapData"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x00b4 }
            r4 = 0
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch:{ Throwable -> 0x00b4 }
            r5.<init>()     // Catch:{ Throwable -> 0x00b4 }
            java.lang.String r6 = "e"
            r7 = 1
            r5.put(r6, r7)     // Catch:{ Throwable -> 0x00b4 }
            java.lang.String r6 = "d"
            r5.put(r6, r1)     // Catch:{ Throwable -> 0x00b4 }
            java.lang.String r6 = "u"
            r7 = 1
            r5.put(r6, r7)     // Catch:{ Throwable -> 0x00b4 }
            java.lang.String r5 = r5.toString()     // Catch:{ Throwable -> 0x00b4 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x00b4 }
            com.amap.api.col.sl.ft.a(r0, r2, r3)     // Catch:{ Throwable -> 0x00b4 }
        L_0x0042:
            java.lang.Object r0 = r9.a     // Catch:{ Throwable -> 0x00b9 }
            java.lang.String r2 = "getReportDate"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Throwable -> 0x00b9 }
            java.lang.Object r0 = com.amap.api.col.sl.ft.a(r0, r2, r3)     // Catch:{ Throwable -> 0x00b9 }
        L_0x004d:
            if (r0 == 0) goto L_0x0080
            byte[] r0 = (byte[]) r0     // Catch:{ Throwable -> 0x0093 }
            byte[] r0 = (byte[]) r0     // Catch:{ Throwable -> 0x0093 }
            com.amap.api.col.sl.fl r2 = r9.h     // Catch:{ Throwable -> 0x0093 }
            android.content.Context r3 = r9.l     // Catch:{ Throwable -> 0x0093 }
            java.lang.String r4 = "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"
            java.lang.String r0 = r2.a(r0, r3, r4)     // Catch:{ Throwable -> 0x0093 }
            boolean r2 = r9.j()     // Catch:{ Throwable -> 0x0093 }
            if (r2 == 0) goto L_0x0080
            java.lang.Object r2 = r9.a     // Catch:{ Throwable -> 0x00bc }
            java.lang.String r3 = "setUploadResult"
            r4 = 2
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ Throwable -> 0x00bc }
            r5 = 0
            r4[r5] = r0     // Catch:{ Throwable -> 0x00bc }
            r0 = 1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch:{ Throwable -> 0x00bc }
            r4[r0] = r1     // Catch:{ Throwable -> 0x00bc }
            java.lang.Object r0 = com.amap.api.col.sl.ft.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00bc }
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch:{ Throwable -> 0x00bc }
            int r0 = r0.intValue()     // Catch:{ Throwable -> 0x00bc }
            r9.f = r0     // Catch:{ Throwable -> 0x00bc }
        L_0x0080:
            r9.e()     // Catch:{ Throwable -> 0x0093 }
            boolean r0 = r9.j()     // Catch:{ Throwable -> 0x0093 }
            if (r0 == 0) goto L_0x00c1
            int r0 = r9.k()     // Catch:{ Throwable -> 0x0093 }
            if (r0 != 0) goto L_0x00c1
            r9.i()     // Catch:{ Throwable -> 0x0093 }
            goto L_0x0016
        L_0x0093:
            r0 = move-exception
            java.lang.String r1 = "CollectionManager"
            java.lang.String r2 = "up"
            com.amap.api.col.sl.fq.a(r0, r1, r2)
            goto L_0x0016
        L_0x009d:
            r1 = r0
            goto L_0x001b
        L_0x00a0:
            com.amap.api.col.sl.fe r0 = r9.i     // Catch:{ Throwable -> 0x0093 }
            if (r0 == 0) goto L_0x00ae
            com.amap.api.col.sl.fe r0 = r9.i     // Catch:{ Throwable -> 0x0093 }
            android.net.ConnectivityManager r2 = r9.j     // Catch:{ Throwable -> 0x0093 }
            boolean r0 = r0.a(r2)     // Catch:{ Throwable -> 0x0093 }
            if (r0 == 0) goto L_0x001b
        L_0x00ae:
            r0 = 2083520511(0x7c2fffff, float:3.6553767E36)
            r1 = r0
            goto L_0x001b
        L_0x00b4:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ Throwable -> 0x0093 }
            goto L_0x0042
        L_0x00b9:
            r0 = move-exception
            r0 = 0
            goto L_0x004d
        L_0x00bc:
            r0 = move-exception
            r0 = 3
            r9.f = r0     // Catch:{ Throwable -> 0x0093 }
            goto L_0x0080
        L_0x00c1:
            int r0 = r9.f     // Catch:{ Throwable -> 0x0093 }
            if (r0 < r8) goto L_0x0016
            r9.i()     // Catch:{ Throwable -> 0x0093 }
            goto L_0x0016
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fc.a(com.amap.api.col.sl.fc, int):void");
    }

    public final void a() {
        if (j()) {
            try {
                ft.a(this.a, "getColUpHist", new Object[0]);
            } catch (Throwable th) {
            }
        }
    }

    public final void b() {
        if (j() && g()) {
            try {
                ft.a(this.a, "destroy", new Object[0]);
            } catch (Throwable th) {
                fq.a(th, "CollectionManager", "stop3rdCM");
            }
            i();
        }
    }

    public final void c() {
        if (j() && g()) {
            cm.d().submit(new a());
            i();
        }
    }

    private boolean g() {
        try {
            if (!j()) {
                return false;
            }
            return h();
        } catch (Throwable th) {
            fq.a(th, "CollectionManager", "collStarted");
            return false;
        }
    }

    private boolean h() {
        try {
            return ((Boolean) ft.a(this.a, "isStarted", new Object[0])).booleanValue();
        } catch (Throwable th) {
            return false;
        }
    }

    /* access modifiers changed from: private */
    public void i() {
        if (this.e != null) {
            this.e.cancel();
            this.e = null;
        }
        if (this.d != null) {
            this.d.cancel();
            this.d.purge();
            this.d = null;
        }
    }

    /* access modifiers changed from: private */
    public boolean j() {
        return this.a != null;
    }

    public final void d() {
        if (!this.g || !j() || this.i == null || !this.i.a(this.j)) {
            return;
        }
        if (!fp.v()) {
            i();
            return;
        }
        if (this.e == null) {
            this.e = new TimerTask() {
                final /* synthetic */ int a = 2;

                public final void run() {
                    try {
                        Thread.currentThread().setPriority(1);
                        long b2 = fy.b() - fc.this.k;
                        if (fc.this.j() && fc.this.k() == 0) {
                            fc.this.i();
                        }
                        if (b2 >= FileTracerConfig.DEF_FLUSH_INTERVAL) {
                            if (fc.this.i == null || !fc.this.i.a(fc.this.j)) {
                                fc.this.i();
                            } else {
                                fc.a(fc.this, this.a);
                            }
                        }
                    } catch (Throwable th) {
                        fq.a(th, "CollectionManager", "timerTaskU run");
                    }
                }
            };
        }
        if (this.d == null) {
            this.d = new Timer("T-U", false);
            this.d.schedule(this.e, 2000, 2000);
        }
    }

    /* access modifiers changed from: private */
    public int k() {
        try {
            return ((Integer) ft.a(this.a, "getLeftUploadNum", new Object[0])).intValue();
        } catch (Throwable th) {
            return 0;
        }
    }

    public final void e() {
        if (j() && k() > 0) {
        }
    }

    public final void a(boolean z) {
        this.g = z;
    }

    public final void a(Context context, fl flVar, fe feVar, AMapLocationClientOption aMapLocationClientOption, ConnectivityManager connectivityManager) {
        if (fp.v()) {
            fq.a(aMapLocationClientOption);
            try {
                if (this.a == null) {
                    this.l = context;
                    this.h = flVar;
                    this.i = feVar;
                    this.j = connectivityManager;
                    if (!this.c) {
                        this.k = fy.b();
                        bz a2 = fq.a("Collection", "1.0.0");
                        this.c = fv.a(context, a2);
                        if (this.c) {
                            try {
                                this.a = cy.a(context, a2, this.b, null, new Class[]{Context.class}, new Object[]{context});
                            } catch (Throwable th) {
                            }
                        } else {
                            this.c = true;
                        }
                    }
                }
            } catch (Throwable th2) {
                fq.a(th2, "CollectionManager", "initCollection");
            }
            if (this.g && !g() && j()) {
                if (!fp.v()) {
                    b();
                } else if (!g()) {
                    try {
                        e();
                        try {
                            ft.a(this.a, "start", new Object[0]);
                        } catch (Throwable th3) {
                        }
                    } catch (Throwable th4) {
                        fq.a(th4, "CollectionManager", "start3rdCM");
                    }
                }
            }
        }
    }

    public final String f() {
        try {
            if (this.a != null) {
                return (String) ft.a(this.a, "getInnerString", "version");
            }
        } catch (Throwable th) {
            fq.a(th, "CollectionManager", "getCollVer");
        }
        return null;
    }
}
