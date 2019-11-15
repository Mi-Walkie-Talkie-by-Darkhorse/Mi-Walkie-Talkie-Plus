package com.amap.api.col.sl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.HandlerThread;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

@SuppressLint({"NewApi"})
/* compiled from: CgiManager */
public final class fb {
    int a = 0;
    ArrayList<fa> b = new ArrayList<>();
    TelephonyManager c = null;
    long d = 0;
    CellLocation e;
    boolean f = false;
    PhoneStateListener g = null;
    String h = null;
    boolean i = false;
    StringBuilder j = null;
    HandlerThread k = null;
    private Context l;
    private String m = null;
    private ArrayList<fa> n = new ArrayList<>();
    private int o = -113;
    private ez p = null;
    private Object q;
    private int r = 0;
    /* access modifiers changed from: private */
    public long s = 0;
    /* access modifiers changed from: private */
    public boolean t = false;
    /* access modifiers changed from: private */
    public Object u = new Object();

    /* compiled from: CgiManager */
    class a extends HandlerThread {
        public a(String str) {
            super(str);
        }

        /* access modifiers changed from: protected */
        public final void onLooperPrepared() {
            try {
                super.onLooperPrepared();
                synchronized (fb.this.u) {
                    if (!fb.this.t) {
                        fb fbVar = fb.this;
                        fbVar.g = new PhoneStateListener() {
                            public final void onCellLocationChanged(CellLocation cellLocation) {
                                try {
                                    if (fb.this.a(cellLocation)) {
                                        fb.this.e = cellLocation;
                                        fb.this.f = true;
                                        fb.this.s = fy.b();
                                    }
                                } catch (Throwable th) {
                                }
                            }

                            public final void onSignalStrengthChanged(int i) {
                                int i2 = -113;
                                try {
                                    switch (fb.this.a) {
                                        case 1:
                                            i2 = fy.a(i);
                                            break;
                                        case 2:
                                            i2 = fy.a(i);
                                            break;
                                    }
                                    fb.a(fb.this, i2);
                                } catch (Throwable th) {
                                }
                            }

                            public final void onSignalStrengthsChanged(SignalStrength signalStrength) {
                                if (signalStrength != null) {
                                    int i = -113;
                                    try {
                                        switch (fb.this.a) {
                                            case 1:
                                                i = fy.a(signalStrength.getGsmSignalStrength());
                                                break;
                                            case 2:
                                                i = signalStrength.getCdmaDbm();
                                                break;
                                        }
                                        fb.a(fb.this, i);
                                    } catch (Throwable th) {
                                    }
                                }
                            }

                            public final void onServiceStateChanged(ServiceState serviceState) {
                                try {
                                    switch (serviceState.getState()) {
                                        case 0:
                                            fb.this.a(false, false);
                                            return;
                                        case 1:
                                            fb.this.h();
                                            return;
                                        default:
                                            return;
                                    }
                                } catch (Throwable th) {
                                }
                            }
                        };
                        String str = "android.telephony.PhoneStateListener";
                        int i = 0;
                        if (fy.c() < 7) {
                            try {
                                i = ft.b(str, "LISTEN_SIGNAL_STRENGTH");
                            } catch (Throwable th) {
                            }
                        } else {
                            try {
                                i = ft.b(str, "LISTEN_SIGNAL_STRENGTHS");
                            } catch (Throwable th2) {
                            }
                        }
                        if (i == 0) {
                            try {
                                fbVar.c.listen(fbVar.g, 16);
                            } catch (Throwable th3) {
                            }
                        } else {
                            try {
                                fbVar.c.listen(fbVar.g, i | 16);
                            } catch (Throwable th4) {
                            }
                        }
                    }
                }
            } catch (Throwable th5) {
            }
        }

        public final void run() {
            try {
                super.run();
            } catch (Throwable th) {
            }
        }
    }

