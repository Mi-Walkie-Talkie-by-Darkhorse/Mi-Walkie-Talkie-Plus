package com.amap.api.col.sl;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.amap.api.col.sl.bq.a.b;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* compiled from: AuthUtil */
public final class fp {
    private static boolean A = true;
    private static int B = 1000;
    private static int C = 200;
    private static boolean D = false;
    private static boolean E = true;
    private static boolean F = true;
    private static int G = -1;
    private static long H = 0;
    private static ArrayList<String> I = new ArrayList<>();
    private static boolean J = false;
    private static int K = -1;
    private static long L = 0;
    private static ArrayList<String> M = new ArrayList<>();
    private static String N;
    private static String O;
    private static boolean P = false;
    private static boolean Q = false;
    private static int R = 3000;
    private static int S = 3000;
    private static boolean T = true;
    private static long U = 300000;
    private static boolean V = false;
    private static boolean W = false;
    private static boolean X = false;
    private static List<fs> Y = new ArrayList();
    private static boolean Z = false;
    public static boolean a = true;
    private static long aa = 0;
    private static int ab = 0;
    private static int ac = 0;
    private static List<String> ad = new ArrayList();
    private static boolean ae = true;
    private static int af = 80;
    private static boolean ag = false;
    static boolean b = false;
    static boolean c = false;
    static int d = 3600000;
    static long e = 0;
    static long f = 0;
    static boolean g = false;
    static boolean h = true;
    private static String i = "提示信息";
    private static String j = "确认";
    private static String k = "取消";
    private static String l = "";
    private static String m = "";
    private static String n = "";
    private static boolean o = false;
    private static long p = 0;
    private static long q = 0;
    private static long r = 5000;
    private static boolean s = false;
    private static int t = 0;
    private static boolean u = false;
    private static int v = 0;
    private static boolean w = false;
    private static int x = 3600000;
    private static int y = 0;
    private static int z = 0;

    /* compiled from: AuthUtil */
    static class a {
        boolean a = false;
        String b = "0";
        boolean c = false;
        int d = 5;

        a() {
        }
    }

    public static boolean a(Context context) {
        boolean z2 = false;
        E = true;
        try {
            com.amap.api.col.sl.bq.a a2 = bq.a(context, fq.b(), fq.b(context));
            if (a2 != null) {
                z2 = a(context, a2);
            }
        } catch (Throwable th) {
            fq.a(th, "AuthUtil", "getConfig");
        }
        f = fy.b();
        e = fy.b();
        return z2;
    }

    public static boolean a(long j2) {
        long b2 = fy.b();
        if (!o || b2 - q > p || b2 - j2 < r) {
            return false;
        }
        return true;
    }

    public static boolean a() {
        return s;
    }

    public static int b() {
        return t;
    }

    public static boolean c() {
        return u;
    }

    public static int d() {
        return v;
    }

    public static boolean e() {
        return w;
    }

    public static String f() {
        return i;
    }

    public static String g() {
        return j;
    }

    public static String h() {
        return k;
    }

    public static String i() {
        return l;
    }

    public static String j() {
        return m;
    }

    public static String k() {
        return n;
    }

    public static boolean l() {
        return b;
    }

    public static ArrayList<String> m() {
        return I;
    }

    public static ArrayList<String> n() {
        return M;
    }

    public static boolean o() {
        return A;
    }

    public static int p() {
        return C;
    }

    public static boolean q() {
        return E;
    }

