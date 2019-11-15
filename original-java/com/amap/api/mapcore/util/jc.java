package com.amap.api.mapcore.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;

@SuppressLint({"NewApi"})
/* compiled from: Req */
public final class jc {
    public static String K = null;
    public String A = null;
    public String B = null;
    public ArrayList<iw> C = new ArrayList<>();
    public String D = null;
    public String E = null;
    public ArrayList<ScanResult> F = new ArrayList<>();
    public ArrayList<iu> G = new ArrayList<>();
    public String H = null;
    public String I = null;
    public byte[] J = null;
    public String L = null;
    private byte[] M = null;
    private int N = 0;
    public String a = "1";
    public short b = 0;
    public String c = null;
    public String d = null;
    public String e = null;
    public String f = null;
    public String g = null;
    public String h = null;
    public String i = null;
    public String j = null;
    public String k = null;
    public String l = null;
    public String m = null;
    public String n = null;
    public String o = null;
    public String p = null;
    public String q = null;
    public String r = null;
    public String s = null;
    public String t = null;
    public String u = null;
    public String v = null;
    public String w = null;
    public String x = null;
    public String y = null;
    public int z = 0;

    private String a(String str, int i2) {
        String[] split = this.B.split("\\*")[i2].split(Constants.ACCEPT_TIME_SEPARATOR_SP);
        if (str.equals("lac")) {
            return split[0];
        }
        if (str.equals("cellid")) {
            return split[1];
        }
        if (str.equals("signal")) {
            return split[2];
        }
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x000e, code lost:
        if (r0.length != 6) goto L_0x0010;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private byte[] a(java.lang.String r8) {
        /*
            r7 = this;
            r6 = 2
            r4 = 6
            r2 = 0
            java.lang.String r0 = ":"
            java.lang.String[] r0 = r8.split(r0)
            byte[] r1 = new byte[r4]
            if (r0 == 0) goto L_0x0010
            int r3 = r0.length     // Catch:{ Throwable -> 0x0043 }
            if (r3 == r4) goto L_0x001e
        L_0x0010:
            r0 = 6
            java.lang.String[] r0 = new java.lang.String[r0]     // Catch:{ Throwable -> 0x0043 }
            r3 = r2
        L_0x0014:
            int r4 = r0.length     // Catch:{ Throwable -> 0x0043 }
            if (r3 >= r4) goto L_0x001e
            java.lang.String r4 = "0"
            r0[r3] = r4     // Catch:{ Throwable -> 0x0043 }
            int r3 = r3 + 1
            goto L_0x0014
        L_0x001e:
            int r3 = r0.length     // Catch:{ Throwable -> 0x0043 }
            if (r2 >= r3) goto L_0x0041
            r3 = r0[r2]     // Catch:{ Throwable -> 0x0043 }
            int r3 = r3.length()     // Catch:{ Throwable -> 0x0043 }
            if (r3 <= r6) goto L_0x0033
            r3 = r0[r2]     // Catch:{ Throwable -> 0x0043 }
            r4 = 0
            r5 = 2
            java.lang.String r3 = r3.substring(r4, r5)     // Catch:{ Throwable -> 0x0043 }
            r0[r2] = r3     // Catch:{ Throwable -> 0x0043 }
        L_0x0033:
            r3 = r0[r2]     // Catch:{ Throwable -> 0x0043 }
            r4 = 16
            int r3 = java.lang.Integer.parseInt(r3, r4)     // Catch:{ Throwable -> 0x0043 }
            byte r3 = (byte) r3     // Catch:{ Throwable -> 0x0043 }
            r1[r2] = r3     // Catch:{ Throwable -> 0x0043 }
            int r2 = r2 + 1
            goto L_0x001e
        L_0x0041:
            r0 = r1
        L_0x0042:
            return r0
        L_0x0043:
            r0 = move-exception
            java.lang.String r1 = "Req"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "getMacBa "
            r2.<init>(r3)
            java.lang.StringBuilder r2 = r2.append(r8)
            java.lang.String r2 = r2.toString()
            com.amap.api.mapcore.util.jd.a(r0, r1, r2)
            java.lang.String r0 = "00:00:00:00:00:00"
            byte[] r0 = r7.a(r0)
            goto L_0x0042
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.jc.a(java.lang.String):byte[]");
    }

    private String b(String str) {
        if (!this.A.contains(str + ">")) {
            return "0";
        }
        int indexOf = this.A.indexOf(str + ">");
        return this.A.substring(indexOf + str.length() + 1, this.A.indexOf("</" + str));
    }

    private void b() {
        if (TextUtils.isEmpty(this.a)) {
            this.a = "";
        }
        if (TextUtils.isEmpty(this.c)) {
            this.c = "";
        }
        if (TextUtils.isEmpty(this.d)) {
            this.d = "";
        }
        if (TextUtils.isEmpty(this.e)) {
            this.e = "";
        }
        if (TextUtils.isEmpty(this.f)) {
            this.f = "";
        }
        if (TextUtils.isEmpty(this.g)) {
            this.g = "";
        }
        if (TextUtils.isEmpty(this.h)) {
            this.h = "";
        }
        if (TextUtils.isEmpty(this.i)) {
            this.i = "";
        }
        if (TextUtils.isEmpty(this.j)) {
            this.j = "0";
        } else if (!this.j.equals("1") && !this.j.equals("2")) {
            this.j = "0";
        }
        if (TextUtils.isEmpty(this.k)) {
            this.k = "0";
        } else if (!this.k.equals("0") && !this.k.equals("1")) {
            this.k = "0";
        }
        if (TextUtils.isEmpty(this.l)) {
            this.l = "";
        }
        if (TextUtils.isEmpty(this.m)) {
            this.m = "";
        }
        if (TextUtils.isEmpty(this.n)) {
            this.n = "";
        }
        if (TextUtils.isEmpty(this.o)) {
            this.o = "";
        }
        if (TextUtils.isEmpty(this.p)) {
            this.p = "";
        }
        if (TextUtils.isEmpty(this.q)) {
            this.q = "";
        }
        if (TextUtils.isEmpty(this.r)) {
            this.r = "";
        }
        if (TextUtils.isEmpty(this.s)) {
            this.s = "";
        }
        if (TextUtils.isEmpty(this.t)) {
            this.t = "";
        }
        if (TextUtils.isEmpty(this.u)) {
            this.u = "";
        }
        if (TextUtils.isEmpty(this.v)) {
            this.v = "";
        }
        if (TextUtils.isEmpty(this.w)) {
            this.w = "";
        }
        if (TextUtils.isEmpty(this.x)) {
            this.x = "";
        }
        if (TextUtils.isEmpty(this.y)) {
            this.y = "0";
        } else if (!this.y.equals("1") && !this.y.equals("2")) {
            this.y = "0";
        }
        if (!ix.a(this.z)) {
            this.z = 0;
        }
        if (TextUtils.isEmpty(this.A)) {
            this.A = "";
        }
        if (TextUtils.isEmpty(this.B)) {
            this.B = "";
        }
        if (TextUtils.isEmpty(this.E)) {
            this.E = "";
        }
        if (TextUtils.isEmpty(this.H)) {
            this.H = "";
        }
        if (TextUtils.isEmpty(this.I)) {
            this.I = "";
        }
        if (TextUtils.isEmpty(K)) {
            K = "";
        }
        if (this.J == null) {
            this.J = new byte[0];
        }
    }

    public final void a(Context context, boolean z2, boolean z3, ix ixVar, iy iyVar, ConnectivityManager connectivityManager, String str, String str2) {
        String str3;
        String str4;
        String str5;
        String sb;
        String str6 = "0";
        String str7 = "0";
        String str8 = "0";
        String str9 = "0";
        String str10 = "0";
        String f2 = fo.f(context);
        int f3 = jg.f();
        String str11 = "";
        String str12 = "";
        String str13 = "";
        this.L = str2;
        String str14 = "api_serverSDK_130905";
        String str15 = "S128DF1572465B890OE3F7A13167KLEI";
        if (!z3) {
            str3 = "UC_nlp_20131029";
            str4 = "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U";
        } else {
            str3 = str14;
            str4 = str15;
        }
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        int c2 = ixVar.c();
        int d2 = ixVar.d();
        TelephonyManager e2 = ixVar.e();
        ArrayList a2 = ixVar.a();
        ArrayList b2 = ixVar.b();
        ArrayList a3 = iyVar.a();
        String str16 = d2 == 2 ? "1" : str6;
        if (e2 != null) {
            if (TextUtils.isEmpty(jd.d)) {
                try {
                    jd.d = fs.t(context);
                } catch (Throwable th) {
                    jd.a(th, "APS", "getApsReq part4");
                }
            }
            if (TextUtils.isEmpty(jd.d)) {
                jd.d = "888888888888888";
            }
            if (TextUtils.isEmpty(jd.e)) {
                try {
                    jd.e = e2.getSubscriberId();
                } catch (SecurityException e3) {
                } catch (Throwable th2) {
                    jd.a(th2, "APS", "getApsReq part2");
                }
            }
            if (TextUtils.isEmpty(jd.e)) {
                jd.e = "888888888888888";
            }
        }
        NetworkInfo networkInfo = null;
        try {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Throwable th3) {
            jd.a(th3, "APS", "getApsReq part");
        }
        WifiInfo f4 = iyVar.f();
        boolean a4 = iy.a(f4);
        if (jg.a(networkInfo) != -1) {
            String b3 = jg.b(e2);
            if (!a4 || !iyVar.e()) {
                str11 = b3;
                str12 = "1";
            } else {
                str11 = b3;
                str12 = "2";
            }
        }
        if (!a2.isEmpty()) {
            StringBuilder sb4 = new StringBuilder();
            switch (d2) {
                case 1:
                    iw iwVar = (iw) a2.get(0);
                    sb4.delete(0, sb4.length());
                    sb4.append("<mcc>").append(iwVar.a).append("</mcc>");
                    sb4.append("<mnc>").append(iwVar.b).append("</mnc>");
                    sb4.append("<lac>").append(iwVar.c).append("</lac>");
                    sb4.append("<cellid>").append(iwVar.d);
                    sb4.append("</cellid>");
                    sb4.append("<signal>").append(iwVar.j);
                    sb4.append("</signal>");
                    String sb5 = sb4.toString();
                    int i2 = 1;
                    while (true) {
                        int i3 = i2;
                        if (i3 >= a2.size()) {
                            sb = sb5;
                            break;
                        } else {
                            iw iwVar2 = (iw) a2.get(i3);
                            sb2.append(iwVar2.c).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            sb2.append(iwVar2.d).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            sb2.append(iwVar2.j);
                            if (i3 < a2.size() - 1) {
                                sb2.append("*");
                            }
                            i2 = i3 + 1;
                        }
                    }
                case 2:
                    iw iwVar3 = (iw) a2.get(0);
                    sb4.delete(0, sb4.length());
                    sb4.append("<mcc>").append(iwVar3.a).append("</mcc>");
                    sb4.append("<sid>").append(iwVar3.g).append("</sid>");
                    sb4.append("<nid>").append(iwVar3.h).append("</nid>");
                    sb4.append("<bid>").append(iwVar3.i).append("</bid>");
                    if (iwVar3.f > 0 && iwVar3.e > 0) {
                        sb4.append("<lon>").append(iwVar3.f).append("</lon>");
                        sb4.append("<lat>").append(iwVar3.e).append("</lat>");
                    }
                    sb4.append("<signal>").append(iwVar3.j).append("</signal>");
                    sb = sb4.toString();
                    break;
                default:
                    sb = str13;
                    break;
            }
            sb4.delete(0, sb4.length());
            str5 = sb;
        } else {
            str5 = str13;
        }
        if ((c2 & 4) != 4 || b2.isEmpty()) {
            this.C.clear();
        } else {
            this.C.clear();
            this.C.addAll(b2);
        }
        if (iyVar.e()) {
            if (a4) {
                sb3.append(iyVar.f().getBSSID()).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                int rssi = iyVar.f().getRssi();
                if (rssi < -128) {
                    rssi = 0;
                } else if (rssi > 127) {
                    rssi = 0;
                }
                sb3.append(rssi).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                String ssid = f4.getSSID();
                int i4 = 32;
                try {
                    i4 = f4.getSSID().getBytes("UTF-8").length;
                } catch (Exception e4) {
                }
                if (i4 >= 32) {
                    ssid = "unkwn";
                }
                sb3.append(ssid.replace("*", "."));
            }
            if (!(a3 == null || this.F == null)) {
                this.F.clear();
                this.F.addAll(a3);
            }
        } else {
            iyVar.b();
            if (this.F != null) {
                this.F.clear();
            }
        }
        if (!z2) {
            this.b = 2;
        } else {
            this.b = 0;
        }
        this.c = str3;
        this.d = str4;
        this.f = jg.d();
        this.g = "android" + jg.e();
        this.h = jg.b(context);
        this.i = str16;
        this.j = str7;
        this.k = "0";
        this.l = str8;
        this.m = str9;
        this.n = str10;
        this.o = f2;
        this.p = jd.d;
        this.q = jd.e;
        this.s = String.valueOf(f3);
        this.t = str;
        this.v = "3.6.0";
        this.w = null;
        this.u = "";
        this.x = str11;
        this.y = str12;
        this.z = c2;
        this.A = str5;
        this.B = sb2.toString();
        this.D = ixVar.i();
        this.H = iy.i();
        this.E = sb3.toString();
        try {
            if (TextUtils.isEmpty(K)) {
                K = fs.h(context);
            }
        } catch (Throwable th4) {
        }
        sb2.delete(0, sb2.length());
        sb3.delete(0, sb3.length());
    }

    /* JADX WARNING: Removed duplicated region for block: B:190:0x05cd  */
    /* JADX WARNING: Removed duplicated region for block: B:193:0x05e2  */
    /* JADX WARNING: Removed duplicated region for block: B:198:0x05fb A[Catch:{ Throwable -> 0x07fc }] */
    /* JADX WARNING: Removed duplicated region for block: B:200:0x05fe A[Catch:{ Throwable -> 0x07fc }] */
    /* JADX WARNING: Removed duplicated region for block: B:206:0x0613 A[Catch:{ Throwable -> 0x0804 }] */
    /* JADX WARNING: Removed duplicated region for block: B:210:0x0628  */
    /* JADX WARNING: Removed duplicated region for block: B:216:0x0654  */
    /* JADX WARNING: Removed duplicated region for block: B:222:0x0667  */
    /* JADX WARNING: Removed duplicated region for block: B:225:0x067a  */
    /* JADX WARNING: Removed duplicated region for block: B:228:0x06b3  */
    /* JADX WARNING: Removed duplicated region for block: B:249:0x073e  */
    /* JADX WARNING: Removed duplicated region for block: B:277:0x07ed A[SYNTHETIC, Splitter:B:277:0x07ed] */
    /* JADX WARNING: Removed duplicated region for block: B:286:0x080e A[SYNTHETIC, Splitter:B:286:0x080e] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final byte[] a() {
        /*
            r19 = this;
            r19.b()
            r2 = 2
            byte[] r10 = new byte[r2]
            r2 = 4
            byte[] r8 = new byte[r2]
            r2 = 4096(0x1000, float:5.74E-42)
            r0 = r19
            byte[] r3 = r0.J
            if (r3 == 0) goto L_0x001a
            r0 = r19
            byte[] r2 = r0.J
            int r2 = r2.length
            int r2 = r2 + 1
            int r2 = r2 + 4096
        L_0x001a:
            r0 = r19
            byte[] r3 = r0.M
            if (r3 == 0) goto L_0x0026
            r0 = r19
            int r3 = r0.N
            if (r2 <= r3) goto L_0x0307
        L_0x0026:
            byte[] r3 = new byte[r2]
            r0 = r19
            r0.M = r3
            r0 = r19
            r0.N = r2
        L_0x0030:
            r2 = 0
            r0 = r19
            java.lang.String r4 = r0.a
            byte r4 = java.lang.Byte.parseByte(r4)
            r3[r2] = r4
            r0 = r19
            short r2 = r0.b
            r4 = 0
            byte[] r2 = com.amap.api.mapcore.util.jg.a(r2, r4)
            r4 = 0
            r5 = 1
            int r6 = r2.length
            java.lang.System.arraycopy(r2, r4, r3, r5, r6)
            int r2 = r2.length
            int r4 = r2 + 1
            r0 = r19
            java.lang.String r2 = r0.c     // Catch:{ Throwable -> 0x030e }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x030e }
            int r5 = r2.length     // Catch:{ Throwable -> 0x030e }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x030e }
            r3[r4] = r5     // Catch:{ Throwable -> 0x030e }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x030e }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x030e }
            int r2 = r2.length     // Catch:{ Throwable -> 0x030e }
            int r4 = r4 + r2
        L_0x0064:
            r0 = r19
            java.lang.String r2 = r0.d     // Catch:{ Throwable -> 0x031d }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x031d }
            int r5 = r2.length     // Catch:{ Throwable -> 0x031d }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x031d }
            r3[r4] = r5     // Catch:{ Throwable -> 0x031d }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x031d }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x031d }
            int r2 = r2.length     // Catch:{ Throwable -> 0x031d }
            int r4 = r4 + r2
        L_0x007b:
            r0 = r19
            java.lang.String r2 = r0.o     // Catch:{ Throwable -> 0x032c }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x032c }
            int r5 = r2.length     // Catch:{ Throwable -> 0x032c }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x032c }
            r3[r4] = r5     // Catch:{ Throwable -> 0x032c }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x032c }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x032c }
            int r2 = r2.length     // Catch:{ Throwable -> 0x032c }
            int r4 = r4 + r2
        L_0x0092:
            r0 = r19
            java.lang.String r2 = r0.e     // Catch:{ Throwable -> 0x033b }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x033b }
            int r5 = r2.length     // Catch:{ Throwable -> 0x033b }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x033b }
            r3[r4] = r5     // Catch:{ Throwable -> 0x033b }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x033b }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x033b }
            int r2 = r2.length     // Catch:{ Throwable -> 0x033b }
            int r4 = r4 + r2
        L_0x00a9:
            r0 = r19
            java.lang.String r2 = r0.f     // Catch:{ Throwable -> 0x034a }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x034a }
            int r5 = r2.length     // Catch:{ Throwable -> 0x034a }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x034a }
            r3[r4] = r5     // Catch:{ Throwable -> 0x034a }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x034a }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x034a }
            int r2 = r2.length     // Catch:{ Throwable -> 0x034a }
            int r4 = r4 + r2
        L_0x00c0:
            r0 = r19
            java.lang.String r2 = r0.g     // Catch:{ Throwable -> 0x0359 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x0359 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0359 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0359 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0359 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0359 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0359 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0359 }
            int r4 = r4 + r2
        L_0x00d7:
            r0 = r19
            java.lang.String r2 = r0.u     // Catch:{ Throwable -> 0x0368 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x0368 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0368 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0368 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0368 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0368 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0368 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0368 }
            int r4 = r4 + r2
        L_0x00ee:
            r0 = r19
            java.lang.String r2 = r0.h     // Catch:{ Throwable -> 0x0377 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x0377 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0377 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0377 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0377 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0377 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0377 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0377 }
            int r4 = r4 + r2
        L_0x0105:
            r0 = r19
            java.lang.String r2 = r0.p     // Catch:{ Throwable -> 0x0386 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x0386 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0386 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0386 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0386 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0386 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0386 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0386 }
            int r4 = r4 + r2
        L_0x011c:
            r0 = r19
            java.lang.String r2 = r0.q     // Catch:{ Throwable -> 0x0395 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x0395 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0395 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0395 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0395 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0395 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0395 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0395 }
            int r4 = r4 + r2
        L_0x0133:
            r0 = r19
            java.lang.String r2 = r0.t     // Catch:{ Throwable -> 0x03bd }
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Throwable -> 0x03bd }
            if (r2 == 0) goto L_0x03a4
            r2 = 0
            r3[r4] = r2     // Catch:{ Throwable -> 0x03bd }
            int r4 = r4 + 1
        L_0x0142:
            r0 = r19
            java.lang.String r2 = r0.v     // Catch:{ Throwable -> 0x03cc }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x03cc }
            int r5 = r2.length     // Catch:{ Throwable -> 0x03cc }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x03cc }
            r3[r4] = r5     // Catch:{ Throwable -> 0x03cc }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x03cc }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x03cc }
            int r2 = r2.length     // Catch:{ Throwable -> 0x03cc }
            int r4 = r4 + r2
        L_0x0159:
            r0 = r19
            java.lang.String r2 = r0.w     // Catch:{ Throwable -> 0x03db }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x03db }
            int r5 = r2.length     // Catch:{ Throwable -> 0x03db }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x03db }
            r3[r4] = r5     // Catch:{ Throwable -> 0x03db }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x03db }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x03db }
            int r2 = r2.length     // Catch:{ Throwable -> 0x03db }
            int r4 = r4 + r2
        L_0x0170:
            java.lang.String r2 = K     // Catch:{ Throwable -> 0x0401 }
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Throwable -> 0x0401 }
            if (r2 == 0) goto L_0x03ea
            r2 = 0
            r3[r4] = r2     // Catch:{ Throwable -> 0x0401 }
            int r4 = r4 + 1
        L_0x017d:
            r0 = r19
            java.lang.String r2 = r0.x     // Catch:{ Throwable -> 0x0410 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x0410 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0410 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0410 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0410 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0410 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0410 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0410 }
            int r2 = r2 + r4
        L_0x0194:
            r0 = r19
            java.lang.String r4 = r0.y
            byte r4 = java.lang.Byte.parseByte(r4)
            r3[r2] = r4
            int r2 = r2 + 1
            r0 = r19
            java.lang.String r4 = r0.j
            byte r4 = java.lang.Byte.parseByte(r4)
            r3[r2] = r4
            int r2 = r2 + 1
            r0 = r19
            int r4 = r0.z
            r4 = r4 & 3
            r0 = r19
            int r5 = r0.z
            byte r5 = (byte) r5
            r3[r2] = r5
            int r2 = r2 + 1
            r5 = 1
            if (r4 != r5) goto L_0x0485
            java.lang.String r4 = "mcc"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.mapcore.util.jg.b(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "mnc"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.mapcore.util.jg.b(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "lac"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.mapcore.util.jg.b(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "cellid"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.mapcore.util.jg.c(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r4 = r4 + r2
            java.lang.String r2 = "signal"
            r0 = r19
            java.lang.String r2 = r0.b(r2)
            int r2 = java.lang.Integer.parseInt(r2)
            r5 = 127(0x7f, float:1.78E-43)
            if (r2 <= r5) goto L_0x041f
            r2 = 0
        L_0x021b:
            byte r2 = (byte) r2
            r3[r4] = r2
            int r2 = r4 + 1
            r4 = 0
            byte[] r4 = com.amap.api.mapcore.util.jg.a(r4, r10)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r2 = r2 + 2
            r0 = r19
            java.lang.String r4 = r0.B
            int r4 = r4.length()
            if (r4 != 0) goto L_0x0426
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
        L_0x023b:
            r0 = r19
            java.lang.String r4 = r0.D
            if (r4 == 0) goto L_0x052a
            r0 = r19
            int r5 = r0.z
            r5 = r5 & 8
            r6 = 8
            if (r5 != r6) goto L_0x052a
            java.lang.String r5 = "GBK"
            byte[] r4 = r4.getBytes(r5)     // Catch:{ Exception -> 0x0529 }
            int r5 = r4.length     // Catch:{ Exception -> 0x0529 }
            r6 = 60
            int r5 = java.lang.Math.min(r5, r6)     // Catch:{ Exception -> 0x0529 }
            byte r6 = (byte) r5     // Catch:{ Exception -> 0x0529 }
            r3[r2] = r6     // Catch:{ Exception -> 0x0529 }
            int r2 = r2 + 1
            r6 = 0
            java.lang.System.arraycopy(r4, r6, r3, r2, r5)     // Catch:{ Exception -> 0x0529 }
            int r2 = r2 + r5
            r4 = r2
        L_0x0263:
            r0 = r19
            java.util.ArrayList<com.amap.api.mapcore.util.iw> r9 = r0.C
            int r5 = r9.size()
            r0 = r19
            int r2 = r0.z
            r2 = r2 & 4
            r6 = 4
            if (r2 != r6) goto L_0x05be
            if (r5 <= 0) goto L_0x05be
            r2 = 0
            java.lang.Object r2 = r9.get(r2)
            com.amap.api.mapcore.util.iw r2 = (com.amap.api.mapcore.util.iw) r2
            boolean r2 = r2.o
            if (r2 != 0) goto L_0x0284
            int r2 = r5 + -1
            r5 = r2
        L_0x0284:
            byte r2 = (byte) r5
            r3[r4] = r2
            int r6 = r4 + 1
            r2 = 0
            r7 = r2
        L_0x028b:
            if (r7 >= r5) goto L_0x05c3
            java.lang.Object r2 = r9.get(r7)
            com.amap.api.mapcore.util.iw r2 = (com.amap.api.mapcore.util.iw) r2
            boolean r4 = r2.o
            if (r4 == 0) goto L_0x08f4
            int r4 = r2.k
            r11 = 1
            if (r4 == r11) goto L_0x02a6
            int r4 = r2.k
            r11 = 3
            if (r4 == r11) goto L_0x02a6
            int r4 = r2.k
            r11 = 4
            if (r4 != r11) goto L_0x053a
        L_0x02a6:
            int r4 = r2.k
            byte r4 = (byte) r4
            boolean r11 = r2.n
            if (r11 == 0) goto L_0x02b0
            r4 = r4 | 8
            byte r4 = (byte) r4
        L_0x02b0:
            r3[r6] = r4
            int r4 = r6 + 1
            int r6 = r2.a
            byte[] r6 = com.amap.api.mapcore.util.jg.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.b
            byte[] r6 = com.amap.api.mapcore.util.jg.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.c
            byte[] r6 = com.amap.api.mapcore.util.jg.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.d
            byte[] r6 = com.amap.api.mapcore.util.jg.a(r6, r8)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r6 = r6 + r4
            int r4 = r2.j
            r11 = 127(0x7f, float:1.78E-43)
            if (r4 <= r11) goto L_0x0532
            r4 = 99
        L_0x02f0:
            byte r4 = (byte) r4
            r3[r6] = r4
            int r4 = r6 + 1
            short r2 = r2.l
            byte[] r2 = com.amap.api.mapcore.util.jg.a(r2, r10)
            r6 = 0
            int r11 = r2.length
            java.lang.System.arraycopy(r2, r6, r3, r4, r11)
            int r2 = r2.length
            int r2 = r2 + r4
        L_0x0302:
            int r4 = r7 + 1
            r7 = r4
            r6 = r2
            goto L_0x028b
        L_0x0307:
            r0 = r19
            byte[] r2 = r0.M
            r3 = r2
            goto L_0x0030
        L_0x030e:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot2"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x0064
        L_0x031d:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot21"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x007b
        L_0x032c:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot22"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x0092
        L_0x033b:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot23"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x00a9
        L_0x034a:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot24"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x00c0
        L_0x0359:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot25"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x00d7
        L_0x0368:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot26"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x00ee
        L_0x0377:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot27"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x0105
        L_0x0386:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot28"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x011c
        L_0x0395:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot29"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x0133
        L_0x03a4:
            r0 = r19
            java.lang.String r2 = r0.t     // Catch:{ Throwable -> 0x03bd }
            r0 = r19
            byte[] r2 = r0.a(r2)     // Catch:{ Throwable -> 0x03bd }
            int r5 = r2.length     // Catch:{ Throwable -> 0x03bd }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x03bd }
            r3[r4] = r5     // Catch:{ Throwable -> 0x03bd }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x03bd }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x03bd }
            int r2 = r2.length     // Catch:{ Throwable -> 0x03bd }
            int r4 = r4 + r2
            goto L_0x0142
        L_0x03bd:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot219"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x0142
        L_0x03cc:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot211"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x0159
        L_0x03db:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot212"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x0170
        L_0x03ea:
            java.lang.String r2 = K     // Catch:{ Throwable -> 0x0401 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x0401 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0401 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0401 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0401 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0401 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0401 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0401 }
            int r4 = r4 + r2
            goto L_0x017d
        L_0x0401:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot212"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x017d
        L_0x0410:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot213"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r2 = r4 + 1
            goto L_0x0194
        L_0x041f:
            r5 = -128(0xffffffffffffff80, float:NaN)
            if (r2 >= r5) goto L_0x021b
            r2 = 0
            goto L_0x021b
        L_0x0426:
            r0 = r19
            java.lang.String r4 = r0.B
            java.lang.String r5 = "\\*"
            java.lang.String[] r4 = r4.split(r5)
            int r6 = r4.length
            byte r4 = (byte) r6
            r3[r2] = r4
            int r4 = r2 + 1
            r2 = 0
            r18 = r2
            r2 = r4
            r4 = r18
        L_0x043c:
            if (r4 >= r6) goto L_0x023b
            java.lang.String r5 = "lac"
            r0 = r19
            java.lang.String r5 = r0.a(r5, r4)
            byte[] r5 = com.amap.api.mapcore.util.jg.b(r5)
            r7 = 0
            int r9 = r5.length
            java.lang.System.arraycopy(r5, r7, r3, r2, r9)
            int r5 = r5.length
            int r2 = r2 + r5
            java.lang.String r5 = "cellid"
            r0 = r19
            java.lang.String r5 = r0.a(r5, r4)
            byte[] r5 = com.amap.api.mapcore.util.jg.c(r5)
            r7 = 0
            int r9 = r5.length
            java.lang.System.arraycopy(r5, r7, r3, r2, r9)
            int r5 = r5.length
            int r5 = r5 + r2
            java.lang.String r2 = "signal"
            r0 = r19
            java.lang.String r2 = r0.a(r2, r4)
            int r2 = java.lang.Integer.parseInt(r2)
            r7 = 127(0x7f, float:1.78E-43)
            if (r2 <= r7) goto L_0x047f
            r2 = 0
        L_0x0475:
            byte r2 = (byte) r2
            r3[r5] = r2
            int r5 = r5 + 1
            int r2 = r4 + 1
            r4 = r2
            r2 = r5
            goto L_0x043c
        L_0x047f:
            r7 = -128(0xffffffffffffff80, float:NaN)
            if (r2 >= r7) goto L_0x0475
            r2 = 0
            goto L_0x0475
        L_0x0485:
            r5 = 2
            if (r4 != r5) goto L_0x023b
            java.lang.String r4 = "mcc"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.mapcore.util.jg.b(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "sid"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.mapcore.util.jg.b(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "nid"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.mapcore.util.jg.b(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "bid"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.mapcore.util.jg.b(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "lon"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.mapcore.util.jg.c(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "lat"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.mapcore.util.jg.c(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r4 = r4 + r2
            java.lang.String r2 = "signal"
            r0 = r19
            java.lang.String r2 = r0.b(r2)
            int r2 = java.lang.Integer.parseInt(r2)
            r5 = 127(0x7f, float:1.78E-43)
            if (r2 <= r5) goto L_0x0523
            r2 = 0
        L_0x050b:
            byte r2 = (byte) r2
            r3[r4] = r2
            int r2 = r4 + 1
            r4 = 0
            byte[] r4 = com.amap.api.mapcore.util.jg.a(r4, r10)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r2 = r2 + 2
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
            goto L_0x023b
        L_0x0523:
            r5 = -128(0xffffffffffffff80, float:NaN)
            if (r2 >= r5) goto L_0x050b
            r2 = 0
            goto L_0x050b
        L_0x0529:
            r4 = move-exception
        L_0x052a:
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
            r4 = r2
            goto L_0x0263
        L_0x0532:
            r11 = -128(0xffffffffffffff80, float:NaN)
            if (r4 >= r11) goto L_0x02f0
            r4 = 99
            goto L_0x02f0
        L_0x053a:
            int r4 = r2.k
            r11 = 2
            if (r4 != r11) goto L_0x08f4
            int r4 = r2.k
            byte r4 = (byte) r4
            boolean r11 = r2.n
            if (r11 == 0) goto L_0x0549
            r4 = r4 | 8
            byte r4 = (byte) r4
        L_0x0549:
            r3[r6] = r4
            int r4 = r6 + 1
            int r6 = r2.a
            byte[] r6 = com.amap.api.mapcore.util.jg.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.g
            byte[] r6 = com.amap.api.mapcore.util.jg.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.h
            byte[] r6 = com.amap.api.mapcore.util.jg.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.i
            byte[] r6 = com.amap.api.mapcore.util.jg.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.f
            byte[] r6 = com.amap.api.mapcore.util.jg.b(r6, r8)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.e
            byte[] r6 = com.amap.api.mapcore.util.jg.b(r6, r8)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r6 = r6 + r4
            int r4 = r2.j
            r11 = 127(0x7f, float:1.78E-43)
            if (r4 <= r11) goto L_0x05b7
            r4 = 99
        L_0x05a3:
            byte r4 = (byte) r4
            r3[r6] = r4
            int r4 = r6 + 1
            short r2 = r2.l
            byte[] r2 = com.amap.api.mapcore.util.jg.a(r2, r10)
            r6 = 0
            int r11 = r2.length
            java.lang.System.arraycopy(r2, r6, r3, r4, r11)
            int r2 = r2.length
            int r2 = r2 + r4
            goto L_0x0302
        L_0x05b7:
            r11 = -128(0xffffffffffffff80, float:NaN)
            if (r4 >= r11) goto L_0x05a3
            r4 = 99
            goto L_0x05a3
        L_0x05be:
            r2 = 0
            r3[r4] = r2
            int r6 = r4 + 1
        L_0x05c3:
            r0 = r19
            java.lang.String r2 = r0.E
            int r2 = r2.length()
            if (r2 != 0) goto L_0x06b3
            r2 = 0
            r3[r6] = r2
            int r2 = r6 + 1
        L_0x05d2:
            r0 = r19
            java.util.ArrayList<android.net.wifi.ScanResult> r11 = r0.F
            int r4 = r11.size()
            r5 = 25
            int r12 = java.lang.Math.min(r4, r5)
            if (r12 != 0) goto L_0x073e
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
        L_0x05e7:
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
            r0 = r19
            java.lang.String r4 = r0.I     // Catch:{ Throwable -> 0x07fc }
            java.lang.String r5 = "GBK"
            byte[] r4 = r4.getBytes(r5)     // Catch:{ Throwable -> 0x07fc }
            int r5 = r4.length     // Catch:{ Throwable -> 0x07fc }
            r6 = 127(0x7f, float:1.78E-43)
            if (r5 <= r6) goto L_0x05fc
            r4 = 0
        L_0x05fc:
            if (r4 != 0) goto L_0x07ed
            r4 = 0
            r3[r2] = r4     // Catch:{ Throwable -> 0x07fc }
            int r2 = r2 + 1
        L_0x0603:
            r4 = 2
            byte[] r4 = new byte[r4]
            r4 = {0, 0} // fill-array
            r0 = r19
            java.lang.String r5 = r0.L     // Catch:{ Throwable -> 0x0804 }
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch:{ Throwable -> 0x0804 }
            if (r5 != 0) goto L_0x061f
            r0 = r19
            java.lang.String r4 = r0.L     // Catch:{ Throwable -> 0x0804 }
            int r4 = r4.length()     // Catch:{ Throwable -> 0x0804 }
            byte[] r4 = com.amap.api.mapcore.util.jg.a(r4, r10)     // Catch:{ Throwable -> 0x0804 }
        L_0x061f:
            r6 = 0
            r7 = 2
            java.lang.System.arraycopy(r4, r6, r3, r2, r7)     // Catch:{ Throwable -> 0x0804 }
            int r2 = r2 + 2
            if (r5 != 0) goto L_0x0639
            r0 = r19
            java.lang.String r4 = r0.L     // Catch:{ Throwable -> 0x08ee }
            java.lang.String r5 = "GBK"
            byte[] r4 = r4.getBytes(r5)     // Catch:{ Throwable -> 0x08ee }
            r5 = 0
            int r6 = r4.length     // Catch:{ Throwable -> 0x08ee }
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)     // Catch:{ Throwable -> 0x08ee }
            int r4 = r4.length     // Catch:{ Throwable -> 0x08ee }
            int r2 = r2 + r4
        L_0x0639:
            r0 = r19
            java.util.ArrayList<com.amap.api.mapcore.util.iu> r7 = r0.G
            int r4 = r7.size()
            r5 = 65536(0x10000, float:9.18355E-41)
            int r8 = java.lang.Math.min(r4, r5)
            r4 = 2
            byte[] r4 = new byte[r4]
            r5 = 0
            r6 = 0
            r4[r5] = r6
            r5 = 1
            r6 = 0
            r4[r5] = r6
            if (r8 != 0) goto L_0x080e
            r4 = 0
            byte[] r4 = com.amap.api.mapcore.util.jg.a(r4, r10)     // Catch:{ Throwable -> 0x0809 }
            r5 = 0
            r6 = 2
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)     // Catch:{ Throwable -> 0x0809 }
            int r2 = r2 + 2
        L_0x0660:
            r4 = 0
            r0 = r19
            byte[] r5 = r0.J
            if (r5 == 0) goto L_0x066c
            r0 = r19
            byte[] r4 = r0.J
            int r4 = r4.length
        L_0x066c:
            r5 = 0
            byte[] r5 = com.amap.api.mapcore.util.jg.a(r4, r5)
            r6 = 0
            int r7 = r5.length
            java.lang.System.arraycopy(r5, r6, r3, r2, r7)
            int r5 = r5.length
            int r2 = r2 + r5
            if (r4 <= 0) goto L_0x068d
            r0 = r19
            byte[] r4 = r0.J
            r5 = 0
            r0 = r19
            byte[] r6 = r0.J
            int r6 = r6.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            r0 = r19
            byte[] r4 = r0.J
            int r4 = r4.length
            int r2 = r2 + r4
        L_0x068d:
            byte[] r4 = new byte[r2]
            r5 = 0
            r6 = 0
            java.lang.System.arraycopy(r3, r5, r4, r6, r2)
            java.util.zip.CRC32 r3 = new java.util.zip.CRC32
            r3.<init>()
            r3.update(r4)
            long r6 = r3.getValue()
            byte[] r3 = com.amap.api.mapcore.util.jg.a(r6)
            int r5 = r3.length
            int r5 = r5 + r2
            byte[] r5 = new byte[r5]
            r6 = 0
            r7 = 0
            java.lang.System.arraycopy(r4, r6, r5, r7, r2)
            r4 = 0
            int r6 = r3.length
            java.lang.System.arraycopy(r3, r4, r5, r2, r6)
            return r5
        L_0x06b3:
            r2 = 1
            r3[r6] = r2
            int r4 = r6 + 1
            r0 = r19
            java.lang.String r2 = r0.E     // Catch:{ Throwable -> 0x0716 }
            java.lang.String r5 = ","
            java.lang.String[] r5 = r2.split(r5)     // Catch:{ Throwable -> 0x0716 }
            r2 = 0
            r2 = r5[r2]     // Catch:{ Throwable -> 0x0716 }
            r0 = r19
            byte[] r2 = r0.a(r2)     // Catch:{ Throwable -> 0x0716 }
            r6 = 0
            int r7 = r2.length     // Catch:{ Throwable -> 0x0716 }
            java.lang.System.arraycopy(r2, r6, r3, r4, r7)     // Catch:{ Throwable -> 0x0716 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0716 }
            int r4 = r4 + r2
            r2 = 2
            r2 = r5[r2]     // Catch:{ Throwable -> 0x0702 }
            java.lang.String r6 = "GBK"
            byte[] r2 = r2.getBytes(r6)     // Catch:{ Throwable -> 0x0702 }
            int r6 = r2.length     // Catch:{ Throwable -> 0x0702 }
            byte r6 = (byte) r6     // Catch:{ Throwable -> 0x0702 }
            r3[r4] = r6     // Catch:{ Throwable -> 0x0702 }
            int r4 = r4 + 1
            r6 = 0
            int r7 = r2.length     // Catch:{ Throwable -> 0x0702 }
            java.lang.System.arraycopy(r2, r6, r3, r4, r7)     // Catch:{ Throwable -> 0x0702 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0702 }
            int r4 = r4 + r2
        L_0x06e8:
            r2 = 1
            r2 = r5[r2]     // Catch:{ Throwable -> 0x0716 }
            int r2 = java.lang.Integer.parseInt(r2)     // Catch:{ Throwable -> 0x0716 }
            r5 = 127(0x7f, float:1.78E-43)
            if (r2 <= r5) goto L_0x0710
            r2 = 0
        L_0x06f4:
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch:{ Throwable -> 0x0716 }
            byte r2 = java.lang.Byte.parseByte(r2)     // Catch:{ Throwable -> 0x0716 }
            r3[r4] = r2     // Catch:{ Throwable -> 0x0716 }
            int r2 = r4 + 1
            goto L_0x05d2
        L_0x0702:
            r2 = move-exception
            java.lang.String r6 = "Req"
            java.lang.String r7 = "buildV4Dot214"
            com.amap.api.mapcore.util.jd.a(r2, r6, r7)     // Catch:{ Throwable -> 0x0716 }
            r2 = 0
            r3[r4] = r2     // Catch:{ Throwable -> 0x0716 }
            int r4 = r4 + 1
            goto L_0x06e8
        L_0x0710:
            r5 = -128(0xffffffffffffff80, float:NaN)
            if (r2 >= r5) goto L_0x06f4
            r2 = 0
            goto L_0x06f4
        L_0x0716:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot216"
            com.amap.api.mapcore.util.jd.a(r2, r5, r6)
            java.lang.String r2 = "00:00:00:00:00:00"
            r0 = r19
            byte[] r2 = r0.a(r2)
            r5 = 0
            int r6 = r2.length
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)
            int r2 = r2.length
            int r2 = r2 + r4
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
            java.lang.String r4 = "0"
            byte r4 = java.lang.Byte.parseByte(r4)
            r3[r2] = r4
            int r2 = r2 + 1
            goto L_0x05d2
        L_0x073e:
            byte r4 = (byte) r12
            r3[r2] = r4
            int r6 = r2 + 1
            int r2 = com.amap.api.mapcore.util.jg.c()
            r4 = 17
            if (r2 < r4) goto L_0x07c8
            r2 = 1
            r9 = r2
        L_0x074d:
            r4 = 0
            if (r9 == 0) goto L_0x0758
            long r4 = com.amap.api.mapcore.util.jg.b()
            r14 = 1000(0x3e8, double:4.94E-321)
            long r4 = r4 / r14
        L_0x0758:
            r2 = 0
            r8 = r2
        L_0x075a:
            if (r8 >= r12) goto L_0x07d8
            java.lang.Object r2 = r11.get(r8)
            android.net.wifi.ScanResult r2 = (android.net.wifi.ScanResult) r2
            java.lang.String r7 = r2.BSSID
            r0 = r19
            byte[] r7 = r0.a(r7)
            r13 = 0
            int r14 = r7.length
            java.lang.System.arraycopy(r7, r13, r3, r6, r14)
            int r7 = r7.length
            int r6 = r6 + r7
            java.lang.String r7 = r2.SSID     // Catch:{ Exception -> 0x07cb }
            java.lang.String r13 = "GBK"
            byte[] r7 = r7.getBytes(r13)     // Catch:{ Exception -> 0x07cb }
            int r13 = r7.length     // Catch:{ Exception -> 0x07cb }
            byte r13 = (byte) r13     // Catch:{ Exception -> 0x07cb }
            r3[r6] = r13     // Catch:{ Exception -> 0x07cb }
            int r6 = r6 + 1
            r13 = 0
            int r14 = r7.length     // Catch:{ Exception -> 0x07cb }
            java.lang.System.arraycopy(r7, r13, r3, r6, r14)     // Catch:{ Exception -> 0x07cb }
            int r7 = r7.length     // Catch:{ Exception -> 0x07cb }
            int r6 = r6 + r7
        L_0x0786:
            int r7 = r2.level
            r13 = 127(0x7f, float:1.78E-43)
            if (r7 <= r13) goto L_0x07d2
            r7 = 0
        L_0x078d:
            java.lang.String r7 = java.lang.String.valueOf(r7)
            byte r7 = java.lang.Byte.parseByte(r7)
            r3[r6] = r7
            int r7 = r6 + 1
            if (r9 == 0) goto L_0x07ab
            long r14 = r2.timestamp
            long r14 = r4 - r14
            r16 = 1000000(0xf4240, double:4.940656E-318)
            long r14 = r14 / r16
            r16 = 1
            long r14 = r14 + r16
            int r6 = (int) r14
            if (r6 >= 0) goto L_0x07ac
        L_0x07ab:
            r6 = 0
        L_0x07ac:
            byte[] r6 = com.amap.api.mapcore.util.jg.a(r6, r10)
            r13 = 0
            int r14 = r6.length
            java.lang.System.arraycopy(r6, r13, r3, r7, r14)
            int r6 = r6.length
            int r6 = r6 + r7
            int r2 = r2.frequency
            byte[] r2 = com.amap.api.mapcore.util.jg.a(r2, r10)
            r7 = 0
            int r13 = r2.length
            java.lang.System.arraycopy(r2, r7, r3, r6, r13)
            int r2 = r2.length
            int r6 = r6 + r2
            int r2 = r8 + 1
            r8 = r2
            goto L_0x075a
        L_0x07c8:
            r2 = 0
            r9 = r2
            goto L_0x074d
        L_0x07cb:
            r7 = move-exception
            r7 = 0
            r3[r6] = r7
            int r6 = r6 + 1
            goto L_0x0786
        L_0x07d2:
            r13 = -128(0xffffffffffffff80, float:NaN)
            if (r7 >= r13) goto L_0x078d
            r7 = 0
            goto L_0x078d
        L_0x07d8:
            r0 = r19
            java.lang.String r2 = r0.H
            int r2 = java.lang.Integer.parseInt(r2)
            byte[] r2 = com.amap.api.mapcore.util.jg.a(r2, r10)
            r4 = 0
            int r5 = r2.length
            java.lang.System.arraycopy(r2, r4, r3, r6, r5)
            int r2 = r2.length
            int r2 = r2 + r6
            goto L_0x05e7
        L_0x07ed:
            int r5 = r4.length     // Catch:{ Throwable -> 0x07fc }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x07fc }
            r3[r2] = r5     // Catch:{ Throwable -> 0x07fc }
            int r2 = r2 + 1
            r5 = 0
            int r6 = r4.length     // Catch:{ Throwable -> 0x07fc }
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)     // Catch:{ Throwable -> 0x07fc }
            int r4 = r4.length     // Catch:{ Throwable -> 0x07fc }
            int r2 = r2 + r4
            goto L_0x0603
        L_0x07fc:
            r4 = move-exception
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
            goto L_0x0603
        L_0x0804:
            r4 = move-exception
            int r2 = r2 + 2
            goto L_0x0639
        L_0x0809:
            r4 = move-exception
            int r2 = r2 + 2
            goto L_0x0660
        L_0x080e:
            byte[] r4 = com.amap.api.mapcore.util.jg.a(r8, r10)     // Catch:{ Throwable -> 0x08bd }
            r5 = 0
            r6 = 2
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)     // Catch:{ Throwable -> 0x08bd }
            int r2 = r2 + 2
        L_0x0819:
            r4 = 0
            r5 = r4
            r4 = r2
        L_0x081c:
            if (r5 >= r8) goto L_0x08f1
            java.lang.Object r2 = r7.get(r5)
            com.amap.api.mapcore.util.iu r2 = (com.amap.api.mapcore.util.iu) r2
            byte[] r6 = r2.c     // Catch:{ Throwable -> 0x08c2 }
            r9 = 0
            int r10 = r6.length     // Catch:{ Throwable -> 0x08c2 }
            java.lang.System.arraycopy(r6, r9, r3, r4, r10)     // Catch:{ Throwable -> 0x08c2 }
            int r6 = r6.length     // Catch:{ Throwable -> 0x08c2 }
            int r4 = r4 + r6
            r6 = r4
        L_0x082e:
            java.lang.String r4 = r2.a     // Catch:{ Throwable -> 0x08cb }
            java.lang.String r9 = "GBK"
            byte[] r9 = r4.getBytes(r9)     // Catch:{ Throwable -> 0x08cb }
            r10 = 0
            int r4 = r9.length     // Catch:{ Throwable -> 0x08cb }
            r11 = 32
            if (r4 <= r11) goto L_0x08c8
            r4 = 32
        L_0x083e:
            java.lang.System.arraycopy(r9, r10, r3, r6, r4)     // Catch:{ Throwable -> 0x08cb }
            int r4 = r6 + 32
        L_0x0843:
            r6 = 4
            byte[] r6 = new byte[r6]     // Catch:{ Throwable -> 0x08d0 }
            r9 = 0
            r10 = 0
            r6[r9] = r10     // Catch:{ Throwable -> 0x08d0 }
            r9 = 1
            r10 = 0
            r6[r9] = r10     // Catch:{ Throwable -> 0x08d0 }
            r9 = 2
            r10 = 0
            r6[r9] = r10     // Catch:{ Throwable -> 0x08d0 }
            r9 = 3
            r10 = 0
            r6[r9] = r10     // Catch:{ Throwable -> 0x08d0 }
            java.lang.String r6 = r2.d     // Catch:{ Throwable -> 0x08d0 }
            java.lang.String r9 = "GBK"
            byte[] r6 = r6.getBytes(r9)     // Catch:{ Throwable -> 0x08d0 }
            r9 = 0
            int r10 = r6.length     // Catch:{ Throwable -> 0x08d0 }
            java.lang.System.arraycopy(r6, r9, r3, r4, r10)     // Catch:{ Throwable -> 0x08d0 }
            int r4 = r4 + 4
        L_0x0865:
            r6 = 4
            byte[] r6 = new byte[r6]     // Catch:{ Throwable -> 0x08d4 }
            r9 = 0
            r10 = 0
            r6[r9] = r10     // Catch:{ Throwable -> 0x08d4 }
            r9 = 1
            r10 = 0
            r6[r9] = r10     // Catch:{ Throwable -> 0x08d4 }
            r9 = 2
            r10 = 0
            r6[r9] = r10     // Catch:{ Throwable -> 0x08d4 }
            r9 = 3
            r10 = 0
            r6[r9] = r10     // Catch:{ Throwable -> 0x08d4 }
            java.lang.String r6 = r2.e     // Catch:{ Throwable -> 0x08d4 }
            java.lang.String r9 = "GBK"
            byte[] r6 = r6.getBytes(r9)     // Catch:{ Throwable -> 0x08d4 }
            r9 = 0
            int r10 = r6.length     // Catch:{ Throwable -> 0x08d4 }
            java.lang.System.arraycopy(r6, r9, r3, r4, r10)     // Catch:{ Throwable -> 0x08d4 }
            int r4 = r4 + 4
        L_0x0887:
            int r6 = r2.g     // Catch:{ Throwable -> 0x08e2 }
            r9 = 127(0x7f, float:1.78E-43)
            if (r6 <= r9) goto L_0x08d8
            r6 = 0
            r2.g = r6     // Catch:{ Throwable -> 0x08e2 }
        L_0x0890:
            int r6 = r2.g     // Catch:{ Throwable -> 0x08e2 }
            byte r6 = (byte) r6     // Catch:{ Throwable -> 0x08e2 }
            r3[r4] = r6     // Catch:{ Throwable -> 0x08e2 }
            int r4 = r4 + 1
        L_0x0897:
            r6 = 4
            byte[] r6 = new byte[r6]     // Catch:{ Throwable -> 0x08e6 }
            int r9 = r2.f     // Catch:{ Throwable -> 0x08e6 }
            byte[] r6 = com.amap.api.mapcore.util.jg.b(r9, r6)     // Catch:{ Throwable -> 0x08e6 }
            r9 = 0
            int r10 = r6.length     // Catch:{ Throwable -> 0x08e6 }
            java.lang.System.arraycopy(r6, r9, r3, r4, r10)     // Catch:{ Throwable -> 0x08e6 }
            int r4 = r4 + 4
        L_0x08a7:
            r6 = 4
            byte[] r6 = new byte[r6]     // Catch:{ Throwable -> 0x08ea }
            int r2 = r2.i     // Catch:{ Throwable -> 0x08ea }
            byte[] r2 = com.amap.api.mapcore.util.jg.b(r2, r6)     // Catch:{ Throwable -> 0x08ea }
            r6 = 0
            int r9 = r2.length     // Catch:{ Throwable -> 0x08ea }
            java.lang.System.arraycopy(r2, r6, r3, r4, r9)     // Catch:{ Throwable -> 0x08ea }
            int r2 = r4 + 4
        L_0x08b7:
            int r4 = r5 + 1
            r5 = r4
            r4 = r2
            goto L_0x081c
        L_0x08bd:
            r4 = move-exception
            int r2 = r2 + 2
            goto L_0x0819
        L_0x08c2:
            r6 = move-exception
            int r4 = r4 + 6
            r6 = r4
            goto L_0x082e
        L_0x08c8:
            int r4 = r9.length     // Catch:{ Throwable -> 0x08cb }
            goto L_0x083e
        L_0x08cb:
            r4 = move-exception
            int r4 = r6 + 32
            goto L_0x0843
        L_0x08d0:
            r6 = move-exception
            int r4 = r4 + 4
            goto L_0x0865
        L_0x08d4:
            r6 = move-exception
            int r4 = r4 + 4
            goto L_0x0887
        L_0x08d8:
            int r6 = r2.g     // Catch:{ Throwable -> 0x08e2 }
            r9 = -128(0xffffffffffffff80, float:NaN)
            if (r6 >= r9) goto L_0x0890
            r6 = 0
            r2.g = r6     // Catch:{ Throwable -> 0x08e2 }
            goto L_0x0890
        L_0x08e2:
            r6 = move-exception
            int r4 = r4 + 1
            goto L_0x0897
        L_0x08e6:
            r6 = move-exception
            int r4 = r4 + 4
            goto L_0x08a7
        L_0x08ea:
            r2 = move-exception
            int r2 = r4 + 4
            goto L_0x08b7
        L_0x08ee:
            r4 = move-exception
            goto L_0x0639
        L_0x08f1:
            r2 = r4
            goto L_0x0660
        L_0x08f4:
            r2 = r6
            goto L_0x0302
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.jc.a():byte[]");
    }
}