    static /* synthetic */ void a(fb fbVar, int i2) {
        if (i2 == -113) {
            fbVar.o = -113;
            return;
        }
        fbVar.o = i2;
        switch (fbVar.a) {
            case 1:
            case 2:
                if (fbVar.b != null && !fbVar.b.isEmpty()) {
                    try {
                        ((fa) fbVar.b.get(0)).j = fbVar.o;
                        return;
                    } catch (Throwable th) {
                        return;
                    }
                } else {
                    return;
                }
            default:
                return;
        }
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    public fb(android.content.Context r7) {
        /*
            r6 = this;
            r4 = 0
            r3 = 0
            r2 = 0
            r6.<init>()
            r6.a = r3
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r6.b = r0
            r6.m = r2
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r6.n = r0
            r0 = -113(0xffffffffffffff8f, float:NaN)
            r6.o = r0
            r6.c = r2
            r6.p = r2
            r6.d = r4
            r6.r = r3
            r6.s = r4
            r6.f = r3
            r6.g = r2
            r6.h = r2
            r6.i = r3
            r6.j = r2
            r6.k = r2
            r6.t = r3
            java.lang.Object r0 = new java.lang.Object
            r0.<init>()
            r6.u = r0
            r6.l = r7
            android.telephony.TelephonyManager r0 = r6.c
            if (r0 != 0) goto L_0x004e
            android.content.Context r0 = r6.l
            java.lang.String r1 = "phone"
            java.lang.Object r0 = com.amap.api.col.sl.fy.a(r0, r1)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            r6.c = r0
        L_0x004e:
            android.telephony.TelephonyManager r0 = r6.c
            if (r0 == 0) goto L_0x0087
            android.telephony.TelephonyManager r0 = r6.c     // Catch:{ SecurityException -> 0x008f, Throwable -> 0x0097 }
            android.telephony.CellLocation r0 = r0.getCellLocation()     // Catch:{ SecurityException -> 0x008f, Throwable -> 0x0097 }
            android.content.Context r1 = r6.l     // Catch:{ SecurityException -> 0x008f, Throwable -> 0x0097 }
            int r0 = r6.c(r0)     // Catch:{ SecurityException -> 0x008f, Throwable -> 0x0097 }
            r6.a = r0     // Catch:{ SecurityException -> 0x008f, Throwable -> 0x0097 }
        L_0x0060:
            int r0 = r6.q()     // Catch:{ Throwable -> 0x00af }
            r6.r = r0     // Catch:{ Throwable -> 0x00af }
            int r0 = r6.r     // Catch:{ Throwable -> 0x00af }
            switch(r0) {
                case 1: goto L_0x00a4;
                case 2: goto L_0x00b1;
                default: goto L_0x006b;
            }     // Catch:{ Throwable -> 0x00af }
        L_0x006b:
            android.content.Context r0 = r6.l     // Catch:{ Throwable -> 0x00af }
            java.lang.String r1 = "phone2"
            java.lang.Object r0 = com.amap.api.col.sl.fy.a(r0, r1)     // Catch:{ Throwable -> 0x00af }
            r6.q = r0     // Catch:{ Throwable -> 0x00af }
        L_0x0075:
            android.os.HandlerThread r0 = r6.k
            if (r0 != 0) goto L_0x0087
            com.amap.api.col.sl.fb$a r0 = new com.amap.api.col.sl.fb$a
            java.lang.String r1 = "listenerPhoneStateThread"
            r0.<init>(r1)
            r6.k = r0
            android.os.HandlerThread r0 = r6.k
            r0.start()
        L_0x0087:
            com.amap.api.col.sl.ez r0 = new com.amap.api.col.sl.ez
            r0.<init>()
            r6.p = r0
            return
        L_0x008f:
            r0 = move-exception
            java.lang.String r0 = r0.getMessage()
            r6.h = r0
            goto L_0x0060
        L_0x0097:
            r0 = move-exception
            r6.h = r2
            java.lang.String r1 = "CgiManager"
            java.lang.String r2 = "CgiManager"
            com.amap.api.col.sl.fq.a(r0, r1, r2)
            r6.a = r3
            goto L_0x0060
        L_0x00a4:
            android.content.Context r0 = r6.l     // Catch:{ Throwable -> 0x00af }
            java.lang.String r1 = "phone_msim"
            java.lang.Object r0 = com.amap.api.col.sl.fy.a(r0, r1)     // Catch:{ Throwable -> 0x00af }
            r6.q = r0     // Catch:{ Throwable -> 0x00af }
            goto L_0x0075
        L_0x00af:
            r0 = move-exception
            goto L_0x0075
        L_0x00b1:
            android.content.Context r0 = r6.l     // Catch:{ Throwable -> 0x00af }
            java.lang.String r1 = "phone2"
            java.lang.Object r0 = com.amap.api.col.sl.fy.a(r0, r1)     // Catch:{ Throwable -> 0x00af }
            r6.q = r0     // Catch:{ Throwable -> 0x00af }
            goto L_0x0075
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fb.<init>(android.content.Context):void");
    }

    public final ArrayList<fa> a() {
        return this.b;
    }

    public final ArrayList<fa> b() {
        return this.n;
    }

    public final fa c() {
        if (this.i) {
            return null;
        }
        ArrayList<fa> arrayList = this.b;
        if (arrayList.size() > 0) {
            return (fa) arrayList.get(0);
        }
        return null;
    }

    public final int d() {
        return this.a;
    }

    public final int e() {
        return this.a & 3;
    }

    private CellLocation m() {
        if (this.c != null) {
            try {
                CellLocation cellLocation = this.c.getCellLocation();
                this.h = null;
                if (b(cellLocation)) {
                    this.e = cellLocation;
                    return cellLocation;
                }
            } catch (SecurityException e2) {
                this.h = e2.getMessage();
            } catch (Throwable th) {
                this.h = null;
                fq.a(th, "CgiManager", "getCellLocation");
            }
        }
        return null;
    }

    public final TelephonyManager f() {
        return this.c;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:123:0x01e2, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:124:0x01e3, code lost:
        r1 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:189:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x00e8, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x00e9, code lost:
        r10.h = r0.getMessage();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x0140, code lost:
        if (r0 != false) goto L_0x0074;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:127:0x01ec A[ExcHandler: Throwable (th java.lang.Throwable), Splitter:B:37:0x0074] */
    /* JADX WARNING: Removed duplicated region for block: B:158:0x02ab A[SYNTHETIC, Splitter:B:158:0x02ab] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x008f A[SYNTHETIC, Splitter:B:49:0x008f] */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x00e8 A[ExcHandler: SecurityException (r0v1 'e' java.lang.SecurityException A[CUSTOM_DECLARE]), Splitter:B:98:0x0142] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(boolean r11, boolean r12) {
        /*
            r10 = this;
            r3 = 0
            r1 = 1
            r2 = 0
            android.content.Context r0 = r10.l     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            boolean r0 = com.amap.api.col.sl.fy.a(r0)     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            r10.i = r0     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            boolean r0 = r10.i     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r0 == 0) goto L_0x00bb
            r0 = r2
        L_0x0010:
            if (r0 != 0) goto L_0x001a
            java.util.ArrayList<com.amap.api.col.sl.fa> r0 = r10.b     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            boolean r0 = r0.isEmpty()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r0 == 0) goto L_0x020d
        L_0x001a:
            boolean r0 = r10.i     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r0 != 0) goto L_0x003e
            android.telephony.TelephonyManager r0 = r10.c     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r0 == 0) goto L_0x003e
            android.telephony.CellLocation r0 = r10.n()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            boolean r4 = r10.b(r0)     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r4 != 0) goto L_0x0030
            android.telephony.CellLocation r0 = r10.o()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
        L_0x0030:
            boolean r4 = r10.b(r0)     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r4 == 0) goto L_0x00cb
            r10.e = r0     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            long r4 = com.amap.api.col.sl.fy.b()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            r10.s = r4     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
        L_0x003e:
            boolean r0 = r10.f     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r0 != 0) goto L_0x0058
            android.telephony.CellLocation r0 = r10.e     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r0 != 0) goto L_0x0058
            if (r12 == 0) goto L_0x0058
            r0 = r2
        L_0x0049:
            r4 = 10
            java.lang.Thread.sleep(r4)     // Catch:{ InterruptedException -> 0x00f0 }
        L_0x004e:
            int r0 = r0 + 1
            android.telephony.CellLocation r4 = r10.e     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r4 != 0) goto L_0x0058
            r4 = 50
            if (r0 < r4) goto L_0x0049
        L_0x0058:
            r0 = 1
            r10.f = r0     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            android.telephony.CellLocation r0 = r10.e     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            boolean r0 = r10.b(r0)     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r0 == 0) goto L_0x0074
            android.telephony.TelephonyManager r0 = r10.c     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            java.lang.String[] r4 = com.amap.api.col.sl.fy.a(r0)     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            android.telephony.CellLocation r0 = r10.e     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            android.content.Context r5 = r10.l     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            int r0 = r10.c(r0)     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            switch(r0) {
                case 1: goto L_0x00ff;
                case 2: goto L_0x0106;
                default: goto L_0x0074;
            }
        L_0x0074:
            int r0 = com.amap.api.col.sl.fy.c()     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
            r1 = 18
            if (r0 < r1) goto L_0x01ed
            android.telephony.TelephonyManager r0 = r10.c     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
            if (r0 == 0) goto L_0x01ed
            java.util.ArrayList<com.amap.api.col.sl.fa> r4 = r10.n     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
            com.amap.api.col.sl.ez r5 = r10.p     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
            android.telephony.TelephonyManager r0 = r10.c     // Catch:{ SecurityException -> 0x01e2, Throwable -> 0x01ec }
            java.util.List r1 = r0.getAllCellInfo()     // Catch:{ SecurityException -> 0x01e2, Throwable -> 0x01ec }
            r0 = 0
            r10.h = r0     // Catch:{ SecurityException -> 0x02df, Throwable -> 0x01ec }
        L_0x008d:
            if (r1 == 0) goto L_0x02a9
            int r3 = r1.size()     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
            if (r3 == 0) goto L_0x02a9
            if (r4 == 0) goto L_0x009a
            r4.clear()     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
        L_0x009a:
            if (r2 >= r3) goto L_0x02a9
            java.lang.Object r0 = r1.get(r2)     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
            android.telephony.CellInfo r0 = (android.telephony.CellInfo) r0     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
            if (r0 == 0) goto L_0x00b8
            boolean r6 = r0.isRegistered()     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            boolean r7 = r0 instanceof android.telephony.CellInfoCdma     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            if (r7 == 0) goto L_0x0231
            android.telephony.CellInfoCdma r0 = (android.telephony.CellInfoCdma) r0     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            android.telephony.CellIdentityCdma r7 = r0.getCellIdentity()     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            boolean r7 = a(r7)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            if (r7 != 0) goto L_0x0216
        L_0x00b8:
            int r2 = r2 + 1
            goto L_0x009a
        L_0x00bb:
            long r4 = com.amap.api.col.sl.fy.b()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            long r6 = r10.d     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            long r4 = r4 - r6
            r6 = 10000(0x2710, double:4.9407E-320)
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 >= 0) goto L_0x02e2
            r0 = r2
            goto L_0x0010
        L_0x00cb:
            long r4 = com.amap.api.col.sl.fy.b()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            long r6 = r10.s     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            long r4 = r4 - r6
            r6 = 60000(0xea60, double:2.9644E-319)
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 <= 0) goto L_0x003e
            r0 = 0
            r10.e = r0     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            java.util.ArrayList<com.amap.api.col.sl.fa> r0 = r10.b     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            r0.clear()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            java.util.ArrayList<com.amap.api.col.sl.fa> r0 = r10.n     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            r0.clear()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            goto L_0x003e
        L_0x00e8:
            r0 = move-exception
            java.lang.String r0 = r0.getMessage()
            r10.h = r0
        L_0x00ef:
            return
        L_0x00f0:
            r4 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r4)     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            goto L_0x004e
        L_0x00f6:
            r0 = move-exception
            java.lang.String r1 = "CgiManager"
            java.lang.String r2 = "refresh"
            com.amap.api.col.sl.fq.a(r0, r1, r2)
            goto L_0x00ef
        L_0x00ff:
            android.telephony.CellLocation r0 = r10.e     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            r10.a(r0, r4, r11)     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            goto L_0x0074
        L_0x0106:
            android.telephony.CellLocation r5 = r10.e     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r5 == 0) goto L_0x0074
            java.util.ArrayList<com.amap.api.col.sl.fa> r0 = r10.b     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            r0.clear()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            int r0 = com.amap.api.col.sl.fy.c()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            r6 = 5
            if (r0 < r6) goto L_0x0074
            java.lang.Object r0 = r10.q     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            if (r0 == 0) goto L_0x0142
            java.lang.Class r0 = r5.getClass()     // Catch:{ Throwable -> 0x01de, SecurityException -> 0x00e8 }
            java.lang.String r6 = "mGsmCellLoc"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r6)     // Catch:{ Throwable -> 0x01de, SecurityException -> 0x00e8 }
            boolean r6 = r0.isAccessible()     // Catch:{ Throwable -> 0x01de, SecurityException -> 0x00e8 }
            if (r6 != 0) goto L_0x012e
            r6 = 1
            r0.setAccessible(r6)     // Catch:{ Throwable -> 0x01de, SecurityException -> 0x00e8 }
        L_0x012e:
            java.lang.Object r0 = r0.get(r5)     // Catch:{ Throwable -> 0x01de, SecurityException -> 0x00e8 }
            android.telephony.gsm.GsmCellLocation r0 = (android.telephony.gsm.GsmCellLocation) r0     // Catch:{ Throwable -> 0x01de, SecurityException -> 0x00e8 }
            if (r0 == 0) goto L_0x01df
            boolean r6 = r10.b(r0)     // Catch:{ Throwable -> 0x01de, SecurityException -> 0x00e8 }
            if (r6 == 0) goto L_0x01df
            r10.a(r0, r4, r11)     // Catch:{ Throwable -> 0x01de, SecurityException -> 0x00e8 }
            r0 = r1
        L_0x0140:
            if (r0 != 0) goto L_0x0074
        L_0x0142:
            boolean r0 = r10.b(r5)     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            if (r0 == 0) goto L_0x0074
            r0 = 2
            r10.a = r0     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            com.amap.api.col.sl.fa r0 = new com.amap.api.col.sl.fa     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r1 = 2
            r6 = 1
            r0.<init>(r1, r6)     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r1 = 0
            r1 = r4[r1]     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            int r1 = java.lang.Integer.parseInt(r1)     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r0.a = r1     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r1 = 1
            r1 = r4[r1]     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            int r1 = java.lang.Integer.parseInt(r1)     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r0.b = r1     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            java.lang.String r1 = "getSystemId"
            r4 = 0
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            int r1 = com.amap.api.col.sl.ft.b(r5, r1, r4)     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r0.g = r1     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            java.lang.String r1 = "getNetworkId"
            r4 = 0
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            int r1 = com.amap.api.col.sl.ft.b(r5, r1, r4)     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r0.h = r1     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            java.lang.String r1 = "getBaseStationId"
            r4 = 0
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            int r1 = com.amap.api.col.sl.ft.b(r5, r1, r4)     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r0.i = r1     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            int r1 = r10.o     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r0.j = r1     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            java.lang.String r1 = "getBaseStationLatitude"
            r4 = 0
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            int r1 = com.amap.api.col.sl.ft.b(r5, r1, r4)     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r0.e = r1     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            java.lang.String r1 = "getBaseStationLongitude"
            r4 = 0
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            int r1 = com.amap.api.col.sl.ft.b(r5, r1, r4)     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r0.f = r1     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            int r1 = r0.e     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            if (r1 < 0) goto L_0x01bf
            int r1 = r0.f     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            if (r1 < 0) goto L_0x01bf
            int r1 = r0.e     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r4 = 2147483647(0x7fffffff, float:NaN)
            if (r1 == r4) goto L_0x01bf
            int r1 = r0.f     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r4 = 2147483647(0x7fffffff, float:NaN)
            if (r1 == r4) goto L_0x01bf
            int r1 = r0.e     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            int r4 = r0.f     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            if (r1 != r4) goto L_0x01c5
            int r1 = r0.e     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            if (r1 <= 0) goto L_0x01c5
        L_0x01bf:
            r1 = 0
            r0.e = r1     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r1 = 0
            r0.f = r1     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
        L_0x01c5:
            java.util.ArrayList<com.amap.api.col.sl.fa> r1 = r10.b     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            boolean r1 = r1.contains(r0)     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            if (r1 != 0) goto L_0x0074
            java.util.ArrayList<com.amap.api.col.sl.fa> r1 = r10.b     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            r1.add(r0)     // Catch:{ Throwable -> 0x01d4, SecurityException -> 0x00e8 }
            goto L_0x0074
        L_0x01d4:
            r0 = move-exception
            java.lang.String r1 = "CgiManager"
            java.lang.String r4 = "hdlCdmaLocChange"
            com.amap.api.col.sl.fq.a(r0, r1, r4)     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            goto L_0x0074
        L_0x01de:
            r0 = move-exception
        L_0x01df:
            r0 = r2
            goto L_0x0140
        L_0x01e2:
            r0 = move-exception
            r1 = r3
        L_0x01e4:
            java.lang.String r0 = r0.getMessage()     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
            r10.h = r0     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
            goto L_0x008d
        L_0x01ec:
            r0 = move-exception
        L_0x01ed:
            android.telephony.TelephonyManager r0 = r10.c     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r0 == 0) goto L_0x0207
            android.telephony.TelephonyManager r0 = r10.c     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            java.lang.String r0 = r0.getNetworkOperator()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            r10.m = r0     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            java.lang.String r0 = r10.m     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r0 != 0) goto L_0x0207
            int r0 = r10.a     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            r0 = r0 | 8
            r10.a = r0     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
        L_0x0207:
            long r0 = com.amap.api.col.sl.fy.b()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            r10.d = r0     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
        L_0x020d:
            boolean r0 = r10.i     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r0 == 0) goto L_0x02bc
            r10.h()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            goto L_0x00ef
        L_0x0216:
            com.amap.api.col.sl.fa r0 = r10.a(r0, r6)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            r6 = 65535(0xffff, double:3.23786E-319)
            long r8 = r5.a(r0)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            long r6 = java.lang.Math.min(r6, r8)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            int r6 = (int) r6     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            short r6 = (short) r6     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            r0.l = r6     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            r4.add(r0)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            goto L_0x00b8
        L_0x022e:
            r0 = move-exception
            goto L_0x00b8
        L_0x0231:
            boolean r7 = r0 instanceof android.telephony.CellInfoGsm     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            if (r7 == 0) goto L_0x0259
            android.telephony.CellInfoGsm r0 = (android.telephony.CellInfoGsm) r0     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            android.telephony.CellIdentityGsm r7 = r0.getCellIdentity()     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            boolean r7 = a(r7)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            if (r7 == 0) goto L_0x00b8
            com.amap.api.col.sl.fa r0 = a(r0, r6)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            r6 = 65535(0xffff, double:3.23786E-319)
            long r8 = r5.a(r0)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            long r6 = java.lang.Math.min(r6, r8)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            int r6 = (int) r6     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            short r6 = (short) r6     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            r0.l = r6     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            r4.add(r0)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            goto L_0x00b8
        L_0x0259:
            boolean r7 = r0 instanceof android.telephony.CellInfoWcdma     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            if (r7 == 0) goto L_0x0281
            android.telephony.CellInfoWcdma r0 = (android.telephony.CellInfoWcdma) r0     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            android.telephony.CellIdentityWcdma r7 = r0.getCellIdentity()     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            boolean r7 = a(r7)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            if (r7 == 0) goto L_0x00b8
            com.amap.api.col.sl.fa r0 = a(r0, r6)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            r6 = 65535(0xffff, double:3.23786E-319)
            long r8 = r5.a(r0)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            long r6 = java.lang.Math.min(r6, r8)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            int r6 = (int) r6     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            short r6 = (short) r6     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            r0.l = r6     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            r4.add(r0)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            goto L_0x00b8
        L_0x0281:
            boolean r7 = r0 instanceof android.telephony.CellInfoLte     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            if (r7 == 0) goto L_0x00b8
            android.telephony.CellInfoLte r0 = (android.telephony.CellInfoLte) r0     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            android.telephony.CellIdentityLte r7 = r0.getCellIdentity()     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            boolean r7 = a(r7)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            if (r7 == 0) goto L_0x00b8
            com.amap.api.col.sl.fa r0 = a(r0, r6)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            r6 = 65535(0xffff, double:3.23786E-319)
            long r8 = r5.a(r0)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            long r6 = java.lang.Math.min(r6, r8)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            int r6 = (int) r6     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            short r6 = (short) r6     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            r0.l = r6     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            r4.add(r0)     // Catch:{ Throwable -> 0x022e, SecurityException -> 0x00e8 }
            goto L_0x00b8
        L_0x02a9:
            if (r4 == 0) goto L_0x01ed
            int r0 = r4.size()     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
            if (r0 <= 0) goto L_0x01ed
            int r0 = r10.a     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
            r0 = r0 | 4
            r10.a = r0     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
            r5.a(r4)     // Catch:{ Throwable -> 0x01ec, SecurityException -> 0x00e8 }
            goto L_0x01ed
        L_0x02bc:
            int r0 = r10.a     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            r0 = r0 & 3
            switch(r0) {
                case 1: goto L_0x02c5;
                case 2: goto L_0x02d2;
                default: goto L_0x02c3;
            }     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
        L_0x02c3:
            goto L_0x00ef
        L_0x02c5:
            java.util.ArrayList<com.amap.api.col.sl.fa> r0 = r10.b     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            boolean r0 = r0.isEmpty()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r0 == 0) goto L_0x00ef
            r0 = 0
            r10.a = r0     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            goto L_0x00ef
        L_0x02d2:
            java.util.ArrayList<com.amap.api.col.sl.fa> r0 = r10.b     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            boolean r0 = r0.isEmpty()     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            if (r0 == 0) goto L_0x00ef
            r0 = 0
            r10.a = r0     // Catch:{ SecurityException -> 0x00e8, Throwable -> 0x00f6 }
            goto L_0x00ef
        L_0x02df:
            r0 = move-exception
            goto L_0x01e4
        L_0x02e2:
            r0 = r1
            goto L_0x0010
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fb.a(boolean, boolean):void");
    }

    public final void g() {
        this.p.a();
        this.s = 0;
        synchronized (this.u) {
            this.t = true;
        }
        if (!(this.c == null || this.g == null)) {
            try {
                this.c.listen(this.g, 0);
            } catch (Throwable th) {
                fq.a(th, "CgiManager", "destroy");
            }
        }
        this.g = null;
        if (this.k != null) {
            this.k.quit();
            this.k = null;
        }
        this.o = -113;
        this.c = null;
        this.q = null;
    }

    /* access modifiers changed from: 0000 */
    public final boolean a(CellLocation cellLocation) {
        if (cellLocation == null) {
            return false;
        }
        boolean z = true;
        Context context = this.l;
        switch (c(cellLocation)) {
            case 1:
                try {
                    GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                    z = a(gsmCellLocation.getLac(), gsmCellLocation.getCid());
                    break;
                } catch (Throwable th) {
                    fq.a(th, "CgiManager", "cgiUseful Cgi.iGsmT");
                    break;
                }
            case 2:
                try {
                    if (ft.b(cellLocation, "getSystemId", new Object[0]) <= 0 || ft.b(cellLocation, "getNetworkId", new Object[0]) < 0 || ft.b(cellLocation, "getBaseStationId", new Object[0]) < 0) {
                        z = false;
                        break;
                    }
                } catch (Throwable th2) {
                    fq.a(th2, "CgiManager", "cgiUseful Cgi.iCdmaT");
                    break;
                }
        }
        return z;
    }

    private boolean b(CellLocation cellLocation) {
        boolean a2 = a(cellLocation);
        if (!a2) {
            this.a = 0;
        }
        return a2;
    }

    private static boolean a(int i2, int i3) {
        if (i2 == -1 || i2 == 0 || i2 > 65535 || i3 == -1 || i3 == 0 || i3 == 65535 || i3 >= 268435455) {
            return false;
        }
        return true;
    }

    private void a(CellLocation cellLocation, String[] strArr, boolean z) {
        if (cellLocation != null && this.c != null) {
            this.b.clear();
            if (b(cellLocation)) {
                this.a = 1;
                ArrayList<fa> arrayList = this.b;
                GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                fa faVar = new fa(1, true);
                faVar.a = Integer.parseInt(strArr[0]);
                faVar.b = Integer.parseInt(strArr[1]);
                faVar.c = gsmCellLocation.getLac();
                faVar.d = gsmCellLocation.getCid();
                faVar.j = this.o;
                arrayList.add(faVar);
                if (!z) {
                    List<NeighboringCellInfo> neighboringCellInfo = this.c.getNeighboringCellInfo();
                    if (neighboringCellInfo != null && !neighboringCellInfo.isEmpty()) {
                        for (NeighboringCellInfo neighboringCellInfo2 : neighboringCellInfo) {
                            if (neighboringCellInfo2 != null && a(neighboringCellInfo2.getLac(), neighboringCellInfo2.getCid())) {
                                fa a2 = a(neighboringCellInfo2, strArr);
                                if (a2 != null && !this.b.contains(a2)) {
                                    this.b.add(a2);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private CellLocation a(Object obj, String str, Object... objArr) {
        CellLocation cellLocation;
        if (obj == null) {
            return null;
        }
        try {
            Object a2 = ft.a(obj, str, objArr);
            if (a2 != null) {
                cellLocation = (CellLocation) a2;
            } else {
                cellLocation = null;
            }
            if (b(cellLocation)) {
                return cellLocation;
            }
        } catch (Throwable th) {
        }
        return null;
    }

    @SuppressLint({"NewApi"})
    private CellLocation n() {
        CellLocation cellLocation = null;
        TelephonyManager telephonyManager = this.c;
        if (telephonyManager == null) {
            return cellLocation;
        }
        CellLocation m2 = m();
        if (b(m2)) {
            return m2;
        }
        if (fy.c() >= 18) {
            try {
                cellLocation = a(telephonyManager.getAllCellInfo());
            } catch (SecurityException e2) {
                this.h = e2.getMessage();
            }
        }
        if (cellLocation != null) {
            return cellLocation;
        }
        CellLocation a2 = a((Object) telephonyManager, "getCellLocationExt", Integer.valueOf(1));
        if (a2 != null) {
            return a2;
        }
        CellLocation a3 = a((Object) telephonyManager, "getCellLocationGemini", Integer.valueOf(1));
        if (a3 != null) {
        }
        return a3;
    }

    private CellLocation o() {
        CellLocation cellLocation = null;
        Object obj = this.q;
        if (obj != null) {
            try {
                Class p2 = p();
                if (p2.isInstance(obj)) {
                    Object cast = p2.cast(obj);
                    String str = "getCellLocation";
                    cellLocation = a(cast, str, new Object[0]);
                    if (cellLocation == null) {
                        cellLocation = a(cast, str, Integer.valueOf(1));
                        if (cellLocation == null) {
                            cellLocation = a(cast, "getCellLocationGemini", Integer.valueOf(1));
                            if (cellLocation == null) {
                                cellLocation = a(cast, "getAllCellInfo", Integer.valueOf(1));
                                if (cellLocation != null) {
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                fq.a(th, "CgiManager", "getSim2Cgi");
            }
        }
        return cellLocation;
    }

    private Class<?> p() {
        String str;
        String str2 = null;
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        switch (this.r) {
            case 0:
                str = "android.telephony.TelephonyManager";
                break;
            case 1:
                str = "android.telephony.MSimTelephonyManager";
                break;
            case 2:
                str = "android.telephony.TelephonyManager2";
                break;
            default:
                str = str2;
                break;
        }
        try {
            return systemClassLoader.loadClass(str);
        } catch (Throwable th) {
            fq.a(th, "CgiManager", "getSim2TmClass");
            return str2;
        }
    }

    /* JADX WARNING: type inference failed for: r6v0 */
    /* JADX WARNING: type inference failed for: r0v3 */
    /* JADX WARNING: type inference failed for: r0v4 */
    /* JADX WARNING: type inference failed for: r6v1 */
    /* JADX WARNING: type inference failed for: r0v5 */
    /* JADX WARNING: type inference failed for: r6v2, types: [android.telephony.CellLocation] */
    /* JADX WARNING: type inference failed for: r0v6 */
    /* JADX WARNING: type inference failed for: r6v3, types: [android.telephony.CellLocation] */
    /* JADX WARNING: type inference failed for: r6v4 */
    /* JADX WARNING: type inference failed for: r0v7 */
    /* JADX WARNING: type inference failed for: r7v1 */
    /* JADX WARNING: type inference failed for: r6v5 */
    /* JADX WARNING: type inference failed for: r0v8 */
    /* JADX WARNING: type inference failed for: r0v10 */
    /* JADX WARNING: type inference failed for: r7v2 */
    /* JADX WARNING: type inference failed for: r0v14 */
    /* JADX WARNING: type inference failed for: r6v6 */
    /* JADX WARNING: type inference failed for: r6v7 */
    /* JADX WARNING: type inference failed for: r6v8 */
    /* JADX WARNING: type inference failed for: r6v9 */
    /* JADX WARNING: type inference failed for: r0v29 */
    /* JADX WARNING: type inference failed for: r0v30 */
    /* JADX WARNING: type inference failed for: r0v31 */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0094, code lost:
        r5 = r0;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0052  */
    /* JADX WARNING: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Unknown variable types count: 9 */
    @android.annotation.SuppressLint({"NewApi"})
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.telephony.CellLocation a(java.util.List<android.telephony.CellInfo> r9) {
        /*
            r8 = this;
            r6 = 0
            if (r9 == 0) goto L_0x0009
            boolean r0 = r9.isEmpty()
            if (r0 == 0) goto L_0x000a
        L_0x0009:
            return r6
        L_0x000a:
            r0 = 0
            r1 = r0
        L_0x000c:
            int r0 = r9.size()
            if (r1 >= r0) goto L_0x00b8
            java.lang.Object r0 = r9.get(r1)
            android.telephony.CellInfo r0 = (android.telephony.CellInfo) r0
            if (r0 == 0) goto L_0x002e
            boolean r2 = r0.isRegistered()     // Catch:{ Throwable -> 0x00b3 }
            boolean r3 = r0 instanceof android.telephony.CellInfoCdma     // Catch:{ Throwable -> 0x00b3 }
            if (r3 == 0) goto L_0x0054
            android.telephony.CellInfoCdma r0 = (android.telephony.CellInfoCdma) r0     // Catch:{ Throwable -> 0x00b3 }
            android.telephony.CellIdentityCdma r3 = r0.getCellIdentity()     // Catch:{ Throwable -> 0x00b3 }
            boolean r3 = a(r3)     // Catch:{ Throwable -> 0x00b3 }
            if (r3 != 0) goto L_0x0032
        L_0x002e:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x000c
        L_0x0032:
            com.amap.api.col.sl.fa r0 = r8.a(r0, r2)     // Catch:{ Throwable -> 0x00b3 }
            r5 = r0
        L_0x0037:
            if (r5 == 0) goto L_0x00b6
            int r0 = r5.k     // Catch:{ Throwable -> 0x00a6 }
            r1 = 2
            if (r0 != r1) goto L_0x0096
            android.telephony.cdma.CdmaCellLocation r0 = new android.telephony.cdma.CdmaCellLocation     // Catch:{ Throwable -> 0x00a6 }
            r0.<init>()     // Catch:{ Throwable -> 0x00a6 }
            int r1 = r5.i     // Catch:{ Throwable -> 0x00ac }
            int r2 = r5.e     // Catch:{ Throwable -> 0x00ac }
            int r3 = r5.f     // Catch:{ Throwable -> 0x00ac }
            int r4 = r5.g     // Catch:{ Throwable -> 0x00ac }
            int r5 = r5.h     // Catch:{ Throwable -> 0x00ac }
            r0.setCellLocationData(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x00ac }
        L_0x0050:
            if (r0 == 0) goto L_0x0009
            r6 = r0
            goto L_0x0009
        L_0x0054:
            boolean r3 = r0 instanceof android.telephony.CellInfoGsm     // Catch:{ Throwable -> 0x00b3 }
            if (r3 == 0) goto L_0x006a
            android.telephony.CellInfoGsm r0 = (android.telephony.CellInfoGsm) r0     // Catch:{ Throwable -> 0x00b3 }
            android.telephony.CellIdentityGsm r3 = r0.getCellIdentity()     // Catch:{ Throwable -> 0x00b3 }
            boolean r3 = a(r3)     // Catch:{ Throwable -> 0x00b3 }
            if (r3 == 0) goto L_0x002e
            com.amap.api.col.sl.fa r0 = a(r0, r2)     // Catch:{ Throwable -> 0x00b3 }
            r5 = r0
            goto L_0x0037
        L_0x006a:
            boolean r3 = r0 instanceof android.telephony.CellInfoWcdma     // Catch:{ Throwable -> 0x00b3 }
            if (r3 == 0) goto L_0x0080
            android.telephony.CellInfoWcdma r0 = (android.telephony.CellInfoWcdma) r0     // Catch:{ Throwable -> 0x00b3 }
            android.telephony.CellIdentityWcdma r3 = r0.getCellIdentity()     // Catch:{ Throwable -> 0x00b3 }
            boolean r3 = a(r3)     // Catch:{ Throwable -> 0x00b3 }
            if (r3 == 0) goto L_0x002e
            com.amap.api.col.sl.fa r0 = a(r0, r2)     // Catch:{ Throwable -> 0x00b3 }
            r5 = r0
            goto L_0x0037
        L_0x0080:
            boolean r3 = r0 instanceof android.telephony.CellInfoLte     // Catch:{ Throwable -> 0x00b3 }
            if (r3 == 0) goto L_0x00bb
            android.telephony.CellInfoLte r0 = (android.telephony.CellInfoLte) r0     // Catch:{ Throwable -> 0x00b3 }
            android.telephony.CellIdentityLte r3 = r0.getCellIdentity()     // Catch:{ Throwable -> 0x00b3 }
            boolean r3 = a(r3)     // Catch:{ Throwable -> 0x00b3 }
            if (r3 == 0) goto L_0x002e
            com.amap.api.col.sl.fa r0 = a(r0, r2)     // Catch:{ Throwable -> 0x00b3 }
        L_0x0094:
            r5 = r0
            goto L_0x0037
        L_0x0096:
            android.telephony.gsm.GsmCellLocation r0 = new android.telephony.gsm.GsmCellLocation     // Catch:{ Throwable -> 0x00a6 }
            r0.<init>()     // Catch:{ Throwable -> 0x00a6 }
            int r1 = r5.c     // Catch:{ Throwable -> 0x00b1 }
            int r2 = r5.d     // Catch:{ Throwable -> 0x00b1 }
            r0.setLacAndCid(r1, r2)     // Catch:{ Throwable -> 0x00b1 }
        L_0x00a2:
            r7 = r6
            r6 = r0
            r0 = r7
            goto L_0x0050
        L_0x00a6:
            r0 = move-exception
            r0 = r6
        L_0x00a8:
            r7 = r6
            r6 = r0
            r0 = r7
            goto L_0x0050
        L_0x00ac:
            r1 = move-exception
            r7 = r0
            r0 = r6
            r6 = r7
            goto L_0x00a8
        L_0x00b1:
            r1 = move-exception
            goto L_0x00a8
        L_0x00b3:
            r0 = move-exception
            goto L_0x002e
        L_0x00b6:
            r0 = r6
            goto L_0x00a2
        L_0x00b8:
            r5 = r6
            goto L_0x0037
        L_0x00bb:
            r0 = r6
            goto L_0x0094
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fb.a(java.util.List):android.telephony.CellLocation");
    }

    private static fa a(NeighboringCellInfo neighboringCellInfo, String[] strArr) {
        try {
            fa faVar = new fa(1, false);
            faVar.a = Integer.parseInt(strArr[0]);
            faVar.b = Integer.parseInt(strArr[1]);
            faVar.c = ft.b(neighboringCellInfo, "getLac", new Object[0]);
            faVar.d = neighboringCellInfo.getCid();
            faVar.j = fy.a(neighboringCellInfo.getRssi());
            return faVar;
        } catch (Throwable th) {
            fq.a(th, "CgiManager", "getGsm");
            return null;
        }
    }

    /* access modifiers changed from: 0000 */
    public final void h() {
        this.h = null;
        this.e = null;
        this.a = 0;
        this.b.clear();
        this.n.clear();
    }

    private int q() {
        try {
            Class.forName("android.telephony.MSimTelephonyManager");
            this.r = 1;
        } catch (Throwable th) {
        }
        if (this.r == 0) {
            try {
                Class.forName("android.telephony.TelephonyManager2");
                this.r = 2;
            } catch (Throwable th2) {
            }
        }
        return this.r;
    }

    public final String i() {
        return this.h;
    }

    public final String j() {
        return this.m;
    }

    @SuppressLint({"NewApi"})
    private static boolean a(CellIdentityCdma cellIdentityCdma) {
        if (cellIdentityCdma != null && cellIdentityCdma.getSystemId() > 0 && cellIdentityCdma.getNetworkId() >= 0 && cellIdentityCdma.getBasestationId() >= 0) {
            return true;
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    private static boolean a(CellIdentityGsm cellIdentityGsm) {
        if (cellIdentityGsm != null && a(cellIdentityGsm.getLac()) && b(cellIdentityGsm.getCid())) {
            return true;
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    private static boolean a(CellIdentityWcdma cellIdentityWcdma) {
        if (cellIdentityWcdma != null && a(cellIdentityWcdma.getLac()) && b(cellIdentityWcdma.getCid())) {
            return true;
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    private static boolean a(CellIdentityLte cellIdentityLte) {
        if (cellIdentityLte != null && a(cellIdentityLte.getTac()) && b(cellIdentityLte.getCi())) {
            return true;
        }
        return false;
    }

    private static boolean a(int i2) {
        if (i2 == -1 || i2 == 0 || i2 > 65535) {
            return false;
        }
        return true;
    }

    @SuppressLint({"NewApi"})
    private static fa a(CellInfoGsm cellInfoGsm, boolean z) {
        CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
        return a(1, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getLac(), cellIdentity.getCid(), cellInfoGsm.getCellSignalStrength().getDbm());
    }

    @SuppressLint({"NewApi"})
    private static fa a(CellInfoWcdma cellInfoWcdma, boolean z) {
        CellIdentityWcdma cellIdentity = cellInfoWcdma.getCellIdentity();
        return a(4, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getLac(), cellIdentity.getCid(), cellInfoWcdma.getCellSignalStrength().getDbm());
    }

    @SuppressLint({"NewApi"})
    private static fa a(CellInfoLte cellInfoLte, boolean z) {
        CellIdentityLte cellIdentity = cellInfoLte.getCellIdentity();
        return a(3, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getTac(), cellIdentity.getCi(), cellInfoLte.getCellSignalStrength().getDbm());
    }

    private static fa a(int i2, boolean z, int i3, int i4, int i5, int i6, int i7) {
        fa faVar = new fa(i2, z);
        faVar.a = i3;
        faVar.b = i4;
        faVar.c = i5;
        faVar.d = i6;
        faVar.j = i7;
        return faVar;
    }

    @SuppressLint({"NewApi"})
    private fa a(CellInfoCdma cellInfoCdma, boolean z) {
        int i2;
        int i3;
        CellIdentityCdma cellIdentity = cellInfoCdma.getCellIdentity();
        String[] a2 = fy.a(this.c);
        try {
            i2 = Integer.parseInt(a2[0]);
            try {
                i3 = Integer.parseInt(a2[1]);
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            i2 = 0;
            i3 = 0;
            fa a3 = a(2, z, i2, i3, 0, 0, cellInfoCdma.getCellSignalStrength().getCdmaDbm());
            a3.g = cellIdentity.getSystemId();
            a3.h = cellIdentity.getNetworkId();
            a3.i = cellIdentity.getBasestationId();
            a3.e = cellIdentity.getLatitude();
            a3.f = cellIdentity.getLongitude();
            return a3;
        }
        fa a32 = a(2, z, i2, i3, 0, 0, cellInfoCdma.getCellSignalStrength().getCdmaDbm());
        a32.g = cellIdentity.getSystemId();
        a32.h = cellIdentity.getNetworkId();
        a32.i = cellIdentity.getBasestationId();
        a32.e = cellIdentity.getLatitude();
        a32.f = cellIdentity.getLongitude();
        return a32;
    }

    private static boolean b(int i2) {
        if (i2 == -1 || i2 == 0 || i2 == 65535 || i2 >= 268435455) {
            return false;
        }
        return true;
    }

    public final String k() {
        if (this.i) {
            h();
        }
        if (this.j == null) {
            this.j = new StringBuilder();
        } else {
            this.j.delete(0, this.j.length());
        }
        switch (this.a & 3) {
            case 1:
                int i2 = 1;
                while (true) {
                    int i3 = i2;
                    if (i3 >= this.b.size()) {
                        break;
                    } else {
                        this.j.append("#").append(((fa) this.b.get(i3)).b);
                        this.j.append("|").append(((fa) this.b.get(i3)).c);
                        this.j.append("|").append(((fa) this.b.get(i3)).d);
                        i2 = i3 + 1;
                    }
                }
        }
        if (this.j.length() > 0) {
            this.j.deleteCharAt(0);
        }
        return this.j.toString();
    }

    private int c(CellLocation cellLocation) {
        if (this.i || cellLocation == null) {
            return 0;
        }
        if (cellLocation instanceof GsmCellLocation) {
            return 1;
        }
        try {
            Class.forName("android.telephony.cdma.CdmaCellLocation");
            return 2;
        } catch (Throwable th) {
            fq.a(th, "Utils", "getCellLocT");
            return 0;
        }
    }

    public final boolean l() {
        try {
            if (this.c != null && (!TextUtils.isEmpty(this.c.getSimOperator()) || !TextUtils.isEmpty(this.c.getSimCountryIso()))) {
                return true;
            }
        } catch (Throwable th) {
        }
        try {
            int a2 = fy.a(fy.c(this.l));
            if (a2 == 0 || a2 == 4 || a2 == 2 || a2 == 5 || a2 == 3) {
                return true;
            }
        } catch (Throwable th2) {
        }
        return false;
    }
}
