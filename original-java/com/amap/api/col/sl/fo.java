package com.amap.api.col.sl;

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
public final class fo {
    public static String K = null;
    public static String M = null;
    public String A = null;
    public String B = null;
    public ArrayList<fa> C = new ArrayList<>();
    public String D = null;
    public String E = null;
    public ArrayList<ScanResult> F = new ArrayList<>();
    public ArrayList<ex> G = new ArrayList<>();
    public String H = null;
    public String I = null;
    public byte[] J = null;
    public String L = null;
    public String N = null;
    private byte[] O = null;
    private int P = 0;
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

    /* JADX WARNING: Removed duplicated region for block: B:316:0x085b  */
    /* JADX WARNING: Removed duplicated region for block: B:319:0x0870  */
    /* JADX WARNING: Removed duplicated region for block: B:324:0x0889 A[Catch:{ Throwable -> 0x0a99 }] */
    /* JADX WARNING: Removed duplicated region for block: B:326:0x088c A[Catch:{ Throwable -> 0x0a99 }] */
    /* JADX WARNING: Removed duplicated region for block: B:332:0x08a1 A[Catch:{ Throwable -> 0x0aa1 }] */
    /* JADX WARNING: Removed duplicated region for block: B:336:0x08b6  */
    /* JADX WARNING: Removed duplicated region for block: B:342:0x08e2  */
    /* JADX WARNING: Removed duplicated region for block: B:352:0x0902  */
    /* JADX WARNING: Removed duplicated region for block: B:355:0x0915  */
    /* JADX WARNING: Removed duplicated region for block: B:358:0x094e  */
    /* JADX WARNING: Removed duplicated region for block: B:379:0x09d9  */
    /* JADX WARNING: Removed duplicated region for block: B:407:0x0a8a A[SYNTHETIC, Splitter:B:407:0x0a8a] */
    /* JADX WARNING: Removed duplicated region for block: B:416:0x0aab A[SYNTHETIC, Splitter:B:416:0x0aab] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final byte[] a() {
        /*
            r19 = this;
            r0 = r19
            java.lang.String r2 = r0.a
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0010
            java.lang.String r2 = ""
            r0 = r19
            r0.a = r2
        L_0x0010:
            r0 = r19
            java.lang.String r2 = r0.c
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0020
            java.lang.String r2 = ""
            r0 = r19
            r0.c = r2
        L_0x0020:
            r0 = r19
            java.lang.String r2 = r0.d
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0030
            java.lang.String r2 = ""
            r0 = r19
            r0.d = r2
        L_0x0030:
            r0 = r19
            java.lang.String r2 = r0.e
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0040
            java.lang.String r2 = ""
            r0 = r19
            r0.e = r2
        L_0x0040:
            r0 = r19
            java.lang.String r2 = r0.f
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0050
            java.lang.String r2 = ""
            r0 = r19
            r0.f = r2
        L_0x0050:
            r0 = r19
            java.lang.String r2 = r0.g
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0060
            java.lang.String r2 = ""
            r0 = r19
            r0.g = r2
        L_0x0060:
            r0 = r19
            java.lang.String r2 = r0.h
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0070
            java.lang.String r2 = ""
            r0 = r19
            r0.h = r2
        L_0x0070:
            r0 = r19
            java.lang.String r2 = r0.i
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0080
            java.lang.String r2 = ""
            r0 = r19
            r0.i = r2
        L_0x0080:
            r0 = r19
            java.lang.String r2 = r0.j
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x050c
            java.lang.String r2 = "0"
            r0 = r19
            r0.j = r2
        L_0x0090:
            r0 = r19
            java.lang.String r2 = r0.k
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x052c
            java.lang.String r2 = "0"
            r0 = r19
            r0.k = r2
        L_0x00a0:
            r0 = r19
            java.lang.String r2 = r0.l
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x00b0
            java.lang.String r2 = ""
            r0 = r19
            r0.l = r2
        L_0x00b0:
            r0 = r19
            java.lang.String r2 = r0.m
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x00c0
            java.lang.String r2 = ""
            r0 = r19
            r0.m = r2
        L_0x00c0:
            r0 = r19
            java.lang.String r2 = r0.n
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x00d0
            java.lang.String r2 = ""
            r0 = r19
            r0.n = r2
        L_0x00d0:
            r0 = r19
            java.lang.String r2 = r0.o
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x00e0
            java.lang.String r2 = ""
            r0 = r19
            r0.o = r2
        L_0x00e0:
            r0 = r19
            java.lang.String r2 = r0.p
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x00f0
            java.lang.String r2 = ""
            r0 = r19
            r0.p = r2
        L_0x00f0:
            r0 = r19
            java.lang.String r2 = r0.q
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0100
            java.lang.String r2 = ""
            r0 = r19
            r0.q = r2
        L_0x0100:
            r0 = r19
            java.lang.String r2 = r0.r
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0110
            java.lang.String r2 = ""
            r0 = r19
            r0.r = r2
        L_0x0110:
            r0 = r19
            java.lang.String r2 = r0.s
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0120
            java.lang.String r2 = ""
            r0 = r19
            r0.s = r2
        L_0x0120:
            r0 = r19
            java.lang.String r2 = r0.t
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0130
            java.lang.String r2 = ""
            r0 = r19
            r0.t = r2
        L_0x0130:
            r0 = r19
            java.lang.String r2 = r0.u
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0140
            java.lang.String r2 = ""
            r0 = r19
            r0.u = r2
        L_0x0140:
            r0 = r19
            java.lang.String r2 = r0.v
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0150
            java.lang.String r2 = ""
            r0 = r19
            r0.v = r2
        L_0x0150:
            r0 = r19
            java.lang.String r2 = r0.w
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0160
            java.lang.String r2 = ""
            r0 = r19
            r0.w = r2
        L_0x0160:
            r0 = r19
            java.lang.String r2 = r0.x
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x0170
            java.lang.String r2 = ""
            r0 = r19
            r0.x = r2
        L_0x0170:
            r0 = r19
            java.lang.String r2 = r0.y
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x054c
            java.lang.String r2 = "0"
            r0 = r19
            r0.y = r2
        L_0x0180:
            r0 = r19
            int r2 = r0.z
            if (r2 <= 0) goto L_0x018a
            r3 = 15
            if (r2 <= r3) goto L_0x056c
        L_0x018a:
            r2 = 0
        L_0x018b:
            if (r2 != 0) goto L_0x0192
            r2 = 0
            r0 = r19
            r0.z = r2
        L_0x0192:
            r0 = r19
            java.lang.String r2 = r0.A
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x01a2
            java.lang.String r2 = ""
            r0 = r19
            r0.A = r2
        L_0x01a2:
            r0 = r19
            java.lang.String r2 = r0.B
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x01b2
            java.lang.String r2 = ""
            r0 = r19
            r0.B = r2
        L_0x01b2:
            r0 = r19
            java.lang.String r2 = r0.E
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x01c2
            java.lang.String r2 = ""
            r0 = r19
            r0.E = r2
        L_0x01c2:
            r0 = r19
            java.lang.String r2 = r0.H
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x01d2
            java.lang.String r2 = ""
            r0 = r19
            r0.H = r2
        L_0x01d2:
            r0 = r19
            java.lang.String r2 = r0.I
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x01e2
            java.lang.String r2 = ""
            r0 = r19
            r0.I = r2
        L_0x01e2:
            java.lang.String r2 = K
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L_0x01ee
            java.lang.String r2 = ""
            K = r2
        L_0x01ee:
            r0 = r19
            byte[] r2 = r0.J
            if (r2 != 0) goto L_0x01fb
            r2 = 0
            byte[] r2 = new byte[r2]
            r0 = r19
            r0.J = r2
        L_0x01fb:
            r2 = 2
            byte[] r10 = new byte[r2]
            r2 = 4
            byte[] r8 = new byte[r2]
            r2 = 4096(0x1000, float:5.74E-42)
            r0 = r19
            byte[] r3 = r0.J
            if (r3 == 0) goto L_0x0212
            r0 = r19
            byte[] r2 = r0.J
            int r2 = r2.length
            int r2 = r2 + 1
            int r2 = r2 + 4096
        L_0x0212:
            r0 = r19
            byte[] r3 = r0.O
            if (r3 == 0) goto L_0x021e
            r0 = r19
            int r3 = r0.P
            if (r2 <= r3) goto L_0x056f
        L_0x021e:
            byte[] r3 = new byte[r2]
            r0 = r19
            r0.O = r3
            r0 = r19
            r0.P = r2
        L_0x0228:
            r2 = 0
            r0 = r19
            java.lang.String r4 = r0.a
            byte r4 = java.lang.Byte.parseByte(r4)
            r3[r2] = r4
            r0 = r19
            short r2 = r0.b
            r4 = 0
            byte[] r2 = com.amap.api.col.sl.fy.a(r2, r4)
            r4 = 0
            r5 = 1
            int r6 = r2.length
            java.lang.System.arraycopy(r2, r4, r3, r5, r6)
            int r2 = r2.length
            int r4 = r2 + 1
            r0 = r19
            java.lang.String r2 = r0.c     // Catch:{ Throwable -> 0x0576 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x0576 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0576 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0576 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0576 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0576 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0576 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0576 }
            int r4 = r4 + r2
        L_0x025c:
            r0 = r19
            java.lang.String r2 = r0.d     // Catch:{ Throwable -> 0x0585 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x0585 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0585 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0585 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0585 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0585 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0585 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0585 }
            int r4 = r4 + r2
        L_0x0273:
            r0 = r19
            java.lang.String r2 = r0.o     // Catch:{ Throwable -> 0x0594 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x0594 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0594 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0594 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0594 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0594 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0594 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0594 }
            int r4 = r4 + r2
        L_0x028a:
            r0 = r19
            java.lang.String r2 = r0.e     // Catch:{ Throwable -> 0x05a3 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x05a3 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x05a3 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x05a3 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x05a3 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x05a3 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x05a3 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x05a3 }
            int r4 = r4 + r2
        L_0x02a1:
            r0 = r19
            java.lang.String r2 = r0.f     // Catch:{ Throwable -> 0x05b2 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x05b2 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x05b2 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x05b2 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x05b2 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x05b2 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x05b2 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x05b2 }
            int r4 = r4 + r2
        L_0x02b8:
            r0 = r19
            java.lang.String r2 = r0.g     // Catch:{ Throwable -> 0x05c1 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x05c1 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x05c1 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x05c1 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x05c1 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x05c1 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x05c1 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x05c1 }
            int r4 = r4 + r2
        L_0x02cf:
            r0 = r19
            java.lang.String r2 = r0.u     // Catch:{ Throwable -> 0x05d0 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x05d0 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x05d0 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x05d0 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x05d0 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x05d0 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x05d0 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x05d0 }
            int r4 = r4 + r2
        L_0x02e6:
            r0 = r19
            java.lang.String r2 = r0.h     // Catch:{ Throwable -> 0x05df }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x05df }
            int r5 = r2.length     // Catch:{ Throwable -> 0x05df }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x05df }
            r3[r4] = r5     // Catch:{ Throwable -> 0x05df }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x05df }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x05df }
            int r2 = r2.length     // Catch:{ Throwable -> 0x05df }
            int r4 = r4 + r2
        L_0x02fd:
            r0 = r19
            java.lang.String r2 = r0.p     // Catch:{ Throwable -> 0x05ee }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x05ee }
            int r5 = r2.length     // Catch:{ Throwable -> 0x05ee }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x05ee }
            r3[r4] = r5     // Catch:{ Throwable -> 0x05ee }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x05ee }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x05ee }
            int r2 = r2.length     // Catch:{ Throwable -> 0x05ee }
            int r4 = r4 + r2
        L_0x0314:
            r0 = r19
            java.lang.String r2 = r0.q     // Catch:{ Throwable -> 0x05fd }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x05fd }
            int r5 = r2.length     // Catch:{ Throwable -> 0x05fd }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x05fd }
            r3[r4] = r5     // Catch:{ Throwable -> 0x05fd }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x05fd }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x05fd }
            int r2 = r2.length     // Catch:{ Throwable -> 0x05fd }
            int r4 = r4 + r2
        L_0x032b:
            r0 = r19
            java.lang.String r2 = r0.t     // Catch:{ Throwable -> 0x0625 }
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Throwable -> 0x0625 }
            if (r2 == 0) goto L_0x060c
            r2 = 0
            r3[r4] = r2     // Catch:{ Throwable -> 0x0625 }
            int r4 = r4 + 1
        L_0x033a:
            r0 = r19
            java.lang.String r2 = r0.v     // Catch:{ Throwable -> 0x0634 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x0634 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0634 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0634 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0634 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0634 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0634 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0634 }
            int r4 = r4 + r2
        L_0x0351:
            r0 = r19
            java.lang.String r2 = r0.w     // Catch:{ Throwable -> 0x0643 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x0643 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0643 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0643 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0643 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0643 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0643 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0643 }
            int r4 = r4 + r2
        L_0x0368:
            java.lang.String r2 = K     // Catch:{ Throwable -> 0x0669 }
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Throwable -> 0x0669 }
            if (r2 == 0) goto L_0x0652
            r2 = 0
            r3[r4] = r2     // Catch:{ Throwable -> 0x0669 }
            int r4 = r4 + 1
        L_0x0375:
            java.lang.String r2 = M     // Catch:{ Throwable -> 0x068f }
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Throwable -> 0x068f }
            if (r2 == 0) goto L_0x0678
            r2 = 0
            r3[r4] = r2     // Catch:{ Throwable -> 0x068f }
            int r4 = r4 + 1
        L_0x0382:
            r0 = r19
            java.lang.String r2 = r0.x     // Catch:{ Throwable -> 0x069e }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x069e }
            int r5 = r2.length     // Catch:{ Throwable -> 0x069e }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x069e }
            r3[r4] = r5     // Catch:{ Throwable -> 0x069e }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x069e }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x069e }
            int r2 = r2.length     // Catch:{ Throwable -> 0x069e }
            int r2 = r2 + r4
        L_0x0399:
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
            if (r4 != r5) goto L_0x0713
            java.lang.String r4 = "mcc"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.col.sl.fy.c(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "mnc"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.col.sl.fy.c(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "lac"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.col.sl.fy.c(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "cellid"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.col.sl.fy.d(r4)
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
            if (r2 <= r5) goto L_0x06ad
            r2 = 0
        L_0x0420:
            byte r2 = (byte) r2
            r3[r4] = r2
            int r2 = r4 + 1
            r4 = 0
            byte[] r4 = com.amap.api.col.sl.fy.a(r4, r10)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r2 = r2 + 2
            r0 = r19
            java.lang.String r4 = r0.B
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 == 0) goto L_0x06b4
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
        L_0x0440:
            r0 = r19
            java.lang.String r4 = r0.D
            if (r4 == 0) goto L_0x07b8
            r0 = r19
            int r5 = r0.z
            r5 = r5 & 8
            r6 = 8
            if (r5 != r6) goto L_0x07b8
            java.lang.String r5 = "GBK"
            byte[] r4 = r4.getBytes(r5)     // Catch:{ Exception -> 0x07b7 }
            int r5 = r4.length     // Catch:{ Exception -> 0x07b7 }
            r6 = 60
            int r5 = java.lang.Math.min(r5, r6)     // Catch:{ Exception -> 0x07b7 }
            byte r6 = (byte) r5     // Catch:{ Exception -> 0x07b7 }
            r3[r2] = r6     // Catch:{ Exception -> 0x07b7 }
            int r2 = r2 + 1
            r6 = 0
            java.lang.System.arraycopy(r4, r6, r3, r2, r5)     // Catch:{ Exception -> 0x07b7 }
            int r2 = r2 + r5
            r4 = r2
        L_0x0468:
            r0 = r19
            java.util.ArrayList<com.amap.api.col.sl.fa> r9 = r0.C
            int r5 = r9.size()
            r0 = r19
            int r2 = r0.z
            r2 = r2 & 4
            r6 = 4
            if (r2 != r6) goto L_0x084c
            if (r5 <= 0) goto L_0x084c
            r2 = 0
            java.lang.Object r2 = r9.get(r2)
            com.amap.api.col.sl.fa r2 = (com.amap.api.col.sl.fa) r2
            boolean r2 = r2.o
            if (r2 != 0) goto L_0x0489
            int r2 = r5 + -1
            r5 = r2
        L_0x0489:
            byte r2 = (byte) r5
            r3[r4] = r2
            int r6 = r4 + 1
            r2 = 0
            r7 = r2
        L_0x0490:
            if (r7 >= r5) goto L_0x0851
            java.lang.Object r2 = r9.get(r7)
            com.amap.api.col.sl.fa r2 = (com.amap.api.col.sl.fa) r2
            boolean r4 = r2.o
            if (r4 == 0) goto L_0x0bad
            int r4 = r2.k
            r11 = 1
            if (r4 == r11) goto L_0x04ab
            int r4 = r2.k
            r11 = 3
            if (r4 == r11) goto L_0x04ab
            int r4 = r2.k
            r11 = 4
            if (r4 != r11) goto L_0x07c8
        L_0x04ab:
            int r4 = r2.k
            byte r4 = (byte) r4
            boolean r11 = r2.n
            if (r11 == 0) goto L_0x04b5
            r4 = r4 | 8
            byte r4 = (byte) r4
        L_0x04b5:
            r3[r6] = r4
            int r4 = r6 + 1
            int r6 = r2.a
            byte[] r6 = com.amap.api.col.sl.fy.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.b
            byte[] r6 = com.amap.api.col.sl.fy.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.c
            byte[] r6 = com.amap.api.col.sl.fy.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.d
            byte[] r6 = com.amap.api.col.sl.fy.b(r6, r8)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r6 = r6 + r4
            int r4 = r2.j
            r11 = 127(0x7f, float:1.78E-43)
            if (r4 <= r11) goto L_0x07c0
            r4 = 99
        L_0x04f5:
            byte r4 = (byte) r4
            r3[r6] = r4
            int r4 = r6 + 1
            short r2 = r2.l
            byte[] r2 = com.amap.api.col.sl.fy.a(r2, r10)
            r6 = 0
            int r11 = r2.length
            java.lang.System.arraycopy(r2, r6, r3, r4, r11)
            int r2 = r2.length
            int r2 = r2 + r4
        L_0x0507:
            int r4 = r7 + 1
            r7 = r4
            r6 = r2
            goto L_0x0490
        L_0x050c:
            r0 = r19
            java.lang.String r2 = r0.j
            java.lang.String r3 = "1"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L_0x0090
            r0 = r19
            java.lang.String r2 = r0.j
            java.lang.String r3 = "2"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L_0x0090
            java.lang.String r2 = "0"
            r0 = r19
            r0.j = r2
            goto L_0x0090
        L_0x052c:
            r0 = r19
            java.lang.String r2 = r0.k
            java.lang.String r3 = "0"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L_0x00a0
            r0 = r19
            java.lang.String r2 = r0.k
            java.lang.String r3 = "1"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L_0x00a0
            java.lang.String r2 = "0"
            r0 = r19
            r0.k = r2
            goto L_0x00a0
        L_0x054c:
            r0 = r19
            java.lang.String r2 = r0.y
            java.lang.String r3 = "1"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L_0x0180
            r0 = r19
            java.lang.String r2 = r0.y
            java.lang.String r3 = "2"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L_0x0180
            java.lang.String r2 = "0"
            r0 = r19
            r0.y = r2
            goto L_0x0180
        L_0x056c:
            r2 = 1
            goto L_0x018b
        L_0x056f:
            r0 = r19
            byte[] r2 = r0.O
            r3 = r2
            goto L_0x0228
        L_0x0576:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot2"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x025c
        L_0x0585:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot21"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x0273
        L_0x0594:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot22"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x028a
        L_0x05a3:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot23"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x02a1
        L_0x05b2:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot24"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x02b8
        L_0x05c1:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot25"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x02cf
        L_0x05d0:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot26"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x02e6
        L_0x05df:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot27"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x02fd
        L_0x05ee:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot28"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x0314
        L_0x05fd:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot29"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x032b
        L_0x060c:
            r0 = r19
            java.lang.String r2 = r0.t     // Catch:{ Throwable -> 0x0625 }
            r0 = r19
            byte[] r2 = r0.a(r2)     // Catch:{ Throwable -> 0x0625 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0625 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0625 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0625 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0625 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0625 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0625 }
            int r4 = r4 + r2
            goto L_0x033a
        L_0x0625:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot219"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x033a
        L_0x0634:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot211"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x0351
        L_0x0643:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot212"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x0368
        L_0x0652:
            java.lang.String r2 = K     // Catch:{ Throwable -> 0x0669 }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x0669 }
            int r5 = r2.length     // Catch:{ Throwable -> 0x0669 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0669 }
            r3[r4] = r5     // Catch:{ Throwable -> 0x0669 }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x0669 }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x0669 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x0669 }
            int r4 = r4 + r2
            goto L_0x0375
        L_0x0669:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot213"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x0375
        L_0x0678:
            java.lang.String r2 = M     // Catch:{ Throwable -> 0x068f }
            java.lang.String r5 = "GBK"
            byte[] r2 = r2.getBytes(r5)     // Catch:{ Throwable -> 0x068f }
            int r5 = r2.length     // Catch:{ Throwable -> 0x068f }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x068f }
            r3[r4] = r5     // Catch:{ Throwable -> 0x068f }
            int r4 = r4 + 1
            r5 = 0
            int r6 = r2.length     // Catch:{ Throwable -> 0x068f }
            java.lang.System.arraycopy(r2, r5, r3, r4, r6)     // Catch:{ Throwable -> 0x068f }
            int r2 = r2.length     // Catch:{ Throwable -> 0x068f }
            int r4 = r4 + r2
            goto L_0x0382
        L_0x068f:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot214"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r4 = r4 + 1
            goto L_0x0382
        L_0x069e:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot213"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
            r2 = 0
            r3[r4] = r2
            int r2 = r4 + 1
            goto L_0x0399
        L_0x06ad:
            r5 = -128(0xffffffffffffff80, float:NaN)
            if (r2 >= r5) goto L_0x0420
            r2 = 0
            goto L_0x0420
        L_0x06b4:
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
        L_0x06ca:
            if (r4 >= r6) goto L_0x0440
            java.lang.String r5 = "lac"
            r0 = r19
            java.lang.String r5 = r0.a(r5, r4)
            byte[] r5 = com.amap.api.col.sl.fy.c(r5)
            r7 = 0
            int r9 = r5.length
            java.lang.System.arraycopy(r5, r7, r3, r2, r9)
            int r5 = r5.length
            int r2 = r2 + r5
            java.lang.String r5 = "cellid"
            r0 = r19
            java.lang.String r5 = r0.a(r5, r4)
            byte[] r5 = com.amap.api.col.sl.fy.d(r5)
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
            if (r2 <= r7) goto L_0x070d
            r2 = 0
        L_0x0703:
            byte r2 = (byte) r2
            r3[r5] = r2
            int r5 = r5 + 1
            int r2 = r4 + 1
            r4 = r2
            r2 = r5
            goto L_0x06ca
        L_0x070d:
            r7 = -128(0xffffffffffffff80, float:NaN)
            if (r2 >= r7) goto L_0x0703
            r2 = 0
            goto L_0x0703
        L_0x0713:
            r5 = 2
            if (r4 != r5) goto L_0x0440
            java.lang.String r4 = "mcc"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.col.sl.fy.c(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "sid"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.col.sl.fy.c(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "nid"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.col.sl.fy.c(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "bid"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.col.sl.fy.c(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "lon"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.col.sl.fy.d(r4)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r4 = r4.length
            int r2 = r2 + r4
            java.lang.String r4 = "lat"
            r0 = r19
            java.lang.String r4 = r0.b(r4)
            byte[] r4 = com.amap.api.col.sl.fy.d(r4)
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
            if (r2 <= r5) goto L_0x07b1
            r2 = 0
        L_0x0799:
            byte r2 = (byte) r2
            r3[r4] = r2
            int r2 = r4 + 1
            r4 = 0
            byte[] r4 = com.amap.api.col.sl.fy.a(r4, r10)
            r5 = 0
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)
            int r2 = r2 + 2
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
            goto L_0x0440
        L_0x07b1:
            r5 = -128(0xffffffffffffff80, float:NaN)
            if (r2 >= r5) goto L_0x0799
            r2 = 0
            goto L_0x0799
        L_0x07b7:
            r4 = move-exception
        L_0x07b8:
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
            r4 = r2
            goto L_0x0468
        L_0x07c0:
            r11 = -128(0xffffffffffffff80, float:NaN)
            if (r4 >= r11) goto L_0x04f5
            r4 = 99
            goto L_0x04f5
        L_0x07c8:
            int r4 = r2.k
            r11 = 2
            if (r4 != r11) goto L_0x0bad
            int r4 = r2.k
            byte r4 = (byte) r4
            boolean r11 = r2.n
            if (r11 == 0) goto L_0x07d7
            r4 = r4 | 8
            byte r4 = (byte) r4
        L_0x07d7:
            r3[r6] = r4
            int r4 = r6 + 1
            int r6 = r2.a
            byte[] r6 = com.amap.api.col.sl.fy.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.g
            byte[] r6 = com.amap.api.col.sl.fy.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.h
            byte[] r6 = com.amap.api.col.sl.fy.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.i
            byte[] r6 = com.amap.api.col.sl.fy.a(r6, r10)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.f
            byte[] r6 = com.amap.api.col.sl.fy.b(r6, r8)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r4 = r4 + r6
            int r6 = r2.e
            byte[] r6 = com.amap.api.col.sl.fy.b(r6, r8)
            r11 = 0
            int r12 = r6.length
            java.lang.System.arraycopy(r6, r11, r3, r4, r12)
            int r6 = r6.length
            int r6 = r6 + r4
            int r4 = r2.j
            r11 = 127(0x7f, float:1.78E-43)
            if (r4 <= r11) goto L_0x0845
            r4 = 99
        L_0x0831:
            byte r4 = (byte) r4
            r3[r6] = r4
            int r4 = r6 + 1
            short r2 = r2.l
            byte[] r2 = com.amap.api.col.sl.fy.a(r2, r10)
            r6 = 0
            int r11 = r2.length
            java.lang.System.arraycopy(r2, r6, r3, r4, r11)
            int r2 = r2.length
            int r2 = r2 + r4
            goto L_0x0507
        L_0x0845:
            r11 = -128(0xffffffffffffff80, float:NaN)
            if (r4 >= r11) goto L_0x0831
            r4 = 99
            goto L_0x0831
        L_0x084c:
            r2 = 0
            r3[r4] = r2
            int r6 = r4 + 1
        L_0x0851:
            r0 = r19
            java.lang.String r2 = r0.E
            int r2 = r2.length()
            if (r2 != 0) goto L_0x094e
            r2 = 0
            r3[r6] = r2
            int r2 = r6 + 1
        L_0x0860:
            r0 = r19
            java.util.ArrayList<android.net.wifi.ScanResult> r11 = r0.F
            int r4 = r11.size()
            r5 = 25
            int r12 = java.lang.Math.min(r4, r5)
            if (r12 != 0) goto L_0x09d9
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
        L_0x0875:
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
            r0 = r19
            java.lang.String r4 = r0.I     // Catch:{ Throwable -> 0x0a99 }
            java.lang.String r5 = "GBK"
            byte[] r4 = r4.getBytes(r5)     // Catch:{ Throwable -> 0x0a99 }
            int r5 = r4.length     // Catch:{ Throwable -> 0x0a99 }
            r6 = 127(0x7f, float:1.78E-43)
            if (r5 <= r6) goto L_0x088a
            r4 = 0
        L_0x088a:
            if (r4 != 0) goto L_0x0a8a
            r4 = 0
            r3[r2] = r4     // Catch:{ Throwable -> 0x0a99 }
            int r2 = r2 + 1
        L_0x0891:
            r4 = 2
            byte[] r4 = new byte[r4]
            r4 = {0, 0} // fill-array
            r0 = r19
            java.lang.String r5 = r0.L     // Catch:{ Throwable -> 0x0aa1 }
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch:{ Throwable -> 0x0aa1 }
            if (r5 != 0) goto L_0x08ad
            r0 = r19
            java.lang.String r4 = r0.L     // Catch:{ Throwable -> 0x0aa1 }
            int r4 = r4.length()     // Catch:{ Throwable -> 0x0aa1 }
            byte[] r4 = com.amap.api.col.sl.fy.a(r4, r10)     // Catch:{ Throwable -> 0x0aa1 }
        L_0x08ad:
            r6 = 0
            r7 = 2
            java.lang.System.arraycopy(r4, r6, r3, r2, r7)     // Catch:{ Throwable -> 0x0aa1 }
            int r2 = r2 + 2
            if (r5 != 0) goto L_0x08c7
            r0 = r19
            java.lang.String r4 = r0.L     // Catch:{ Throwable -> 0x0ba7 }
            java.lang.String r5 = "GBK"
            byte[] r4 = r4.getBytes(r5)     // Catch:{ Throwable -> 0x0ba7 }
            r5 = 0
            int r6 = r4.length     // Catch:{ Throwable -> 0x0ba7 }
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)     // Catch:{ Throwable -> 0x0ba7 }
            int r4 = r4.length     // Catch:{ Throwable -> 0x0ba7 }
            int r2 = r2 + r4
        L_0x08c7:
            r0 = r19
            java.util.ArrayList<com.amap.api.col.sl.ex> r7 = r0.G
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
            if (r8 != 0) goto L_0x0aab
            r4 = 0
            byte[] r4 = com.amap.api.col.sl.fy.a(r4, r10)     // Catch:{ Throwable -> 0x0aa6 }
            r5 = 0
            r6 = 2
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)     // Catch:{ Throwable -> 0x0aa6 }
            int r2 = r2 + 2
        L_0x08ee:
            r4 = 2
            byte[] r4 = new byte[r4]
            r4 = {0, 0} // fill-array
            r5 = 0
            r6 = 2
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)     // Catch:{ Throwable -> 0x0ba2 }
            int r2 = r2 + 2
        L_0x08fb:
            r4 = 0
            r0 = r19
            byte[] r5 = r0.J
            if (r5 == 0) goto L_0x0907
            r0 = r19
            byte[] r4 = r0.J
            int r4 = r4.length
        L_0x0907:
            r5 = 0
            byte[] r5 = com.amap.api.col.sl.fy.a(r4, r5)
            r6 = 0
            int r7 = r5.length
            java.lang.System.arraycopy(r5, r6, r3, r2, r7)
            int r5 = r5.length
            int r2 = r2 + r5
            if (r4 <= 0) goto L_0x0928
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
        L_0x0928:
            byte[] r4 = new byte[r2]
            r5 = 0
            r6 = 0
            java.lang.System.arraycopy(r3, r5, r4, r6, r2)
            java.util.zip.CRC32 r3 = new java.util.zip.CRC32
            r3.<init>()
            r3.update(r4)
            long r6 = r3.getValue()
            byte[] r3 = com.amap.api.col.sl.fy.a(r6)
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
        L_0x094e:
            r2 = 1
            r3[r6] = r2
            int r4 = r6 + 1
            r0 = r19
            java.lang.String r2 = r0.E     // Catch:{ Throwable -> 0x09b1 }
            java.lang.String r5 = ","
            java.lang.String[] r5 = r2.split(r5)     // Catch:{ Throwable -> 0x09b1 }
            r2 = 0
            r2 = r5[r2]     // Catch:{ Throwable -> 0x09b1 }
            r0 = r19
            byte[] r2 = r0.a(r2)     // Catch:{ Throwable -> 0x09b1 }
            r6 = 0
            int r7 = r2.length     // Catch:{ Throwable -> 0x09b1 }
            java.lang.System.arraycopy(r2, r6, r3, r4, r7)     // Catch:{ Throwable -> 0x09b1 }
            int r2 = r2.length     // Catch:{ Throwable -> 0x09b1 }
            int r4 = r4 + r2
            r2 = 2
            r2 = r5[r2]     // Catch:{ Throwable -> 0x099d }
            java.lang.String r6 = "GBK"
            byte[] r2 = r2.getBytes(r6)     // Catch:{ Throwable -> 0x099d }
            int r6 = r2.length     // Catch:{ Throwable -> 0x099d }
            byte r6 = (byte) r6     // Catch:{ Throwable -> 0x099d }
            r3[r4] = r6     // Catch:{ Throwable -> 0x099d }
            int r4 = r4 + 1
            r6 = 0
            int r7 = r2.length     // Catch:{ Throwable -> 0x099d }
            java.lang.System.arraycopy(r2, r6, r3, r4, r7)     // Catch:{ Throwable -> 0x099d }
            int r2 = r2.length     // Catch:{ Throwable -> 0x099d }
            int r4 = r4 + r2
        L_0x0983:
            r2 = 1
            r2 = r5[r2]     // Catch:{ Throwable -> 0x09b1 }
            int r2 = java.lang.Integer.parseInt(r2)     // Catch:{ Throwable -> 0x09b1 }
            r5 = 127(0x7f, float:1.78E-43)
            if (r2 <= r5) goto L_0x09ab
            r2 = 0
        L_0x098f:
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch:{ Throwable -> 0x09b1 }
            byte r2 = java.lang.Byte.parseByte(r2)     // Catch:{ Throwable -> 0x09b1 }
            r3[r4] = r2     // Catch:{ Throwable -> 0x09b1 }
            int r2 = r4 + 1
            goto L_0x0860
        L_0x099d:
            r2 = move-exception
            java.lang.String r6 = "Req"
            java.lang.String r7 = "buildV4Dot214"
            com.amap.api.col.sl.fq.a(r2, r6, r7)     // Catch:{ Throwable -> 0x09b1 }
            r2 = 0
            r3[r4] = r2     // Catch:{ Throwable -> 0x09b1 }
            int r4 = r4 + 1
            goto L_0x0983
        L_0x09ab:
            r5 = -128(0xffffffffffffff80, float:NaN)
            if (r2 >= r5) goto L_0x098f
            r2 = 0
            goto L_0x098f
        L_0x09b1:
            r2 = move-exception
            java.lang.String r5 = "Req"
            java.lang.String r6 = "buildV4Dot216"
            com.amap.api.col.sl.fq.a(r2, r5, r6)
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
            goto L_0x0860
        L_0x09d9:
            byte r4 = (byte) r12
            r3[r2] = r4
            int r6 = r2 + 1
            int r2 = com.amap.api.col.sl.fy.c()
            r4 = 17
            if (r2 < r4) goto L_0x0a64
            r2 = 1
            r9 = r2
        L_0x09e8:
            r4 = 0
            if (r9 == 0) goto L_0x09f3
            long r4 = com.amap.api.col.sl.fy.b()
            r14 = 1000(0x3e8, double:4.94E-321)
            long r4 = r4 / r14
        L_0x09f3:
            r2 = 0
            r8 = r2
        L_0x09f5:
            if (r8 >= r12) goto L_0x0a75
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
            java.lang.String r7 = r2.SSID     // Catch:{ Exception -> 0x0a67 }
            java.lang.String r13 = "GBK"
            byte[] r7 = r7.getBytes(r13)     // Catch:{ Exception -> 0x0a67 }
            int r13 = r7.length     // Catch:{ Exception -> 0x0a67 }
            byte r13 = (byte) r13     // Catch:{ Exception -> 0x0a67 }
            r3[r6] = r13     // Catch:{ Exception -> 0x0a67 }
            int r6 = r6 + 1
            r13 = 0
            int r14 = r7.length     // Catch:{ Exception -> 0x0a67 }
            java.lang.System.arraycopy(r7, r13, r3, r6, r14)     // Catch:{ Exception -> 0x0a67 }
            int r7 = r7.length     // Catch:{ Exception -> 0x0a67 }
            int r6 = r6 + r7
            r7 = r6
        L_0x0a22:
            int r6 = r2.level
            r13 = 127(0x7f, float:1.78E-43)
            if (r6 <= r13) goto L_0x0a6f
            r6 = 0
        L_0x0a29:
            java.lang.String r6 = java.lang.String.valueOf(r6)
            byte r6 = java.lang.Byte.parseByte(r6)
            r3[r7] = r6
            int r7 = r7 + 1
            if (r9 == 0) goto L_0x0a47
            long r14 = r2.timestamp
            long r14 = r4 - r14
            r16 = 1000000(0xf4240, double:4.940656E-318)
            long r14 = r14 / r16
            r16 = 1
            long r14 = r14 + r16
            int r6 = (int) r14
            if (r6 >= 0) goto L_0x0a48
        L_0x0a47:
            r6 = 0
        L_0x0a48:
            byte[] r6 = com.amap.api.col.sl.fy.a(r6, r10)
            r13 = 0
            int r14 = r6.length
            java.lang.System.arraycopy(r6, r13, r3, r7, r14)
            int r6 = r6.length
            int r6 = r6 + r7
            int r2 = r2.frequency
            byte[] r2 = com.amap.api.col.sl.fy.a(r2, r10)
            r7 = 0
            int r13 = r2.length
            java.lang.System.arraycopy(r2, r7, r3, r6, r13)
            int r2 = r2.length
            int r6 = r6 + r2
            int r2 = r8 + 1
            r8 = r2
            goto L_0x09f5
        L_0x0a64:
            r2 = 0
            r9 = r2
            goto L_0x09e8
        L_0x0a67:
            r7 = move-exception
            r7 = 0
            r3[r6] = r7
            int r6 = r6 + 1
            r7 = r6
            goto L_0x0a22
        L_0x0a6f:
            r13 = -128(0xffffffffffffff80, float:NaN)
            if (r6 >= r13) goto L_0x0a29
            r6 = 0
            goto L_0x0a29
        L_0x0a75:
            r0 = r19
            java.lang.String r2 = r0.H
            int r2 = java.lang.Integer.parseInt(r2)
            byte[] r2 = com.amap.api.col.sl.fy.a(r2, r10)
            r4 = 0
            int r5 = r2.length
            java.lang.System.arraycopy(r2, r4, r3, r6, r5)
            int r2 = r2.length
            int r2 = r2 + r6
            goto L_0x0875
        L_0x0a8a:
            int r5 = r4.length     // Catch:{ Throwable -> 0x0a99 }
            byte r5 = (byte) r5     // Catch:{ Throwable -> 0x0a99 }
            r3[r2] = r5     // Catch:{ Throwable -> 0x0a99 }
            int r2 = r2 + 1
            r5 = 0
            int r6 = r4.length     // Catch:{ Throwable -> 0x0a99 }
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)     // Catch:{ Throwable -> 0x0a99 }
            int r4 = r4.length     // Catch:{ Throwable -> 0x0a99 }
            int r2 = r2 + r4
            goto L_0x0891
        L_0x0a99:
            r4 = move-exception
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
            goto L_0x0891
        L_0x0aa1:
            r4 = move-exception
            int r2 = r2 + 2
            goto L_0x08c7
        L_0x0aa6:
            r4 = move-exception
            int r2 = r2 + 2
            goto L_0x08ee
        L_0x0aab:
            byte[] r4 = com.amap.api.col.sl.fy.a(r8, r10)     // Catch:{ Throwable -> 0x0b68 }
            r5 = 0
            r6 = 2
            java.lang.System.arraycopy(r4, r5, r3, r2, r6)     // Catch:{ Throwable -> 0x0b68 }
            int r2 = r2 + 2
        L_0x0ab6:
            r4 = 0
            r5 = r4
            r4 = r2
        L_0x0ab9:
            if (r5 >= r8) goto L_0x0baa
            java.lang.Object r2 = r7.get(r5)
            com.amap.api.col.sl.ex r2 = (com.amap.api.col.sl.ex) r2
            byte[] r9 = r2.c     // Catch:{ Throwable -> 0x0b70 }
            r10 = 0
            int r6 = r9.length     // Catch:{ Throwable -> 0x0b70 }
            r11 = 6
            if (r6 <= r11) goto L_0x0b6d
            r6 = 6
        L_0x0ac9:
            java.lang.System.arraycopy(r9, r10, r3, r4, r6)     // Catch:{ Throwable -> 0x0b70 }
            int r4 = r4 + 6
            r6 = r4
        L_0x0acf:
            java.lang.String r4 = r2.a     // Catch:{ Throwable -> 0x0b79 }
            java.lang.String r9 = "GBK"
            byte[] r9 = r4.getBytes(r9)     // Catch:{ Throwable -> 0x0b79 }
            r10 = 0
            int r4 = r9.length     // Catch:{ Throwable -> 0x0b79 }
            r11 = 32
            if (r4 <= r11) goto L_0x0b76
            r4 = 32
        L_0x0adf:
            java.lang.System.arraycopy(r9, r10, r3, r6, r4)     // Catch:{ Throwable -> 0x0b79 }
            int r4 = r6 + 32
            r6 = r4
        L_0x0ae5:
            r4 = 4
            byte[] r4 = new byte[r4]     // Catch:{ Throwable -> 0x0b81 }
            r9 = 0
            r10 = 0
            r4[r9] = r10     // Catch:{ Throwable -> 0x0b81 }
            r9 = 1
            r10 = 0
            r4[r9] = r10     // Catch:{ Throwable -> 0x0b81 }
            r9 = 2
            r10 = 0
            r4[r9] = r10     // Catch:{ Throwable -> 0x0b81 }
            r9 = 3
            r10 = 0
            r4[r9] = r10     // Catch:{ Throwable -> 0x0b81 }
            java.lang.String r4 = r2.d     // Catch:{ Throwable -> 0x0b81 }
            java.lang.String r9 = "GBK"
            byte[] r9 = r4.getBytes(r9)     // Catch:{ Throwable -> 0x0b81 }
            r10 = 0
            int r4 = r9.length     // Catch:{ Throwable -> 0x0b81 }
            r11 = 4
            if (r4 <= r11) goto L_0x0b7f
            r4 = 4
        L_0x0b06:
            java.lang.System.arraycopy(r9, r10, r3, r6, r4)     // Catch:{ Throwable -> 0x0b81 }
            int r4 = r6 + 4
            r6 = r4
        L_0x0b0c:
            r4 = 4
            byte[] r4 = new byte[r4]     // Catch:{ Throwable -> 0x0b88 }
            r9 = 0
            r10 = 0
            r4[r9] = r10     // Catch:{ Throwable -> 0x0b88 }
            r9 = 1
            r10 = 0
            r4[r9] = r10     // Catch:{ Throwable -> 0x0b88 }
            r9 = 2
            r10 = 0
            r4[r9] = r10     // Catch:{ Throwable -> 0x0b88 }
            r9 = 3
            r10 = 0
            r4[r9] = r10     // Catch:{ Throwable -> 0x0b88 }
            java.lang.String r4 = r2.e     // Catch:{ Throwable -> 0x0b88 }
            java.lang.String r9 = "GBK"
            byte[] r9 = r4.getBytes(r9)     // Catch:{ Throwable -> 0x0b88 }
            r10 = 0
            int r4 = r9.length     // Catch:{ Throwable -> 0x0b88 }
            r11 = 4
            if (r4 <= r11) goto L_0x0b86
            r4 = 4
        L_0x0b2d:
            java.lang.System.arraycopy(r9, r10, r3, r6, r4)     // Catch:{ Throwable -> 0x0b88 }
            int r4 = r6 + 4
        L_0x0b32:
            int r6 = r2.g     // Catch:{ Throwable -> 0x0b96 }
            r9 = 127(0x7f, float:1.78E-43)
            if (r6 <= r9) goto L_0x0b8c
            r6 = 0
            r2.g = r6     // Catch:{ Throwable -> 0x0b96 }
        L_0x0b3b:
            int r6 = r2.g     // Catch:{ Throwable -> 0x0b96 }
            byte r6 = (byte) r6     // Catch:{ Throwable -> 0x0b96 }
            r3[r4] = r6     // Catch:{ Throwable -> 0x0b96 }
            int r4 = r4 + 1
        L_0x0b42:
            r6 = 4
            byte[] r6 = new byte[r6]     // Catch:{ Throwable -> 0x0b9a }
            int r9 = r2.f     // Catch:{ Throwable -> 0x0b9a }
            byte[] r6 = com.amap.api.col.sl.fy.b(r9, r6)     // Catch:{ Throwable -> 0x0b9a }
            r9 = 0
            int r10 = r6.length     // Catch:{ Throwable -> 0x0b9a }
            java.lang.System.arraycopy(r6, r9, r3, r4, r10)     // Catch:{ Throwable -> 0x0b9a }
            int r4 = r4 + 4
        L_0x0b52:
            r6 = 4
            byte[] r6 = new byte[r6]     // Catch:{ Throwable -> 0x0b9e }
            int r2 = r2.j     // Catch:{ Throwable -> 0x0b9e }
            byte[] r2 = com.amap.api.col.sl.fy.b(r2, r6)     // Catch:{ Throwable -> 0x0b9e }
            r6 = 0
            int r9 = r2.length     // Catch:{ Throwable -> 0x0b9e }
            java.lang.System.arraycopy(r2, r6, r3, r4, r9)     // Catch:{ Throwable -> 0x0b9e }
            int r2 = r4 + 4
        L_0x0b62:
            int r4 = r5 + 1
            r5 = r4
            r4 = r2
            goto L_0x0ab9
        L_0x0b68:
            r4 = move-exception
            int r2 = r2 + 2
            goto L_0x0ab6
        L_0x0b6d:
            int r6 = r9.length     // Catch:{ Throwable -> 0x0b70 }
            goto L_0x0ac9
        L_0x0b70:
            r6 = move-exception
            int r4 = r4 + 6
            r6 = r4
            goto L_0x0acf
        L_0x0b76:
            int r4 = r9.length     // Catch:{ Throwable -> 0x0b79 }
            goto L_0x0adf
        L_0x0b79:
            r4 = move-exception
            int r4 = r6 + 32
            r6 = r4
            goto L_0x0ae5
        L_0x0b7f:
            int r4 = r9.length     // Catch:{ Throwable -> 0x0b81 }
            goto L_0x0b06
        L_0x0b81:
            r4 = move-exception
            int r4 = r6 + 4
            r6 = r4
            goto L_0x0b0c
        L_0x0b86:
            int r4 = r9.length     // Catch:{ Throwable -> 0x0b88 }
            goto L_0x0b2d
        L_0x0b88:
            r4 = move-exception
            int r4 = r6 + 4
            goto L_0x0b32
        L_0x0b8c:
            int r6 = r2.g     // Catch:{ Throwable -> 0x0b96 }
            r9 = -128(0xffffffffffffff80, float:NaN)
            if (r6 >= r9) goto L_0x0b3b
            r6 = 0
            r2.g = r6     // Catch:{ Throwable -> 0x0b96 }
            goto L_0x0b3b
        L_0x0b96:
            r6 = move-exception
            int r4 = r4 + 1
            goto L_0x0b42
        L_0x0b9a:
            r6 = move-exception
            int r4 = r4 + 4
            goto L_0x0b52
        L_0x0b9e:
            r2 = move-exception
            int r2 = r4 + 4
            goto L_0x0b62
        L_0x0ba2:
            r4 = move-exception
            int r2 = r2 + 2
            goto L_0x08fb
        L_0x0ba7:
            r4 = move-exception
            goto L_0x08c7
        L_0x0baa:
            r2 = r4
            goto L_0x08ee
        L_0x0bad:
            r2 = r6
            goto L_0x0507
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fo.a():byte[]");
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
            com.amap.api.col.sl.fq.a(r0, r1, r2)
            java.lang.String r0 = "00:00:00:00:00:00"
            byte[] r0 = r7.a(r0)
            goto L_0x0042
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fo.a(java.lang.String):byte[]");
    }

    private String b(String str) {
        if (!this.A.contains(str + ">")) {
            return "0";
        }
        int indexOf = this.A.indexOf(str + ">");
        return this.A.substring(indexOf + str.length() + 1, this.A.indexOf("</" + str));
    }

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

    public final void a(Context context, boolean z2, boolean z3, fb fbVar, fe feVar, ConnectivityManager connectivityManager, ey eyVar, String str, String str2) {
        String str3;
        String str4;
        String str5;
        String str6;
        String sb;
        String str7 = "0";
        String str8 = "0";
        String str9 = "0";
        String str10 = "0";
        String str11 = "0";
        String f2 = bp.f(context);
        int f3 = fy.f();
        String str12 = "";
        String str13 = "";
        String str14 = "";
        this.L = str2;
        String str15 = "api_serverSDK_130905";
        String str16 = "S128DF1572465B890OE3F7A13167KLEI";
        if (!z3) {
            str3 = "UC_nlp_20131029";
            str4 = "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U";
        } else {
            str3 = str15;
            str4 = str16;
        }
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        int d2 = fbVar.d();
        int e2 = fbVar.e();
        TelephonyManager f4 = fbVar.f();
        ArrayList a2 = fbVar.a();
        ArrayList b2 = fbVar.b();
        ArrayList b3 = feVar.b();
        if (e2 == 2) {
            str5 = "1";
        } else {
            str5 = str7;
        }
        if (f4 != null) {
            if (TextUtils.isEmpty(fq.d)) {
                try {
                    fq.d = bu.t(context);
                } catch (Throwable th) {
                    fq.a(th, "APS", "getApsReq part4");
                }
            }
            if (TextUtils.isEmpty(fq.d)) {
                fq.d = "888888888888888";
            }
            if (TextUtils.isEmpty(fq.e)) {
                try {
                    fq.e = f4.getSubscriberId();
                } catch (SecurityException e3) {
                } catch (Throwable th2) {
                    fq.a(th2, "APS", "getApsReq part2");
                }
            }
            if (TextUtils.isEmpty(fq.e)) {
                fq.e = "888888888888888";
            }
        }
        NetworkInfo networkInfo = null;
        try {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Throwable th3) {
            fq.a(th3, "APS", "getApsReq part");
        }
        WifiInfo g2 = feVar.g();
        boolean a3 = fe.a(g2);
        if (fy.a(networkInfo) != -1) {
            String b4 = fy.b(f4);
            if (!a3 || !feVar.f()) {
                str12 = b4;
                str13 = "1";
            } else {
                str12 = b4;
                str13 = "2";
            }
        }
        if (!a2.isEmpty()) {
            StringBuilder sb4 = new StringBuilder();
            switch (e2) {
                case 1:
                    fa faVar = (fa) a2.get(0);
                    sb4.delete(0, sb4.length());
                    sb4.append("<mcc>").append(faVar.a).append("</mcc>");
                    sb4.append("<mnc>").append(faVar.b).append("</mnc>");
                    sb4.append("<lac>").append(faVar.c).append("</lac>");
                    sb4.append("<cellid>").append(faVar.d);
                    sb4.append("</cellid>");
                    sb4.append("<signal>").append(faVar.j);
                    sb4.append("</signal>");
                    String sb5 = sb4.toString();
                    int i2 = 1;
                    while (true) {
                        int i3 = i2;
                        if (i3 >= a2.size()) {
                            sb = sb5;
                            break;
                        } else {
                            fa faVar2 = (fa) a2.get(i3);
                            sb2.append(faVar2.c).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            sb2.append(faVar2.d).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            sb2.append(faVar2.j);
                            if (i3 < a2.size() - 1) {
                                sb2.append("*");
                            }
                            i2 = i3 + 1;
                        }
                    }
                case 2:
                    fa faVar3 = (fa) a2.get(0);
                    sb4.delete(0, sb4.length());
                    sb4.append("<mcc>").append(faVar3.a).append("</mcc>");
                    sb4.append("<sid>").append(faVar3.g).append("</sid>");
                    sb4.append("<nid>").append(faVar3.h).append("</nid>");
                    sb4.append("<bid>").append(faVar3.i).append("</bid>");
                    if (faVar3.f > 0 && faVar3.e > 0) {
                        sb4.append("<lon>").append(faVar3.f).append("</lon>");
                        sb4.append("<lat>").append(faVar3.e).append("</lat>");
                    }
                    sb4.append("<signal>").append(faVar3.j).append("</signal>");
                    sb = sb4.toString();
                    break;
                default:
                    sb = str14;
                    break;
            }
            sb4.delete(0, sb4.length());
            str6 = sb;
        } else {
            str6 = str14;
        }
        if ((d2 & 4) != 4 || b2.isEmpty()) {
            this.C.clear();
        } else {
            this.C.clear();
            this.C.addAll(b2);
        }
        if (feVar.f()) {
            if (a3) {
                sb3.append(feVar.g().getBSSID()).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                int rssi = feVar.g().getRssi();
                if (rssi < -128) {
                    rssi = 0;
                } else if (rssi > 127) {
                    rssi = 0;
                }
                sb3.append(rssi).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                String ssid = g2.getSSID();
                int i4 = 32;
                try {
                    i4 = g2.getSSID().getBytes("UTF-8").length;
                } catch (Exception e4) {
                }
                if (i4 >= 32) {
                    ssid = "unkwn";
                }
                sb3.append(ssid.replace("*", "."));
            }
            if (!(b3 == null || this.F == null)) {
                this.F.clear();
                this.F.addAll(b3);
            }
        } else {
            feVar.c();
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
        this.f = fy.d();
        this.g = "android" + fy.e();
        this.h = fy.b(context);
        this.i = str5;
        this.j = str8;
        this.k = "0";
        this.l = str9;
        this.m = str10;
        this.n = str11;
        this.o = f2;
        this.p = fq.d;
        this.q = fq.e;
        this.s = String.valueOf(f3);
        this.t = fy.i(context);
        this.v = "3.8.0";
        this.w = str;
        this.u = "";
        this.x = str12;
        this.y = str13;
        this.z = d2;
        this.A = str6;
        this.B = sb2.toString();
        this.D = fbVar.j();
        this.H = fe.k();
        this.E = sb3.toString();
        if (eyVar != null) {
            this.G = eyVar.c();
        }
        try {
            if (TextUtils.isEmpty(K)) {
                K = bu.h(context);
            }
        } catch (Throwable th4) {
        }
        try {
            if (TextUtils.isEmpty(M)) {
                M = bu.b(context);
            }
        } catch (Throwable th5) {
        }
        sb2.delete(0, sb2.length());
        sb3.delete(0, sb3.length());
    }
}