    public static void r() {
        E = false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:110:0x0270 A[Catch:{ Throwable -> 0x03ff, Throwable -> 0x0409 }] */
    /* JADX WARNING: Removed duplicated region for block: B:117:0x0284 A[Catch:{ Throwable -> 0x03ff, Throwable -> 0x0409 }] */
    /* JADX WARNING: Removed duplicated region for block: B:126:0x02a4 A[Catch:{ Throwable -> 0x03ff, Throwable -> 0x0409 }] */
    /* JADX WARNING: Removed duplicated region for block: B:134:0x02c6 A[Catch:{ Throwable -> 0x042d }] */
    /* JADX WARNING: Removed duplicated region for block: B:143:0x02f1 A[Catch:{ Throwable -> 0x0437 }] */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x0324 A[Catch:{ Throwable -> 0x0441 }] */
    /* JADX WARNING: Removed duplicated region for block: B:154:0x033d A[Catch:{ Throwable -> 0x044b }] */
    /* JADX WARNING: Removed duplicated region for block: B:158:0x034b A[Catch:{ Throwable -> 0x0455 }] */
    /* JADX WARNING: Removed duplicated region for block: B:162:0x0359 A[Catch:{ Throwable -> 0x04f1 }] */
    /* JADX WARNING: Removed duplicated region for block: B:259:0x04fd A[Catch:{ Throwable -> 0x057d }] */
    /* JADX WARNING: Removed duplicated region for block: B:265:0x051b  */
    /* JADX WARNING: Removed duplicated region for block: B:310:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x01c6 A[SYNTHETIC, Splitter:B:85:0x01c6] */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x01f4 A[Catch:{ Throwable -> 0x03f5 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean a(android.content.Context r14, com.amap.api.col.sl.bq.a r15) {
        /*
            r9 = 30
            r8 = -1
            r6 = 0
            r0 = 1
            r1 = 0
            org.json.JSONObject r3 = r15.h     // Catch:{ Throwable -> 0x00d0 }
            if (r3 == 0) goto L_0x0087
            java.lang.String r2 = "callamapflag"
            java.lang.String r2 = r3.optString(r2)     // Catch:{ Throwable -> 0x00d0 }
            boolean r4 = F     // Catch:{ Throwable -> 0x00d0 }
            boolean r2 = com.amap.api.col.sl.bq.a(r2, r4)     // Catch:{ Throwable -> 0x00d0 }
            F = r2     // Catch:{ Throwable -> 0x00d0 }
            java.lang.String r2 = "co"
            java.lang.String r2 = r3.optString(r2)     // Catch:{ Throwable -> 0x00d0 }
            r4 = 0
            boolean r2 = com.amap.api.col.sl.bq.a(r2, r4)     // Catch:{ Throwable -> 0x00d0 }
            if (r2 == 0) goto L_0x0066
            boolean r2 = F     // Catch:{ Throwable -> 0x00d0 }
            if (r2 == 0) goto L_0x0066
            r2 = r0
        L_0x002b:
            b = r2     // Catch:{ Throwable -> 0x00d0 }
            boolean r2 = F     // Catch:{ Throwable -> 0x00d0 }
            if (r2 == 0) goto L_0x0087
            java.lang.String r2 = "count"
            int r4 = G     // Catch:{ Throwable -> 0x00d0 }
            int r2 = r3.optInt(r2, r4)     // Catch:{ Throwable -> 0x00d0 }
            G = r2     // Catch:{ Throwable -> 0x00d0 }
            java.lang.String r2 = "sysTime"
            long r4 = H     // Catch:{ Throwable -> 0x00d0 }
            long r4 = r3.optLong(r2, r4)     // Catch:{ Throwable -> 0x00d0 }
            H = r4     // Catch:{ Throwable -> 0x00d0 }
            java.lang.String r2 = "sn"
            org.json.JSONArray r3 = r3.optJSONArray(r2)     // Catch:{ Throwable -> 0x00d0 }
            if (r3 == 0) goto L_0x0068
            int r2 = r3.length()     // Catch:{ Throwable -> 0x00d0 }
            if (r2 <= 0) goto L_0x0068
            r2 = r1
        L_0x0054:
            int r4 = r3.length()     // Catch:{ Throwable -> 0x00d0 }
            if (r2 >= r4) goto L_0x0068
            java.util.ArrayList<java.lang.String> r4 = I     // Catch:{ Throwable -> 0x00d0 }
            java.lang.String r5 = r3.getString(r2)     // Catch:{ Throwable -> 0x00d0 }
            r4.add(r5)     // Catch:{ Throwable -> 0x00d0 }
            int r2 = r2 + 1
            goto L_0x0054
        L_0x0066:
            r2 = r1
            goto L_0x002b
        L_0x0068:
            int r2 = G     // Catch:{ Throwable -> 0x00d0 }
            if (r2 == r8) goto L_0x0087
            long r2 = H     // Catch:{ Throwable -> 0x00d0 }
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 == 0) goto L_0x0087
            java.lang.String r2 = "pref"
            java.lang.String r3 = "nowtime"
            r4 = 0
            long r2 = com.amap.api.col.sl.fx.b(r14, r2, r3, r4)     // Catch:{ Throwable -> 0x00d0 }
            long r4 = H     // Catch:{ Throwable -> 0x00d0 }
            boolean r2 = com.amap.api.col.sl.fy.b(r4, r2)     // Catch:{ Throwable -> 0x00d0 }
            if (r2 != 0) goto L_0x0087
            i(r14)     // Catch:{ Throwable -> 0x00d0 }
        L_0x0087:
            org.json.JSONObject r2 = r15.k     // Catch:{ Throwable -> 0x03bd }
            if (r2 == 0) goto L_0x00fb
            java.lang.String r3 = "amappushflag"
            java.lang.String r3 = r2.optString(r3)     // Catch:{ Throwable -> 0x03bd }
            boolean r4 = J     // Catch:{ Throwable -> 0x03bd }
            boolean r3 = com.amap.api.col.sl.bq.a(r3, r4)     // Catch:{ Throwable -> 0x03bd }
            J = r3     // Catch:{ Throwable -> 0x03bd }
            if (r3 == 0) goto L_0x00fb
            java.lang.String r3 = "count"
            int r4 = K     // Catch:{ Throwable -> 0x03bd }
            int r3 = r2.optInt(r3, r4)     // Catch:{ Throwable -> 0x03bd }
            K = r3     // Catch:{ Throwable -> 0x03bd }
            java.lang.String r3 = "sysTime"
            long r4 = L     // Catch:{ Throwable -> 0x03bd }
            long r4 = r2.optLong(r3, r4)     // Catch:{ Throwable -> 0x03bd }
            L = r4     // Catch:{ Throwable -> 0x03bd }
            java.lang.String r3 = "sn"
            org.json.JSONArray r3 = r2.optJSONArray(r3)     // Catch:{ Throwable -> 0x03bd }
            if (r3 == 0) goto L_0x00dc
            int r2 = r3.length()     // Catch:{ Throwable -> 0x03bd }
            if (r2 <= 0) goto L_0x00dc
            r2 = r1
        L_0x00be:
            int r4 = r3.length()     // Catch:{ Throwable -> 0x03bd }
            if (r2 >= r4) goto L_0x00dc
            java.util.ArrayList<java.lang.String> r4 = M     // Catch:{ Throwable -> 0x03bd }
            java.lang.String r5 = r3.getString(r2)     // Catch:{ Throwable -> 0x03bd }
            r4.add(r5)     // Catch:{ Throwable -> 0x03bd }
            int r2 = r2 + 1
            goto L_0x00be
        L_0x00d0:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_callAMapSer"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x0087
        L_0x00d9:
            r0 = move-exception
            r0 = r1
        L_0x00db:
            return r0
        L_0x00dc:
            int r2 = K     // Catch:{ Throwable -> 0x03bd }
            if (r2 == r8) goto L_0x00fb
            long r2 = L     // Catch:{ Throwable -> 0x03bd }
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 == 0) goto L_0x00fb
            java.lang.String r2 = "pref"
            java.lang.String r3 = "pushSerTime"
            r4 = 0
            long r2 = com.amap.api.col.sl.fx.b(r14, r2, r3, r4)     // Catch:{ Throwable -> 0x03bd }
            long r4 = L     // Catch:{ Throwable -> 0x03bd }
            boolean r2 = com.amap.api.col.sl.fy.b(r4, r2)     // Catch:{ Throwable -> 0x03bd }
            if (r2 != 0) goto L_0x00fb
            j(r14)     // Catch:{ Throwable -> 0x03bd }
        L_0x00fb:
            org.json.JSONObject r2 = r15.l     // Catch:{ Throwable -> 0x03c7 }
            if (r2 == 0) goto L_0x019e
            java.lang.String r3 = "f"
            java.lang.String r3 = r2.optString(r3)     // Catch:{ Throwable -> 0x03c7 }
            boolean r4 = P     // Catch:{ Throwable -> 0x03c7 }
            boolean r3 = com.amap.api.col.sl.bq.a(r3, r4)     // Catch:{ Throwable -> 0x03c7 }
            P = r3     // Catch:{ Throwable -> 0x03c7 }
            java.lang.String r3 = "mco"
            r4 = 0
            int r3 = r2.optInt(r3, r4)     // Catch:{ Throwable -> 0x03c7 }
            y = r3     // Catch:{ Throwable -> 0x03c7 }
            java.lang.String r3 = "co"
            r4 = 0
            int r3 = r2.optInt(r3, r4)     // Catch:{ Throwable -> 0x03c7 }
            z = r3     // Catch:{ Throwable -> 0x03c7 }
            java.lang.String r3 = "it"
            r4 = 3600(0xe10, float:5.045E-42)
            int r3 = r2.optInt(r3, r4)     // Catch:{ Throwable -> 0x03c7 }
            int r3 = r3 * 1000
            x = r3     // Catch:{ Throwable -> 0x03c7 }
            r4 = 3600000(0x36ee80, float:5.044674E-39)
            if (r3 >= r4) goto L_0x0135
            r3 = 3600000(0x36ee80, float:5.044674E-39)
            x = r3     // Catch:{ Throwable -> 0x03c7 }
        L_0x0135:
            java.lang.String r3 = "a"
            java.lang.String r4 = "提示信息"
            java.lang.String r3 = r2.optString(r3, r4)     // Catch:{ Throwable -> 0x03c7 }
            i = r3     // Catch:{ Throwable -> 0x03c7 }
            java.lang.String r3 = "o"
            java.lang.String r4 = "确认"
            java.lang.String r3 = r2.optString(r3, r4)     // Catch:{ Throwable -> 0x03c7 }
            j = r3     // Catch:{ Throwable -> 0x03c7 }
            java.lang.String r3 = "c"
            java.lang.String r4 = "取消"
            java.lang.String r3 = r2.optString(r3, r4)     // Catch:{ Throwable -> 0x03c7 }
            k = r3     // Catch:{ Throwable -> 0x03c7 }
            java.lang.String r3 = "i"
            java.lang.String r4 = ""
            java.lang.String r3 = r2.optString(r3, r4)     // Catch:{ Throwable -> 0x03c7 }
            l = r3     // Catch:{ Throwable -> 0x03c7 }
            java.lang.String r3 = "u"
            java.lang.String r4 = ""
            java.lang.String r3 = r2.optString(r3, r4)     // Catch:{ Throwable -> 0x03c7 }
            m = r3     // Catch:{ Throwable -> 0x03c7 }
            java.lang.String r3 = "t"
            java.lang.String r4 = ""
            java.lang.String r2 = r2.optString(r3, r4)     // Catch:{ Throwable -> 0x03c7 }
            n = r2     // Catch:{ Throwable -> 0x03c7 }
            java.lang.String r2 = l     // Catch:{ Throwable -> 0x03c7 }
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Throwable -> 0x03c7 }
            if (r2 != 0) goto L_0x0183
            java.lang.String r2 = "null"
            java.lang.String r3 = l     // Catch:{ Throwable -> 0x03c7 }
            boolean r2 = r2.equals(r3)     // Catch:{ Throwable -> 0x03c7 }
            if (r2 == 0) goto L_0x0195
        L_0x0183:
            java.lang.String r2 = m     // Catch:{ Throwable -> 0x03c7 }
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Throwable -> 0x03c7 }
            if (r2 != 0) goto L_0x019b
            java.lang.String r2 = "null"
            java.lang.String r3 = m     // Catch:{ Throwable -> 0x03c7 }
            boolean r2 = r2.equals(r3)     // Catch:{ Throwable -> 0x03c7 }
            if (r2 != 0) goto L_0x019b
        L_0x0195:
            int r2 = z     // Catch:{ Throwable -> 0x03c7 }
            int r3 = y     // Catch:{ Throwable -> 0x03c7 }
            if (r2 <= r3) goto L_0x019e
        L_0x019b:
            r2 = 0
            P = r2     // Catch:{ Throwable -> 0x03c7 }
        L_0x019e:
            com.amap.api.col.sl.bz r2 = com.amap.api.col.sl.fq.b()     // Catch:{ Throwable -> 0x03db }
            com.amap.api.col.sl.bq$a$d r3 = r15.y     // Catch:{ Throwable -> 0x03db }
            if (r3 == 0) goto L_0x03e5
            java.lang.String r4 = r3.b     // Catch:{ Throwable -> 0x03db }
            java.lang.String r5 = r3.a     // Catch:{ Throwable -> 0x03db }
            java.lang.String r3 = r3.c     // Catch:{ Throwable -> 0x03db }
            boolean r6 = android.text.TextUtils.isEmpty(r4)     // Catch:{ Throwable -> 0x03db }
            if (r6 != 0) goto L_0x01be
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch:{ Throwable -> 0x03db }
            if (r6 != 0) goto L_0x01be
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch:{ Throwable -> 0x03db }
            if (r3 == 0) goto L_0x03d1
        L_0x01be:
            r3 = 0
            com.amap.api.col.sl.cy.a(r14, r3, r2)     // Catch:{ Throwable -> 0x03db }
        L_0x01c2:
            boolean r2 = a     // Catch:{ Throwable -> 0x00d9 }
            if (r2 == 0) goto L_0x01f0
            com.amap.api.col.sl.bq$a$c r2 = r15.B     // Catch:{ Throwable -> 0x03eb }
            if (r2 == 0) goto L_0x01f0
            java.lang.String r3 = r2.a     // Catch:{ Throwable -> 0x03eb }
            N = r3     // Catch:{ Throwable -> 0x03eb }
            java.lang.String r2 = r2.b     // Catch:{ Throwable -> 0x03eb }
            O = r2     // Catch:{ Throwable -> 0x03eb }
            java.lang.String r2 = N     // Catch:{ Throwable -> 0x03eb }
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Throwable -> 0x03eb }
            if (r2 != 0) goto L_0x01f0
            java.lang.String r2 = O     // Catch:{ Throwable -> 0x03eb }
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Throwable -> 0x03eb }
            if (r2 != 0) goto L_0x01f0
            com.amap.api.col.sl.bt r2 = new com.amap.api.col.sl.bt     // Catch:{ Throwable -> 0x03eb }
            java.lang.String r3 = "loc"
            java.lang.String r4 = N     // Catch:{ Throwable -> 0x03eb }
            java.lang.String r5 = O     // Catch:{ Throwable -> 0x03eb }
            r2.<init>(r14, r3, r4, r5)     // Catch:{ Throwable -> 0x03eb }
            r2.a()     // Catch:{ Throwable -> 0x03eb }
        L_0x01f0:
            com.amap.api.col.sl.bq$a$a r2 = r15.x     // Catch:{ Throwable -> 0x03f5 }
            if (r2 == 0) goto L_0x0257
            boolean r3 = r2.a     // Catch:{ Throwable -> 0x03f5 }
            A = r3     // Catch:{ Throwable -> 0x03f5 }
            java.lang.String r3 = "pref"
            java.lang.String r4 = "exception"
            boolean r5 = A     // Catch:{ Throwable -> 0x03f5 }
            com.amap.api.col.sl.fx.a(r14, r3, r4, r5)     // Catch:{ Throwable -> 0x03f5 }
            org.json.JSONObject r2 = r2.c     // Catch:{ Throwable -> 0x03f5 }
            java.lang.String r3 = "fn"
            int r4 = B     // Catch:{ Throwable -> 0x03f5 }
            int r3 = r2.optInt(r3, r4)     // Catch:{ Throwable -> 0x03f5 }
            B = r3     // Catch:{ Throwable -> 0x03f5 }
            java.lang.String r3 = "mpn"
            int r4 = C     // Catch:{ Throwable -> 0x03f5 }
            int r3 = r2.optInt(r3, r4)     // Catch:{ Throwable -> 0x03f5 }
            C = r3     // Catch:{ Throwable -> 0x03f5 }
            r4 = 500(0x1f4, float:7.0E-43)
            if (r3 <= r4) goto L_0x021f
            r3 = 500(0x1f4, float:7.0E-43)
            C = r3     // Catch:{ Throwable -> 0x03f5 }
        L_0x021f:
            int r3 = C     // Catch:{ Throwable -> 0x03f5 }
            if (r3 >= r9) goto L_0x0227
            r3 = 30
            C = r3     // Catch:{ Throwable -> 0x03f5 }
        L_0x0227:
            java.lang.String r3 = "igu"
            java.lang.String r2 = r2.optString(r3)     // Catch:{ Throwable -> 0x03f5 }
            boolean r3 = D     // Catch:{ Throwable -> 0x03f5 }
            boolean r2 = com.amap.api.col.sl.bq.a(r2, r3)     // Catch:{ Throwable -> 0x03f5 }
            D = r2     // Catch:{ Throwable -> 0x03f5 }
            int r2 = B     // Catch:{ Throwable -> 0x03f5 }
            boolean r3 = D     // Catch:{ Throwable -> 0x03f5 }
            com.amap.api.col.sl.ea.a(r2, r3)     // Catch:{ Throwable -> 0x03f5 }
            java.lang.String r2 = "pref"
            java.lang.String r3 = "fn"
            int r4 = B     // Catch:{ Throwable -> 0x03f5 }
            com.amap.api.col.sl.fx.a(r14, r2, r3, r4)     // Catch:{ Throwable -> 0x03f5 }
            java.lang.String r2 = "pref"
            java.lang.String r3 = "mpn"
            int r4 = C     // Catch:{ Throwable -> 0x03f5 }
            com.amap.api.col.sl.fx.a(r14, r2, r3, r4)     // Catch:{ Throwable -> 0x03f5 }
            java.lang.String r2 = "pref"
            java.lang.String r3 = "igu"
            boolean r4 = D     // Catch:{ Throwable -> 0x03f5 }
            com.amap.api.col.sl.fx.a(r14, r2, r3, r4)     // Catch:{ Throwable -> 0x03f5 }
        L_0x0257:
            org.json.JSONObject r3 = r15.m     // Catch:{ Throwable -> 0x0409 }
            if (r3 == 0) goto L_0x02c2
            java.lang.String r2 = "able"
            java.lang.String r2 = r3.optString(r2)     // Catch:{ Throwable -> 0x0409 }
            r4 = 0
            boolean r2 = com.amap.api.col.sl.bq.a(r2, r4)     // Catch:{ Throwable -> 0x0409 }
            if (r2 == 0) goto L_0x02c2
            java.lang.String r2 = "fs"
            com.amap.api.col.sl.fp$a r2 = a(r3, r2)     // Catch:{ Throwable -> 0x0409 }
            if (r2 == 0) goto L_0x027c
            boolean r4 = r2.c     // Catch:{ Throwable -> 0x0409 }
            s = r4     // Catch:{ Throwable -> 0x0409 }
            java.lang.String r2 = r2.b     // Catch:{ Throwable -> 0x03ff }
            int r2 = java.lang.Integer.parseInt(r2)     // Catch:{ Throwable -> 0x03ff }
            t = r2     // Catch:{ Throwable -> 0x03ff }
        L_0x027c:
            java.lang.String r2 = "us"
            com.amap.api.col.sl.fp$a r2 = a(r3, r2)     // Catch:{ Throwable -> 0x0409 }
            if (r2 == 0) goto L_0x029c
            boolean r4 = r2.c     // Catch:{ Throwable -> 0x0409 }
            u = r4     // Catch:{ Throwable -> 0x0409 }
            boolean r4 = r2.a     // Catch:{ Throwable -> 0x0409 }
            w = r4     // Catch:{ Throwable -> 0x0409 }
            java.lang.String r2 = r2.b     // Catch:{ Throwable -> 0x0413 }
            int r2 = java.lang.Integer.parseInt(r2)     // Catch:{ Throwable -> 0x0413 }
            v = r2     // Catch:{ Throwable -> 0x0413 }
        L_0x0294:
            int r2 = v     // Catch:{ Throwable -> 0x0409 }
            r4 = 2
            if (r2 >= r4) goto L_0x029c
            r2 = 0
            u = r2     // Catch:{ Throwable -> 0x0409 }
        L_0x029c:
            java.lang.String r2 = "rs"
            com.amap.api.col.sl.fp$a r2 = a(r3, r2)     // Catch:{ Throwable -> 0x0409 }
            if (r2 == 0) goto L_0x02c2
            boolean r3 = r2.c     // Catch:{ Throwable -> 0x0409 }
            o = r3     // Catch:{ Throwable -> 0x0409 }
            if (r3 == 0) goto L_0x02b7
            long r4 = com.amap.api.col.sl.fy.b()     // Catch:{ Throwable -> 0x0409 }
            q = r4     // Catch:{ Throwable -> 0x0409 }
            int r3 = r2.d     // Catch:{ Throwable -> 0x0409 }
            int r3 = r3 * 1000
            long r4 = (long) r3     // Catch:{ Throwable -> 0x0409 }
            r = r4     // Catch:{ Throwable -> 0x0409 }
        L_0x02b7:
            java.lang.String r2 = r2.b     // Catch:{ Throwable -> 0x041d }
            int r2 = java.lang.Integer.parseInt(r2)     // Catch:{ Throwable -> 0x041d }
            int r2 = r2 * 1000
            long r2 = (long) r2     // Catch:{ Throwable -> 0x041d }
            p = r2     // Catch:{ Throwable -> 0x041d }
        L_0x02c2:
            org.json.JSONObject r2 = r15.o     // Catch:{ Throwable -> 0x042d }
            if (r2 == 0) goto L_0x02ed
            java.lang.String r3 = "able"
            java.lang.String r3 = r2.optString(r3)     // Catch:{ Throwable -> 0x042d }
            boolean r4 = Q     // Catch:{ Throwable -> 0x042d }
            boolean r3 = com.amap.api.col.sl.bq.a(r3, r4)     // Catch:{ Throwable -> 0x042d }
            Q = r3     // Catch:{ Throwable -> 0x042d }
            if (r3 == 0) goto L_0x02ed
            java.lang.String r3 = "c"
            r4 = 0
            int r3 = r2.optInt(r3, r4)     // Catch:{ Throwable -> 0x042d }
            if (r3 != 0) goto L_0x0427
            r3 = 3000(0xbb8, float:4.204E-42)
            R = r3     // Catch:{ Throwable -> 0x042d }
        L_0x02e3:
            java.lang.String r3 = "t"
            int r2 = r2.getInt(r3)     // Catch:{ Throwable -> 0x042d }
            int r2 = r2 / 2
            S = r2     // Catch:{ Throwable -> 0x042d }
        L_0x02ed:
            org.json.JSONObject r2 = r15.p     // Catch:{ Throwable -> 0x0437 }
            if (r2 == 0) goto L_0x0320
            java.lang.String r3 = "able"
            java.lang.String r3 = r2.optString(r3)     // Catch:{ Throwable -> 0x0437 }
            boolean r4 = T     // Catch:{ Throwable -> 0x0437 }
            boolean r3 = com.amap.api.col.sl.bq.a(r3, r4)     // Catch:{ Throwable -> 0x0437 }
            T = r3     // Catch:{ Throwable -> 0x0437 }
            if (r3 == 0) goto L_0x030e
            java.lang.String r3 = "c"
            r4 = 300(0x12c, float:4.2E-43)
            int r2 = r2.optInt(r3, r4)     // Catch:{ Throwable -> 0x0437 }
            int r2 = r2 * 1000
            long r2 = (long) r2     // Catch:{ Throwable -> 0x0437 }
            U = r2     // Catch:{ Throwable -> 0x0437 }
        L_0x030e:
            java.lang.String r2 = "pref"
            java.lang.String r3 = "ca"
            boolean r4 = T     // Catch:{ Throwable -> 0x0437 }
            com.amap.api.col.sl.fx.a(r14, r2, r3, r4)     // Catch:{ Throwable -> 0x0437 }
            java.lang.String r2 = "pref"
            java.lang.String r3 = "ct"
            long r4 = U     // Catch:{ Throwable -> 0x0437 }
            com.amap.api.col.sl.fx.a(r14, r2, r3, r4)     // Catch:{ Throwable -> 0x0437 }
        L_0x0320:
            com.amap.api.col.sl.bq$a$b r2 = r15.D     // Catch:{ Throwable -> 0x0441 }
            if (r2 == 0) goto L_0x0339
            java.lang.String r3 = "OfflineLocation"
            java.lang.String r4 = "1.0.0"
            boolean r2 = a(r14, r2, r3, r4)     // Catch:{ Throwable -> 0x0441 }
            W = r2     // Catch:{ Throwable -> 0x0441 }
            com.amap.api.col.sl.et.a = r2     // Catch:{ Throwable -> 0x0441 }
            java.lang.String r2 = "pref"
            java.lang.String r3 = "oAble"
            boolean r4 = W     // Catch:{ Throwable -> 0x0441 }
            com.amap.api.col.sl.fx.a(r14, r2, r3, r4)     // Catch:{ Throwable -> 0x0441 }
        L_0x0339:
            com.amap.api.col.sl.bq$a$b r2 = r15.C     // Catch:{ Throwable -> 0x044b }
            if (r2 == 0) goto L_0x0347
            java.lang.String r3 = "Collection"
            java.lang.String r4 = "1.0.0"
            boolean r2 = a(r14, r2, r3, r4)     // Catch:{ Throwable -> 0x044b }
            V = r2     // Catch:{ Throwable -> 0x044b }
        L_0x0347:
            com.amap.api.col.sl.bq$a$b r2 = r15.E     // Catch:{ Throwable -> 0x0455 }
            if (r2 == 0) goto L_0x0355
            java.lang.String r3 = "HttpDNS"
            java.lang.String r4 = "1.0.0"
            boolean r2 = a(r14, r2, r3, r4)     // Catch:{ Throwable -> 0x0455 }
            X = r2     // Catch:{ Throwable -> 0x0455 }
        L_0x0355:
            org.json.JSONObject r4 = r15.j     // Catch:{ Throwable -> 0x04f1 }
            if (r4 == 0) goto L_0x04f9
            java.lang.String r2 = "able"
            java.lang.String r2 = r4.optString(r2)     // Catch:{ Throwable -> 0x04f1 }
            boolean r3 = Z     // Catch:{ Throwable -> 0x04f1 }
            boolean r2 = com.amap.api.col.sl.bq.a(r2, r3)     // Catch:{ Throwable -> 0x04f1 }
            Z = r2     // Catch:{ Throwable -> 0x04f1 }
            java.lang.String r2 = "sysTime"
            long r6 = com.amap.api.col.sl.fy.a()     // Catch:{ Throwable -> 0x04f1 }
            long r2 = r4.optLong(r2, r6)     // Catch:{ Throwable -> 0x04f1 }
            aa = r2     // Catch:{ Throwable -> 0x04f1 }
            java.lang.String r2 = "n"
            r3 = 1
            int r2 = r4.optInt(r2, r3)     // Catch:{ Throwable -> 0x04f1 }
            ab = r2     // Catch:{ Throwable -> 0x04f1 }
            java.lang.String r2 = "nh"
            r3 = 1
            int r2 = r4.optInt(r2, r3)     // Catch:{ Throwable -> 0x04f1 }
            ac = r2     // Catch:{ Throwable -> 0x04f1 }
            boolean r2 = Z     // Catch:{ Throwable -> 0x04f1 }
            if (r2 == 0) goto L_0x04f9
            int r2 = ab     // Catch:{ Throwable -> 0x04f1 }
            if (r2 == r8) goto L_0x0393
            int r2 = ab     // Catch:{ Throwable -> 0x04f1 }
            int r3 = ac     // Catch:{ Throwable -> 0x04f1 }
            if (r2 < r3) goto L_0x04f9
        L_0x0393:
            java.lang.String r2 = "l"
            org.json.JSONArray r5 = r4.optJSONArray(r2)     // Catch:{ Throwable -> 0x04f1 }
            r2 = r1
        L_0x039a:
            int r3 = r5.length()     // Catch:{ Throwable -> 0x04f1 }
            if (r2 >= r3) goto L_0x04ca
            org.json.JSONObject r6 = r5.optJSONObject(r2)     // Catch:{ Throwable -> 0x04c7 }
            com.amap.api.col.sl.fs r7 = new com.amap.api.col.sl.fs     // Catch:{ Throwable -> 0x04c7 }
            r7.<init>()     // Catch:{ Throwable -> 0x04c7 }
            java.lang.String r3 = "able"
            java.lang.String r8 = "false"
            java.lang.String r3 = r6.optString(r3, r8)     // Catch:{ Throwable -> 0x04c7 }
            r8 = 0
            boolean r3 = com.amap.api.col.sl.bq.a(r3, r8)     // Catch:{ Throwable -> 0x04c7 }
            r7.a = r3     // Catch:{ Throwable -> 0x04c7 }
            if (r3 != 0) goto L_0x045f
        L_0x03ba:
            int r2 = r2 + 1
            goto L_0x039a
        L_0x03bd:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_callAMapPush"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x00fb
        L_0x03c7:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_openAMap"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x019e
        L_0x03d1:
            com.amap.api.col.sl.cx r3 = new com.amap.api.col.sl.cx     // Catch:{ Throwable -> 0x03db }
            r3.<init>(r5, r4)     // Catch:{ Throwable -> 0x03db }
            com.amap.api.col.sl.cy.a(r14, r3, r2)     // Catch:{ Throwable -> 0x03db }
            goto L_0x01c2
        L_0x03db:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_sdkUpdate"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x01c2
        L_0x03e5:
            r3 = 0
            com.amap.api.col.sl.cy.a(r14, r3, r2)     // Catch:{ Throwable -> 0x03db }
            goto L_0x01c2
        L_0x03eb:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_groupOffset"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x01f0
        L_0x03f5:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_uploadException"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x0257
        L_0x03ff:
            r2 = move-exception
            java.lang.String r4 = "AuthUtil"
            java.lang.String r5 = "loadconfig part2"
            com.amap.api.col.sl.fq.a(r2, r4, r5)     // Catch:{ Throwable -> 0x0409 }
            goto L_0x027c
        L_0x0409:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_locate"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x02c2
        L_0x0413:
            r2 = move-exception
            java.lang.String r4 = "AuthUtil"
            java.lang.String r5 = "loadconfig part1"
            com.amap.api.col.sl.fq.a(r2, r4, r5)     // Catch:{ Throwable -> 0x0409 }
            goto L_0x0294
        L_0x041d:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadconfig part"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x0409 }
            goto L_0x02c2
        L_0x0427:
            int r3 = r3 * 1000
            R = r3     // Catch:{ Throwable -> 0x042d }
            goto L_0x02e3
        L_0x042d:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_ngps"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x02ed
        L_0x0437:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_cacheAble"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x0320
        L_0x0441:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_OfflineDex"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x0339
        L_0x044b:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_CollectorDex"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x0347
        L_0x0455:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_dnsDex"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x0355
        L_0x045f:
            java.lang.String r3 = "pn"
            java.lang.String r8 = ""
            java.lang.String r3 = r6.optString(r3, r8)     // Catch:{ Throwable -> 0x04c7 }
            r7.b = r3     // Catch:{ Throwable -> 0x04c7 }
            java.lang.String r3 = "cn"
            java.lang.String r8 = ""
            java.lang.String r3 = r6.optString(r3, r8)     // Catch:{ Throwable -> 0x04c7 }
            r7.c = r3     // Catch:{ Throwable -> 0x04c7 }
            java.lang.String r3 = "a"
            java.lang.String r8 = ""
            java.lang.String r3 = r6.optString(r3, r8)     // Catch:{ Throwable -> 0x04c7 }
            r7.e = r3     // Catch:{ Throwable -> 0x04c7 }
            java.lang.String r3 = "b"
            org.json.JSONArray r8 = r6.optJSONArray(r3)     // Catch:{ Throwable -> 0x04c7 }
            if (r8 == 0) goto L_0x04b1
            java.util.ArrayList r9 = new java.util.ArrayList     // Catch:{ Throwable -> 0x04c7 }
            r9.<init>()     // Catch:{ Throwable -> 0x04c7 }
            r3 = r1
        L_0x048b:
            int r10 = r8.length()     // Catch:{ Throwable -> 0x04c7 }
            if (r3 >= r10) goto L_0x04af
            org.json.JSONObject r10 = r8.optJSONObject(r3)     // Catch:{ Throwable -> 0x04c7 }
            java.util.HashMap r11 = new java.util.HashMap     // Catch:{ Throwable -> 0x04c7 }
            r11.<init>()     // Catch:{ Throwable -> 0x04c7 }
            java.lang.String r12 = "k"
            java.lang.String r12 = r10.optString(r12)     // Catch:{ Throwable -> 0x05a1 }
            java.lang.String r13 = "v"
            java.lang.String r10 = r10.optString(r13)     // Catch:{ Throwable -> 0x05a1 }
            r11.put(r12, r10)     // Catch:{ Throwable -> 0x05a1 }
            r9.add(r11)     // Catch:{ Throwable -> 0x05a1 }
        L_0x04ac:
            int r3 = r3 + 1
            goto L_0x048b
        L_0x04af:
            r7.d = r9     // Catch:{ Throwable -> 0x04c7 }
        L_0x04b1:
            java.lang.String r3 = "is"
            java.lang.String r8 = "false"
            java.lang.String r3 = r6.optString(r3, r8)     // Catch:{ Throwable -> 0x04c7 }
            r6 = 0
            boolean r3 = com.amap.api.col.sl.bq.a(r3, r6)     // Catch:{ Throwable -> 0x04c7 }
            r7.f = r3     // Catch:{ Throwable -> 0x04c7 }
            java.util.List<com.amap.api.col.sl.fs> r3 = Y     // Catch:{ Throwable -> 0x04c7 }
            r3.add(r7)     // Catch:{ Throwable -> 0x04c7 }
            goto L_0x03ba
        L_0x04c7:
            r3 = move-exception
            goto L_0x03ba
        L_0x04ca:
            java.lang.String r2 = "sl"
            org.json.JSONArray r3 = r4.optJSONArray(r2)     // Catch:{ Throwable -> 0x04f1 }
            if (r3 == 0) goto L_0x04f9
            r2 = r1
        L_0x04d3:
            int r4 = r3.length()     // Catch:{ Throwable -> 0x04f1 }
            if (r2 >= r4) goto L_0x04f9
            org.json.JSONObject r4 = r3.optJSONObject(r2)     // Catch:{ Throwable -> 0x04f1 }
            java.lang.String r5 = "pan"
            java.lang.String r4 = r4.optString(r5)     // Catch:{ Throwable -> 0x04f1 }
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch:{ Throwable -> 0x04f1 }
            if (r5 != 0) goto L_0x04ee
            java.util.List<java.lang.String> r5 = ad     // Catch:{ Throwable -> 0x04f1 }
            r5.add(r4)     // Catch:{ Throwable -> 0x04f1 }
        L_0x04ee:
            int r2 = r2 + 1
            goto L_0x04d3
        L_0x04f1:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_otherServiceList"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
        L_0x04f9:
            org.json.JSONObject r2 = r15.i     // Catch:{ Throwable -> 0x057d }
            if (r2 == 0) goto L_0x0517
            java.lang.String r3 = "able"
            java.lang.String r3 = r2.optString(r3)     // Catch:{ Throwable -> 0x057d }
            boolean r4 = ae     // Catch:{ Throwable -> 0x057d }
            boolean r3 = com.amap.api.col.sl.bq.a(r3, r4)     // Catch:{ Throwable -> 0x057d }
            ae = r3     // Catch:{ Throwable -> 0x057d }
            if (r3 == 0) goto L_0x0517
            java.lang.String r3 = "c"
            int r4 = af     // Catch:{ Throwable -> 0x057d }
            int r2 = r2.optInt(r3, r4)     // Catch:{ Throwable -> 0x057d }
            af = r2     // Catch:{ Throwable -> 0x057d }
        L_0x0517:
            org.json.JSONObject r3 = r15.g     // Catch:{ Throwable -> 0x0573 }
            if (r3 == 0) goto L_0x00db
            java.lang.String r2 = "at"
            r4 = 123(0x7b, float:1.72E-43)
            int r2 = r3.optInt(r2, r4)     // Catch:{ Throwable -> 0x0586 }
            int r2 = r2 * 60
            int r2 = r2 * 1000
            d = r2     // Catch:{ Throwable -> 0x0586 }
        L_0x0529:
            java.lang.String r2 = "ila"
            java.lang.String r2 = r3.optString(r2)     // Catch:{ Throwable -> 0x058f }
            boolean r4 = ag     // Catch:{ Throwable -> 0x058f }
            boolean r2 = com.amap.api.col.sl.bq.a(r2, r4)     // Catch:{ Throwable -> 0x058f }
            ag = r2     // Catch:{ Throwable -> 0x058f }
        L_0x0537:
            java.lang.String r2 = "icbd"
            java.lang.String r2 = r3.optString(r2)     // Catch:{ Throwable -> 0x0598 }
            boolean r4 = c     // Catch:{ Throwable -> 0x0598 }
            boolean r2 = com.amap.api.col.sl.bq.a(r2, r4)     // Catch:{ Throwable -> 0x0598 }
            c = r2     // Catch:{ Throwable -> 0x0598 }
            if (r2 == 0) goto L_0x054c
            java.lang.String r2 = "loc"
            com.amap.api.col.sl.cy.a(r14, r2)     // Catch:{ Throwable -> 0x0598 }
        L_0x054c:
            if (r14 == 0) goto L_0x00db
            if (r3 == 0) goto L_0x00db
            java.lang.String r2 = "re"
            java.lang.String r2 = r3.optString(r2)     // Catch:{ Throwable -> 0x0569 }
            boolean r3 = h     // Catch:{ Throwable -> 0x0569 }
            boolean r2 = com.amap.api.col.sl.bq.a(r2, r3)     // Catch:{ Throwable -> 0x0569 }
            h = r2     // Catch:{ Throwable -> 0x0569 }
            java.lang.String r2 = "pref"
            java.lang.String r3 = "fr"
            boolean r4 = h     // Catch:{ Throwable -> 0x0569 }
            com.amap.api.col.sl.fx.a(r14, r2, r3, r4)     // Catch:{ Throwable -> 0x0569 }
            goto L_0x00db
        L_0x0569:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "checkReLocationAble"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x0573 }
            goto L_0x00db
        L_0x0573:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_hotUpdate"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x00db
        L_0x057d:
            r2 = move-exception
            java.lang.String r3 = "AuthUtil"
            java.lang.String r4 = "loadConfigData_gpsGeoAble"
            com.amap.api.col.sl.fq.a(r2, r3, r4)     // Catch:{ Throwable -> 0x00d9 }
            goto L_0x0517
        L_0x0586:
            r2 = move-exception
            java.lang.String r4 = "AuthUtil"
            java.lang.String r5 = "requestSdkAuthInterval"
            com.amap.api.col.sl.fq.a(r2, r4, r5)     // Catch:{ Throwable -> 0x0573 }
            goto L_0x0529
        L_0x058f:
            r2 = move-exception
            java.lang.String r4 = "AuthUtil"
            java.lang.String r5 = "loadConfigData_indoor"
            com.amap.api.col.sl.fq.a(r2, r4, r5)     // Catch:{ Throwable -> 0x0573 }
            goto L_0x0537
        L_0x0598:
            r2 = move-exception
            java.lang.String r4 = "AuthUtil"
            java.lang.String r5 = "loadConfigData_CallBackDex"
            com.amap.api.col.sl.fq.a(r2, r4, r5)     // Catch:{ Throwable -> 0x0573 }
            goto L_0x054c
        L_0x05a1:
            r10 = move-exception
            goto L_0x04ac
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fp.a(android.content.Context, com.amap.api.col.sl.bq$a):boolean");
    }

    private static a a(JSONObject jSONObject, String str) {
        Throwable th;
        a aVar;
        if (jSONObject != null) {
            try {
                JSONObject jSONObject2 = jSONObject.getJSONObject(str);
                if (jSONObject2 != null) {
                    aVar = new a();
                    try {
                        aVar.a = bq.a(jSONObject2.optString("b"), false);
                        aVar.b = jSONObject2.optString("t");
                        aVar.c = bq.a(jSONObject2.optString("st"), false);
                        aVar.d = jSONObject2.optInt("i", 0);
                        return aVar;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } catch (Throwable th3) {
                Throwable th4 = th3;
                aVar = null;
                th = th4;
                fq.a(th, "AuthUtil", "getLocateObj");
                return aVar;
            }
        }
        return null;
    }

    public static boolean b(Context context) {
        if (!F) {
            return false;
        }
        if (G == -1 || H == 0) {
            return true;
        }
        if (!fy.b(H, fx.b(context, "pref", "nowtime", 0))) {
            i(context);
            fx.a(context, "pref", "count", 1);
            return true;
        }
        int b2 = fx.b(context, "pref", "count", 0);
        if (b2 >= G) {
            return false;
        }
        fx.a(context, "pref", "count", b2 + 1);
        return true;
    }

    private static void i(Context context) {
        try {
            Editor edit = context.getSharedPreferences("pref", 0).edit();
            edit.putLong("nowtime", H);
            edit.putInt("count", 0);
            fx.a(edit);
        } catch (Throwable th) {
            fq.a(th, "AuthUtil", "resetPrefsBind");
        }
    }

    public static boolean c(Context context) {
        if (!J) {
            return false;
        }
        if (K == -1 || L == 0) {
            return true;
        }
        if (!fy.b(L, fx.b(context, "pref", "pushSerTime", 0))) {
            j(context);
            fx.a(context, "pref", "pushCount", 1);
            return true;
        }
        int b2 = fx.b(context, "pref", "pushCount", 0);
        if (b2 >= K) {
            return false;
        }
        fx.a(context, "pref", "pushCount", b2 + 1);
        return true;
    }

    private static void j(Context context) {
        try {
            Editor edit = context.getSharedPreferences("pref", 0).edit();
            edit.putLong("pushSerTime", L);
            edit.putInt("pushCount", 0);
            fx.a(edit);
        } catch (Throwable th) {
            fq.a(th, "AuthUtil", "resetPrefsBind");
        }
    }

    public static boolean d(Context context) {
        if (!P || z <= 0 || y <= 0 || z > y) {
            return false;
        }
        long b2 = fx.b(context, "abcd", "lct", 0);
        long b3 = fx.b(context, "abcd", "lst", 0);
        long b4 = fy.b();
        if (b4 < b2) {
            fx.a(context, "abcd", "lct", b4);
            return false;
        }
        if (b4 - b2 > 86400000) {
            fx.a(context, "abcd", "lct", b4);
            fx.a(context, "abcd", "t", 0);
        }
        if (b4 - b3 < ((long) x)) {
            return false;
        }
        int b5 = fx.b(context, "abcd", "t", 0) + 1;
        if (b5 > y) {
            return false;
        }
        fx.a(context, "abcd", "lst", b4);
        fx.a(context, "abcd", "t", b5);
        return true;
    }

    public static void e(Context context) {
        try {
            A = fx.b(context, "pref", "exception", A);
            f(context);
        } catch (Throwable th) {
            fq.a(th, "AuthUtil", "loadLastAbleState p1");
        }
        try {
            W = fx.b(context, "pref", "oAble", false);
        } catch (Throwable th2) {
            fq.a(th2, "AuthUtil", "loadLastAbleState p2");
        }
        try {
            B = fx.b(context, "pref", "fn", B);
            C = fx.b(context, "pref", "mpn", C);
            D = fx.b(context, "pref", "igu", D);
            ea.a(B, D);
        } catch (Throwable th3) {
        }
        try {
            T = fx.b(context, "pref", "ca", T);
            U = fx.b(context, "pref", "ct", U);
        } catch (Throwable th4) {
        }
        try {
            h = fx.b(context, "pref", "fr", h);
        } catch (Throwable th5) {
        }
    }

    public static boolean s() {
        return Q;
    }

    public static boolean a(Context context, long j2) {
        if (!Q) {
            return false;
        }
        long a2 = fy.a();
        if (a2 - j2 < ((long) R)) {
            return false;
        }
        if (S == -1) {
            return true;
        }
        if (!fy.c(a2, fx.b(context, "pref", "ngpsTime", 0))) {
            try {
                Editor edit = context.getSharedPreferences("pref", 0).edit();
                edit.putLong("ngpsTime", a2);
                edit.putInt("ngpsCount", 0);
                fx.a(edit);
            } catch (Throwable th) {
                fq.a(th, "AuthUtil", "resetPrefsNGPS");
            }
            fx.a(context, "pref", "ngpsCount", 1);
            return true;
        }
        int b2 = fx.b(context, "pref", "ngpsCount", 0);
        if (b2 >= S) {
            return false;
        }
        fx.a(context, "pref", "ngpsCount", b2 + 1);
        return true;
    }

    public static long t() {
        return U;
    }

    public static boolean u() {
        return T;
    }

    public static boolean b(long j2) {
        if (!T) {
            return false;
        }
        long a2 = fy.a() - j2;
        if (U < 0 || a2 < U) {
            return true;
        }
        return false;
    }

    public static boolean v() {
        return V;
    }

    public static boolean w() {
        return W;
    }

    public static boolean x() {
        return X;
    }

    private static boolean a(Context context, b bVar, String str, String str2) {
        if (bVar == null) {
            return false;
        }
        try {
            boolean z2 = bVar.a;
            String str3 = bVar.b;
            String str4 = bVar.c;
            String str5 = bVar.d;
            boolean z3 = bVar.e;
            bz a2 = fq.a(str, str2);
            if (z2) {
                if (z3 && !TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str5)) {
                    cy.a(context, new cx(str3, str4), a2);
                }
            } else if (fv.a(context, a2)) {
                fw.a(context, str, "config|get dex able is false");
            }
            if (!z2 || !z3) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            fq.a(th, "AuthUtil", "downLoadPluginDex");
            return false;
        }
    }

    public static void f(Context context) {
        try {
            bz b2 = fq.b();
            b2.a(A);
            cm.a(context, b2);
        } catch (Throwable th) {
        }
    }

    public static boolean g(Context context) {
        if (!Z || ab == 0 || ac == 0 || aa == 0 || (ab != -1 && ab < ac)) {
            return false;
        }
        if (ad != null && ad.size() > 0) {
            for (String b2 : ad) {
                if (fy.b(context, b2)) {
                    return false;
                }
            }
        }
        if (ab == -1 && ac == -1) {
            return true;
        }
        long b3 = fx.b(context, "pref", "ots", 0);
        long b4 = fx.b(context, "pref", "otsh", 0);
        int b5 = fx.b(context, "pref", "otn", 0);
        int b6 = fx.b(context, "pref", "otnh", 0);
        if (ab != -1) {
            if (!fy.b(aa, b3)) {
                try {
                    Editor edit = context.getSharedPreferences("pref", 0).edit();
                    edit.putLong("ots", aa);
                    edit.putLong("otsh", aa);
                    edit.putInt("otn", 0);
                    edit.putInt("otnh", 0);
                    fx.a(edit);
                } catch (Throwable th) {
                    fq.a(th, "AuthUtil", "resetPrefsBind");
                }
                fx.a(context, "pref", "otn", 1);
                fx.a(context, "pref", "otnh", 1);
                return true;
            } else if (b5 < ab) {
                if (ac == -1) {
                    fx.a(context, "pref", "otn", b5 + 1);
                    fx.a(context, "pref", "otnh", 0);
                    return true;
                } else if (!fy.a(aa, b4)) {
                    fx.a(context, "pref", "otsh", aa);
                    fx.a(context, "pref", "otn", b5 + 1);
                    fx.a(context, "pref", "otnh", 1);
                    return true;
                } else if (b6 < ac) {
                    int i2 = b6 + 1;
                    fx.a(context, "pref", "otn", b5 + 1);
                    fx.a(context, "pref", "otnh", i2);
                    return true;
                }
            }
        }
        if (ab == -1) {
            fx.a(context, "pref", "otn", 0);
            if (ac == -1) {
                fx.a(context, "pref", "otnh", 0);
                return true;
            } else if (!fy.a(aa, b4)) {
                fx.a(context, "pref", "otsh", aa);
                fx.a(context, "pref", "otnh", 1);
                return true;
            } else if (b6 < ac) {
                fx.a(context, "pref", "otnh", b6 + 1);
                return true;
            }
        }
        return false;
    }

    public static List<fs> y() {
        return Y;
    }

    public static boolean z() {
        return ae;
    }

    public static int A() {
        return af;
    }

    public static boolean B() {
        return ag;
    }

    public static boolean h(Context context) {
        if (context == null) {
            return false;
        }
        try {
            if (fy.b() - f < ((long) d)) {
                return false;
            }
            g = true;
            return true;
        } catch (Throwable th) {
            fq.a(th, "APS", "isConfigNeedUpdate");
            return false;
        }
    }

    public static boolean C() {
        if (!g) {
            return g;
        }
        g = false;
        return true;
    }

    public static boolean D() {
        return h;
    }
}
