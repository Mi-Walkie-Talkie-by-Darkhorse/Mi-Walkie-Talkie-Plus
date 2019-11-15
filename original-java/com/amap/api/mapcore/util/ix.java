package com.amap.api.mapcore.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.HandlerThread;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
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
import com.ifengyu.im.account.UserInfo;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.util.ArrayList;
import java.util.List;

@SuppressLint({"NewApi"})
/* compiled from: CgiManager */
public final class ix {
    int a = 0;
    ArrayList<iw> b = new ArrayList<>();
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
    private ArrayList<iw> n = new ArrayList<>();
    private int o = -113;
    private iv p = null;
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
                synchronized (ix.this.u) {
                    if (!ix.this.t) {
                        ix.this.k();
                    }
                }
            } catch (Throwable th) {
            }
        }

        public final void run() {
            try {
                super.run();
            } catch (Throwable th) {
            }
        }
    }

    public ix(Context context) {
        this.l = context;
        if (this.c == null) {
            this.c = (TelephonyManager) jg.a(this.l, UserInfo.TYPE_PHONE);
        }
        j();
        this.p = new iv();
    }

    private CellLocation a(Object obj, String str, Object... objArr) {
        if (obj == null) {
            return null;
        }
        try {
            Object a2 = je.a(obj, str, objArr);
            CellLocation cellLocation = a2 != null ? (CellLocation) a2 : null;
            if (b(cellLocation)) {
                return cellLocation;
            }
        } catch (Throwable th) {
        }
        return null;
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
            if (r1 >= r0) goto L_0x00ba
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
            com.amap.api.mapcore.util.iw r0 = r8.a(r0, r2)     // Catch:{ Throwable -> 0x00b3 }
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
            com.amap.api.mapcore.util.iw r0 = a(r0, r2)     // Catch:{ Throwable -> 0x00b3 }
            r5 = r0
            goto L_0x0037
        L_0x006a:
            boolean r3 = r0 instanceof android.telephony.CellInfoWcdma     // Catch:{ Throwable -> 0x00b3 }
            if (r3 == 0) goto L_0x0080
            android.telephony.CellInfoWcdma r0 = (android.telephony.CellInfoWcdma) r0     // Catch:{ Throwable -> 0x00b3 }
            android.telephony.CellIdentityWcdma r3 = r0.getCellIdentity()     // Catch:{ Throwable -> 0x00b3 }
            boolean r3 = a(r3)     // Catch:{ Throwable -> 0x00b3 }
            if (r3 == 0) goto L_0x002e
            com.amap.api.mapcore.util.iw r0 = a(r0, r2)     // Catch:{ Throwable -> 0x00b3 }
            r5 = r0
            goto L_0x0037
        L_0x0080:
            boolean r3 = r0 instanceof android.telephony.CellInfoLte     // Catch:{ Throwable -> 0x00b3 }
            if (r3 == 0) goto L_0x00b8
            android.telephony.CellInfoLte r0 = (android.telephony.CellInfoLte) r0     // Catch:{ Throwable -> 0x00b3 }
            android.telephony.CellIdentityLte r3 = r0.getCellIdentity()     // Catch:{ Throwable -> 0x00b3 }
            boolean r3 = a(r3)     // Catch:{ Throwable -> 0x00b3 }
            if (r3 == 0) goto L_0x002e
            com.amap.api.mapcore.util.iw r0 = a(r0, r2)     // Catch:{ Throwable -> 0x00b3 }
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
            r0 = r6
            goto L_0x0094
        L_0x00ba:
            r5 = r6
            goto L_0x0037
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ix.a(java.util.List):android.telephony.CellLocation");
    }

    private static iw a(int i2, boolean z, int i3, int i4, int i5, int i6, int i7) {
        iw iwVar = new iw(i2, z);
        iwVar.a = i3;
        iwVar.b = i4;
        iwVar.c = i5;
        iwVar.d = i6;
        iwVar.j = i7;
        return iwVar;
    }

    @SuppressLint({"NewApi"})
    private iw a(CellInfoCdma cellInfoCdma, boolean z) {
        int i2;
        int i3;
        CellIdentityCdma cellIdentity = cellInfoCdma.getCellIdentity();
        String[] a2 = jg.a(this.c);
        try {
            i2 = Integer.parseInt(a2[0]);
            try {
                i3 = Integer.parseInt(a2[1]);
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            i2 = 0;
            i3 = 0;
            iw a3 = a(2, z, i2, i3, 0, 0, cellInfoCdma.getCellSignalStrength().getCdmaDbm());
            a3.g = cellIdentity.getSystemId();
            a3.h = cellIdentity.getNetworkId();
            a3.i = cellIdentity.getBasestationId();
            a3.e = cellIdentity.getLatitude();
            a3.f = cellIdentity.getLongitude();
            return a3;
        }
        iw a32 = a(2, z, i2, i3, 0, 0, cellInfoCdma.getCellSignalStrength().getCdmaDbm());
        a32.g = cellIdentity.getSystemId();
        a32.h = cellIdentity.getNetworkId();
        a32.i = cellIdentity.getBasestationId();
        a32.e = cellIdentity.getLatitude();
        a32.f = cellIdentity.getLongitude();
        return a32;
    }

    @SuppressLint({"NewApi"})
    private static iw a(CellInfoGsm cellInfoGsm, boolean z) {
        CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
        return a(1, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getLac(), cellIdentity.getCid(), cellInfoGsm.getCellSignalStrength().getDbm());
    }

    @SuppressLint({"NewApi"})
    private static iw a(CellInfoLte cellInfoLte, boolean z) {
        CellIdentityLte cellIdentity = cellInfoLte.getCellIdentity();
        return a(3, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getTac(), cellIdentity.getCi(), cellInfoLte.getCellSignalStrength().getDbm());
    }

    @SuppressLint({"NewApi"})
    private static iw a(CellInfoWcdma cellInfoWcdma, boolean z) {
        CellIdentityWcdma cellIdentity = cellInfoWcdma.getCellIdentity();
        return a(4, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getLac(), cellIdentity.getCid(), cellInfoWcdma.getCellSignalStrength().getDbm());
    }

    private static iw a(NeighboringCellInfo neighboringCellInfo, String[] strArr) {
        try {
            iw iwVar = new iw(1, false);
            iwVar.a = Integer.parseInt(strArr[0]);
            iwVar.b = Integer.parseInt(strArr[1]);
            iwVar.c = je.b(neighboringCellInfo, "getLac", new Object[0]);
            iwVar.d = neighboringCellInfo.getCid();
            iwVar.j = jg.a(neighboringCellInfo.getRssi());
            return iwVar;
        } catch (Throwable th) {
            jd.a(th, "CgiManager", "getGsm");
            return null;
        }
    }

    private void a(CellLocation cellLocation, String[] strArr) {
        if (cellLocation != null && this.c != null) {
            this.b.clear();
            if (b(cellLocation)) {
                this.a = 1;
                this.b.add(c(cellLocation, strArr));
                List<NeighboringCellInfo> neighboringCellInfo = this.c.getNeighboringCellInfo();
                if (neighboringCellInfo != null && !neighboringCellInfo.isEmpty()) {
                    for (NeighboringCellInfo neighboringCellInfo2 : neighboringCellInfo) {
                        if (neighboringCellInfo2 != null && a(neighboringCellInfo2.getLac(), neighboringCellInfo2.getCid())) {
                            iw a2 = a(neighboringCellInfo2, strArr);
                            if (a2 != null && !this.b.contains(a2)) {
                                this.b.add(a2);
                            }
                        }
                    }
                }
            }
        }
    }

    public static boolean a(int i2) {
        return i2 > 0 && i2 <= 15;
    }

    private static boolean a(int i2, int i3) {
        return (i2 == -1 || i2 == 0 || i2 > 65535 || i3 == -1 || i3 == 0 || i3 == 65535 || i3 >= 268435455) ? false : true;
    }

    @SuppressLint({"NewApi"})
    private static boolean a(CellIdentityCdma cellIdentityCdma) {
        return cellIdentityCdma != null && cellIdentityCdma.getSystemId() > 0 && cellIdentityCdma.getNetworkId() >= 0 && cellIdentityCdma.getBasestationId() >= 0;
    }

    @SuppressLint({"NewApi"})
    private static boolean a(CellIdentityGsm cellIdentityGsm) {
        return cellIdentityGsm != null && c(cellIdentityGsm.getLac()) && d(cellIdentityGsm.getCid());
    }

    @SuppressLint({"NewApi"})
    private static boolean a(CellIdentityLte cellIdentityLte) {
        return cellIdentityLte != null && c(cellIdentityLte.getTac()) && d(cellIdentityLte.getCi());
    }

    @SuppressLint({"NewApi"})
    private static boolean a(CellIdentityWcdma cellIdentityWcdma) {
        return cellIdentityWcdma != null && c(cellIdentityWcdma.getLac()) && d(cellIdentityWcdma.getCid());
    }

    /* access modifiers changed from: private */
    public void b(int i2) {
        if (i2 == -113) {
            this.o = -113;
            return;
        }
        this.o = i2;
        switch (this.a) {
            case 1:
            case 2:
                if (this.b != null && !this.b.isEmpty()) {
                    try {
                        ((iw) this.b.get(0)).j = this.o;
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

    /* JADX WARNING: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b(android.telephony.CellLocation r6, java.lang.String[] r7) {
        /*
            r5 = this;
            r4 = 2147483647(0x7fffffff, float:NaN)
            r1 = 1
            r2 = 0
            if (r6 != 0) goto L_0x0008
        L_0x0007:
            return
        L_0x0008:
            java.util.ArrayList<com.amap.api.mapcore.util.iw> r0 = r5.b
            r0.clear()
            int r0 = com.amap.api.mapcore.util.jg.c()
            r3 = 5
            if (r0 < r3) goto L_0x0007
            java.lang.Object r0 = r5.q     // Catch:{ Throwable -> 0x00cc }
            if (r0 == 0) goto L_0x0040
            java.lang.Class r0 = r6.getClass()     // Catch:{ Throwable -> 0x00d6 }
            java.lang.String r3 = "mGsmCellLoc"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r3)     // Catch:{ Throwable -> 0x00d6 }
            boolean r3 = r0.isAccessible()     // Catch:{ Throwable -> 0x00d6 }
            if (r3 != 0) goto L_0x002c
            r3 = 1
            r0.setAccessible(r3)     // Catch:{ Throwable -> 0x00d6 }
        L_0x002c:
            java.lang.Object r0 = r0.get(r6)     // Catch:{ Throwable -> 0x00d6 }
            android.telephony.gsm.GsmCellLocation r0 = (android.telephony.gsm.GsmCellLocation) r0     // Catch:{ Throwable -> 0x00d6 }
            if (r0 == 0) goto L_0x00d7
            boolean r3 = r5.b(r0)     // Catch:{ Throwable -> 0x00d6 }
            if (r3 == 0) goto L_0x00d7
            r5.a(r0, r7)     // Catch:{ Throwable -> 0x00d6 }
            r0 = r1
        L_0x003e:
            if (r0 != 0) goto L_0x0007
        L_0x0040:
            boolean r0 = r5.b(r6)     // Catch:{ Throwable -> 0x00cc }
            if (r0 == 0) goto L_0x0007
            r0 = 2
            r5.a = r0     // Catch:{ Throwable -> 0x00cc }
            com.amap.api.mapcore.util.iw r0 = new com.amap.api.mapcore.util.iw     // Catch:{ Throwable -> 0x00cc }
            r1 = 2
            r2 = 1
            r0.<init>(r1, r2)     // Catch:{ Throwable -> 0x00cc }
            r1 = 0
            r1 = r7[r1]     // Catch:{ Throwable -> 0x00cc }
            int r1 = java.lang.Integer.parseInt(r1)     // Catch:{ Throwable -> 0x00cc }
            r0.a = r1     // Catch:{ Throwable -> 0x00cc }
            r1 = 1
            r1 = r7[r1]     // Catch:{ Throwable -> 0x00cc }
            int r1 = java.lang.Integer.parseInt(r1)     // Catch:{ Throwable -> 0x00cc }
            r0.b = r1     // Catch:{ Throwable -> 0x00cc }
            java.lang.String r1 = "getSystemId"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x00cc }
            int r1 = com.amap.api.mapcore.util.je.b(r6, r1, r2)     // Catch:{ Throwable -> 0x00cc }
            r0.g = r1     // Catch:{ Throwable -> 0x00cc }
            java.lang.String r1 = "getNetworkId"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x00cc }
            int r1 = com.amap.api.mapcore.util.je.b(r6, r1, r2)     // Catch:{ Throwable -> 0x00cc }
            r0.h = r1     // Catch:{ Throwable -> 0x00cc }
            java.lang.String r1 = "getBaseStationId"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x00cc }
            int r1 = com.amap.api.mapcore.util.je.b(r6, r1, r2)     // Catch:{ Throwable -> 0x00cc }
            r0.i = r1     // Catch:{ Throwable -> 0x00cc }
            int r1 = r5.o     // Catch:{ Throwable -> 0x00cc }
            r0.j = r1     // Catch:{ Throwable -> 0x00cc }
            java.lang.String r1 = "getBaseStationLatitude"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x00cc }
            int r1 = com.amap.api.mapcore.util.je.b(r6, r1, r2)     // Catch:{ Throwable -> 0x00cc }
            r0.e = r1     // Catch:{ Throwable -> 0x00cc }
            java.lang.String r1 = "getBaseStationLongitude"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x00cc }
            int r1 = com.amap.api.mapcore.util.je.b(r6, r1, r2)     // Catch:{ Throwable -> 0x00cc }
            r0.f = r1     // Catch:{ Throwable -> 0x00cc }
            int r1 = r0.e     // Catch:{ Throwable -> 0x00cc }
            if (r1 < 0) goto L_0x00b7
            int r1 = r0.f     // Catch:{ Throwable -> 0x00cc }
            if (r1 < 0) goto L_0x00b7
            int r1 = r0.e     // Catch:{ Throwable -> 0x00cc }
            if (r1 == r4) goto L_0x00b7
            int r1 = r0.f     // Catch:{ Throwable -> 0x00cc }
            if (r1 == r4) goto L_0x00b7
            int r1 = r0.e     // Catch:{ Throwable -> 0x00cc }
            int r2 = r0.f     // Catch:{ Throwable -> 0x00cc }
            if (r1 != r2) goto L_0x00bd
            int r1 = r0.e     // Catch:{ Throwable -> 0x00cc }
            if (r1 <= 0) goto L_0x00bd
        L_0x00b7:
            r1 = 0
            r0.e = r1     // Catch:{ Throwable -> 0x00cc }
            r1 = 0
            r0.f = r1     // Catch:{ Throwable -> 0x00cc }
        L_0x00bd:
            java.util.ArrayList<com.amap.api.mapcore.util.iw> r1 = r5.b     // Catch:{ Throwable -> 0x00cc }
            boolean r1 = r1.contains(r0)     // Catch:{ Throwable -> 0x00cc }
            if (r1 != 0) goto L_0x0007
            java.util.ArrayList<com.amap.api.mapcore.util.iw> r1 = r5.b     // Catch:{ Throwable -> 0x00cc }
            r1.add(r0)     // Catch:{ Throwable -> 0x00cc }
            goto L_0x0007
        L_0x00cc:
            r0 = move-exception
            java.lang.String r1 = "CgiManager"
            java.lang.String r2 = "hdlCdmaLocChange"
            com.amap.api.mapcore.util.jd.a(r0, r1, r2)
            goto L_0x0007
        L_0x00d6:
            r0 = move-exception
        L_0x00d7:
            r0 = r2
            goto L_0x003e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ix.b(android.telephony.CellLocation, java.lang.String[]):void");
    }

    private boolean b(CellLocation cellLocation) {
        boolean a2 = a(cellLocation);
        if (!a2) {
            this.a = 0;
        }
        return a2;
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
            jd.a(th, "Utils", "getCellLocT");
            return 0;
        }
    }

    private iw c(CellLocation cellLocation, String[] strArr) {
        GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
        iw iwVar = new iw(1, true);
        iwVar.a = Integer.parseInt(strArr[0]);
        iwVar.b = Integer.parseInt(strArr[1]);
        iwVar.c = gsmCellLocation.getLac();
        iwVar.d = gsmCellLocation.getCid();
        iwVar.j = this.o;
        return iwVar;
    }

    private static boolean c(int i2) {
        return (i2 == -1 || i2 == 0 || i2 > 65535) ? false : true;
    }

    private static boolean d(int i2) {
        return (i2 == -1 || i2 == 0 || i2 == 65535 || i2 >= 268435455) ? false : true;
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void j() {
        /*
            r3 = this;
            android.telephony.TelephonyManager r0 = r3.c
            if (r0 != 0) goto L_0x0005
        L_0x0004:
            return
        L_0x0005:
            android.telephony.TelephonyManager r0 = r3.c     // Catch:{ SecurityException -> 0x003b, Throwable -> 0x0043 }
            android.telephony.CellLocation r0 = r0.getCellLocation()     // Catch:{ SecurityException -> 0x003b, Throwable -> 0x0043 }
            android.content.Context r1 = r3.l     // Catch:{ SecurityException -> 0x003b, Throwable -> 0x0043 }
            int r0 = r3.c(r0)     // Catch:{ SecurityException -> 0x003b, Throwable -> 0x0043 }
            r3.a = r0     // Catch:{ SecurityException -> 0x003b, Throwable -> 0x0043 }
        L_0x0013:
            int r0 = r3.u()     // Catch:{ Throwable -> 0x005d }
            r3.r = r0     // Catch:{ Throwable -> 0x005d }
            int r0 = r3.r     // Catch:{ Throwable -> 0x005d }
            switch(r0) {
                case 1: goto L_0x0052;
                case 2: goto L_0x005f;
                default: goto L_0x001e;
            }     // Catch:{ Throwable -> 0x005d }
        L_0x001e:
            android.content.Context r0 = r3.l     // Catch:{ Throwable -> 0x005d }
            java.lang.String r1 = "phone2"
            java.lang.Object r0 = com.amap.api.mapcore.util.jg.a(r0, r1)     // Catch:{ Throwable -> 0x005d }
            r3.q = r0     // Catch:{ Throwable -> 0x005d }
        L_0x0028:
            android.os.HandlerThread r0 = r3.k
            if (r0 != 0) goto L_0x0004
            com.amap.api.mapcore.util.ix$a r0 = new com.amap.api.mapcore.util.ix$a
            java.lang.String r1 = "listenerPhoneStateThread"
            r0.<init>(r1)
            r3.k = r0
            android.os.HandlerThread r0 = r3.k
            r0.start()
            goto L_0x0004
        L_0x003b:
            r0 = move-exception
            java.lang.String r0 = r0.getMessage()
            r3.h = r0
            goto L_0x0013
        L_0x0043:
            r0 = move-exception
            r1 = 0
            r3.h = r1
            java.lang.String r1 = "CgiManager"
            java.lang.String r2 = "CgiManager"
            com.amap.api.mapcore.util.jd.a(r0, r1, r2)
            r0 = 0
            r3.a = r0
            goto L_0x0013
        L_0x0052:
            android.content.Context r0 = r3.l     // Catch:{ Throwable -> 0x005d }
            java.lang.String r1 = "phone_msim"
            java.lang.Object r0 = com.amap.api.mapcore.util.jg.a(r0, r1)     // Catch:{ Throwable -> 0x005d }
            r3.q = r0     // Catch:{ Throwable -> 0x005d }
            goto L_0x0028
        L_0x005d:
            r0 = move-exception
            goto L_0x0028
        L_0x005f:
            android.content.Context r0 = r3.l     // Catch:{ Throwable -> 0x005d }
            java.lang.String r1 = "phone2"
            java.lang.Object r0 = com.amap.api.mapcore.util.jg.a(r0, r1)     // Catch:{ Throwable -> 0x005d }
            r3.q = r0     // Catch:{ Throwable -> 0x005d }
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ix.j():void");
    }

    /* access modifiers changed from: private */
    public void k() {
        this.g = new PhoneStateListener() {
            public final void onCellLocationChanged(CellLocation cellLocation) {
                try {
                    if (ix.this.a(cellLocation)) {
                        ix.this.e = cellLocation;
                        ix.this.f = true;
                        ix.this.s = jg.b();
                    }
                } catch (Throwable th) {
                }
            }

            public final void onServiceStateChanged(ServiceState serviceState) {
                try {
                    switch (serviceState.getState()) {
                        case 0:
                            ix.this.f();
                            return;
                        case 1:
                            ix.this.h();
                            return;
                        default:
                            return;
                    }
                } catch (Throwable th) {
                }
            }

            public final void onSignalStrengthChanged(int i) {
                int i2 = -113;
                try {
                    switch (ix.this.a) {
                        case 1:
                            i2 = jg.a(i);
                            break;
                        case 2:
                            i2 = jg.a(i);
                            break;
                    }
                    ix.this.b(i2);
                } catch (Throwable th) {
                }
            }

            public final void onSignalStrengthsChanged(SignalStrength signalStrength) {
                if (signalStrength != null) {
                    int i = -113;
                    try {
                        switch (ix.this.a) {
                            case 1:
                                i = jg.a(signalStrength.getGsmSignalStrength());
                                break;
                            case 2:
                                i = signalStrength.getCdmaDbm();
                                break;
                        }
                        ix.this.b(i);
                    } catch (Throwable th) {
                    }
                }
            }
        };
        String str = "android.telephony.PhoneStateListener";
        int i2 = 0;
        if (jg.c() < 7) {
            try {
                i2 = je.b(str, "LISTEN_SIGNAL_STRENGTH");
            } catch (Throwable th) {
            }
        } else {
            try {
                i2 = je.b(str, "LISTEN_SIGNAL_STRENGTHS");
            } catch (Throwable th2) {
            }
        }
        if (i2 == 0) {
            try {
                this.c.listen(this.g, 16);
            } catch (Throwable th3) {
            }
        } else {
            try {
                this.c.listen(this.g, i2 | 16);
            } catch (Throwable th4) {
            }
        }
    }

    private CellLocation l() {
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
                jd.a(th, "CgiManager", "getCellLocation");
            }
        }
        return null;
    }

    private boolean m() {
        return !this.i && jg.b() - this.d >= FileTracerConfig.DEF_FLUSH_INTERVAL;
    }

    private void n() {
        h();
    }

    private void o() {
        switch (d()) {
            case 1:
                if (this.b.isEmpty()) {
                    this.a = 0;
                    return;
                }
                return;
            case 2:
                if (this.b.isEmpty()) {
                    this.a = 0;
                    return;
                }
                return;
            default:
                return;
        }
    }

    private void p() {
        if (!this.i && this.c != null) {
            CellLocation q2 = q();
            if (!b(q2)) {
                q2 = r();
            }
            if (b(q2)) {
                this.e = q2;
                this.s = jg.b();
            } else if (jg.b() - this.s > 60000) {
                this.e = null;
                this.b.clear();
                this.n.clear();
            }
        }
        if (!this.f) {
            CellLocation cellLocation = this.e;
        }
        this.f = true;
        if (b(this.e)) {
            String[] a2 = jg.a(this.c);
            CellLocation cellLocation2 = this.e;
            Context context = this.l;
            switch (c(cellLocation2)) {
                case 1:
                    a(this.e, a2);
                    break;
                case 2:
                    b(this.e, a2);
                    break;
            }
        }
        try {
            if (jg.c() >= 18) {
                t();
            }
        } catch (Throwable th) {
        }
        if (this.c != null) {
            this.m = this.c.getNetworkOperator();
            if (!TextUtils.isEmpty(this.m)) {
                this.a |= 8;
            }
        }
    }

    @SuppressLint({"NewApi"})
    private CellLocation q() {
        CellLocation cellLocation = null;
        TelephonyManager telephonyManager = this.c;
        if (telephonyManager == null) {
            return cellLocation;
        }
        CellLocation l2 = l();
        if (b(l2)) {
            return l2;
        }
        if (jg.c() >= 18) {
            try {
                cellLocation = a(telephonyManager.getAllCellInfo());
            } catch (SecurityException e2) {
                this.h = e2.getMessage();
            }
        }
        if (cellLocation != null) {
            return cellLocation;
        }
        CellLocation a2 = a(telephonyManager, "getCellLocationExt", Integer.valueOf(1));
        if (a2 != null) {
            return a2;
        }
        CellLocation a3 = a(telephonyManager, "getCellLocationGemini", Integer.valueOf(1));
        if (a3 != null) {
        }
        return a3;
    }

    private CellLocation r() {
        CellLocation cellLocation = null;
        Object obj = this.q;
        if (obj != null) {
            try {
                Class s2 = s();
                if (s2.isInstance(obj)) {
                    Object cast = s2.cast(obj);
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
                jd.a(th, "CgiManager", "getSim2Cgi");
            }
        }
        return cellLocation;
    }

    private Class<?> s() {
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
            jd.a(th, "CgiManager", "getSim2TmClass");
            return str2;
        }
    }

    @SuppressLint({"NewApi"})
    private void t() {
        List list;
        List list2 = null;
        if (this.c != null) {
            ArrayList<iw> arrayList = this.n;
            iv ivVar = this.p;
            try {
                list2 = this.c.getAllCellInfo();
                this.h = null;
                list = list2;
            } catch (SecurityException e2) {
                this.h = e2.getMessage();
                list = list2;
            }
            if (list != null) {
                int size = list.size();
                if (size != 0) {
                    if (arrayList != null) {
                        arrayList.clear();
                    }
                    for (int i2 = 0; i2 < size; i2++) {
                        CellInfo cellInfo = (CellInfo) list.get(i2);
                        if (cellInfo != null) {
                            try {
                                boolean isRegistered = cellInfo.isRegistered();
                                if (cellInfo instanceof CellInfoCdma) {
                                    CellInfoCdma cellInfoCdma = (CellInfoCdma) cellInfo;
                                    if (a(cellInfoCdma.getCellIdentity())) {
                                        iw a2 = a(cellInfoCdma, isRegistered);
                                        a2.l = (short) ((int) Math.min(65535, ivVar.a(a2)));
                                        arrayList.add(a2);
                                    }
                                } else if (cellInfo instanceof CellInfoGsm) {
                                    CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
                                    if (a(cellInfoGsm.getCellIdentity())) {
                                        iw a3 = a(cellInfoGsm, isRegistered);
                                        a3.l = (short) ((int) Math.min(65535, ivVar.a(a3)));
                                        arrayList.add(a3);
                                    }
                                } else if (cellInfo instanceof CellInfoWcdma) {
                                    CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
                                    if (a(cellInfoWcdma.getCellIdentity())) {
                                        iw a4 = a(cellInfoWcdma, isRegistered);
                                        a4.l = (short) ((int) Math.min(65535, ivVar.a(a4)));
                                        arrayList.add(a4);
                                    }
                                } else if (cellInfo instanceof CellInfoLte) {
                                    CellInfoLte cellInfoLte = (CellInfoLte) cellInfo;
                                    if (a(cellInfoLte.getCellIdentity())) {
                                        iw a5 = a(cellInfoLte, isRegistered);
                                        a5.l = (short) ((int) Math.min(65535, ivVar.a(a5)));
                                        arrayList.add(a5);
                                    }
                                }
                            } catch (Throwable th) {
                            }
                        }
                    }
                }
            }
            if (arrayList != null && arrayList.size() > 0) {
                this.a |= 4;
                ivVar.a(arrayList);
            }
        }
    }

    private int u() {
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

    public final ArrayList<iw> a() {
        return this.b;
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
                    jd.a(th, "CgiManager", "cgiUseful Cgi.iGsmT");
                    break;
                }
            case 2:
                try {
                    if (je.b(cellLocation, "getSystemId", new Object[0]) <= 0 || je.b(cellLocation, "getNetworkId", new Object[0]) < 0 || je.b(cellLocation, "getBaseStationId", new Object[0]) < 0) {
                        z = false;
                        break;
                    }
                } catch (Throwable th2) {
                    jd.a(th2, "CgiManager", "cgiUseful Cgi.iCdmaT");
                    break;
                }
        }
        return z;
    }

    public final ArrayList<iw> b() {
        return this.n;
    }

    public final int c() {
        return this.a;
    }

    public final int d() {
        return this.a & 3;
    }

    public final TelephonyManager e() {
        return this.c;
    }

    public final void f() {
        try {
            this.i = jg.a(this.l);
            if (m() || this.b.isEmpty()) {
                p();
                this.d = jg.b();
            }
            if (this.i) {
                n();
            } else {
                o();
            }
        } catch (SecurityException e2) {
            this.h = e2.getMessage();
        } catch (Throwable th) {
            jd.a(th, "CgiManager", "refresh");
        }
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
                jd.a(th, "CgiManager", "destroy");
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
    public final void h() {
        this.h = null;
        this.e = null;
        this.a = 0;
        this.b.clear();
        this.n.clear();
    }

    public final String i() {
        return this.m;
    }
}
