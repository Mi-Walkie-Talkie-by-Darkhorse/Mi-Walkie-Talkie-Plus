package com.xiaomi.push;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.Constants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static volatile int f9181a = 0;

    /* renamed from: a  reason: collision with other field name */
    private static Map<String, p> f835a = null;

    /* renamed from: b  reason: collision with root package name */
    private static int f9182b = -1;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int a() {
        /*
            int r0 = com.xiaomi.push.l.f9181a
            if (r0 != 0) goto L_0x0047
            r0 = 0
            java.lang.String r1 = "ro.miui.ui.version.code"
            java.lang.String r1 = m525a(r1)     // Catch: all -> 0x0029
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: all -> 0x0029
            r2 = 1
            if (r1 == 0) goto L_0x0021
            java.lang.String r1 = "ro.miui.ui.version.name"
            java.lang.String r1 = m525a(r1)     // Catch: all -> 0x0029
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: all -> 0x0029
            if (r1 != 0) goto L_0x001f
            goto L_0x0021
        L_0x001f:
            r1 = 0
            goto L_0x0022
        L_0x0021:
            r1 = 1
        L_0x0022:
            if (r1 == 0) goto L_0x0025
            goto L_0x0026
        L_0x0025:
            r2 = 2
        L_0x0026:
            com.xiaomi.push.l.f9181a = r2     // Catch: all -> 0x0029
            goto L_0x0031
        L_0x0029:
            r1 = move-exception
            java.lang.String r2 = "get isMIUI failed"
            com.xiaomi.channel.commonutils.logger.b.a(r2, r1)
            com.xiaomi.push.l.f9181a = r0
        L_0x0031:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "isMIUI's value is: "
            r0.append(r1)
            int r1 = com.xiaomi.push.l.f9181a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.xiaomi.channel.commonutils.logger.b.b(r0)
        L_0x0047:
            int r0 = com.xiaomi.push.l.f9181a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.l.a():int");
    }

    public static int a(Context context) {
        String a2 = m525a("ro.miui.ui.version.code");
        if (TextUtils.isEmpty(a2) || !TextUtils.isDigitsOnly(a2)) {
            return 0;
        }
        return Integer.parseInt(a2);
    }

    public static p a(String str) {
        p b2 = b(str);
        return b2 == null ? p.Global : b2;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static String m524a() {
        int a2 = u.a();
        return (!m527a() || a2 <= 0) ? "" : a2 < 2 ? "alpha" : a2 < 3 ? "development" : "stable";
    }

    public static String a(Intent intent) {
        if (intent == null) {
            return null;
        }
        return intent.toString() + " " + a(intent.getExtras());
    }

    public static String a(Bundle bundle) {
        String a2;
        StringBuilder sb = new StringBuilder("Bundle[");
        if (bundle == null) {
            sb.append("null");
        } else {
            boolean z = true;
            for (String str : bundle.keySet()) {
                if (!z) {
                    sb.append(", ");
                }
                sb.append(str);
                sb.append('=');
                Object obj = bundle.get(str);
                if (obj instanceof int[]) {
                    a2 = Arrays.toString((int[]) obj);
                } else if (obj instanceof byte[]) {
                    a2 = Arrays.toString((byte[]) obj);
                } else if (obj instanceof boolean[]) {
                    a2 = Arrays.toString((boolean[]) obj);
                } else if (obj instanceof short[]) {
                    a2 = Arrays.toString((short[]) obj);
                } else if (obj instanceof long[]) {
                    a2 = Arrays.toString((long[]) obj);
                } else if (obj instanceof float[]) {
                    a2 = Arrays.toString((float[]) obj);
                } else if (obj instanceof double[]) {
                    a2 = Arrays.toString((double[]) obj);
                } else if (obj instanceof String[]) {
                    a2 = Arrays.toString((String[]) obj);
                } else if (obj instanceof CharSequence[]) {
                    a2 = Arrays.toString((CharSequence[]) obj);
                } else if (obj instanceof Parcelable[]) {
                    a2 = Arrays.toString((Parcelable[]) obj);
                } else if (obj instanceof Bundle) {
                    a2 = a((Bundle) obj);
                } else {
                    sb.append(obj);
                    z = false;
                }
                sb.append(a2);
                z = false;
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: a  reason: collision with other method in class */
    public static String m525a(String str) {
        try {
            try {
                return (String) bj.a("android.os.SystemProperties", "get", str, "");
            } catch (Exception e) {
                b.d("fail to get property. " + e);
                return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    private static void m526a() {
        if (f835a == null) {
            HashMap hashMap = new HashMap();
            f835a = hashMap;
            hashMap.put("CN", p.China);
            f835a.put("FI", p.Europe);
            f835a.put("SE", p.Europe);
            f835a.put("NO", p.Europe);
            f835a.put("FO", p.Europe);
            f835a.put("EE", p.Europe);
            f835a.put("LV", p.Europe);
            f835a.put("LT", p.Europe);
            f835a.put("BY", p.Europe);
            f835a.put("MD", p.Europe);
            f835a.put("UA", p.Europe);
            f835a.put("PL", p.Europe);
            f835a.put("CZ", p.Europe);
            f835a.put("SK", p.Europe);
            f835a.put("HU", p.Europe);
            f835a.put("DE", p.Europe);
            f835a.put("AT", p.Europe);
            f835a.put("CH", p.Europe);
            f835a.put("LI", p.Europe);
            f835a.put("GB", p.Europe);
            f835a.put("IE", p.Europe);
            f835a.put("NL", p.Europe);
            f835a.put("BE", p.Europe);
            f835a.put("LU", p.Europe);
            f835a.put("FR", p.Europe);
            f835a.put("RO", p.Europe);
            f835a.put("BG", p.Europe);
            f835a.put("RS", p.Europe);
            f835a.put("MK", p.Europe);
            f835a.put("AL", p.Europe);
            f835a.put("GR", p.Europe);
            f835a.put("SI", p.Europe);
            f835a.put("HR", p.Europe);
            f835a.put("IT", p.Europe);
            f835a.put("SM", p.Europe);
            f835a.put("MT", p.Europe);
            f835a.put("ES", p.Europe);
            f835a.put("PT", p.Europe);
            f835a.put("AD", p.Europe);
            f835a.put("CY", p.Europe);
            f835a.put("DK", p.Europe);
            f835a.put("RU", p.Russia);
            f835a.put("IN", p.India);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m527a() {
        return a() == 1;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m528a(Context context) {
        return context != null && m529a(context.getPackageName());
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m529a(String str) {
        return "com.xiaomi.xmsf".equals(str);
    }

    public static int b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 0).versionCode;
        } catch (Exception unused) {
            return 0;
        }
    }

    private static p b(String str) {
        m526a();
        return f835a.get(str.toUpperCase());
    }

    public static String b() {
        String a2 = t.a("ro.miui.region", "");
        if (TextUtils.isEmpty(a2)) {
            a2 = t.a("persist.sys.oppo.region", "");
        }
        if (TextUtils.isEmpty(a2)) {
            a2 = t.a("ro.oppo.regionmark", "");
        }
        if (TextUtils.isEmpty(a2)) {
            a2 = t.a("ro.vendor.oplus.regionmark", "");
        }
        if (TextUtils.isEmpty(a2)) {
            a2 = t.a("ro.hw.country", "");
        }
        if (TextUtils.isEmpty(a2)) {
            a2 = t.a("ro.csc.countryiso_code", "");
        }
        if (TextUtils.isEmpty(a2)) {
            a2 = m530b(t.a("ro.product.country.region", ""));
        }
        if (TextUtils.isEmpty(a2)) {
            a2 = t.a("gsm.vivo.countrycode", "");
        }
        if (TextUtils.isEmpty(a2)) {
            a2 = t.a("persist.sys.oem.region", "");
        }
        if (TextUtils.isEmpty(a2)) {
            a2 = t.a("ro.product.locale.region", "");
        }
        if (TextUtils.isEmpty(a2)) {
            a2 = t.a("persist.sys.country", "");
        }
        if (!TextUtils.isEmpty(a2)) {
            b.m1a("get region from system, region = " + a2);
        }
        if (!TextUtils.isEmpty(a2)) {
            return a2;
        }
        String country = Locale.getDefault().getCountry();
        b.m1a("locale.default.country = " + country);
        return country;
    }

    /* renamed from: b  reason: collision with other method in class */
    private static String m530b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String[] split = str.split(Constants.ACCEPT_TIME_SEPARATOR_SERVER);
        return split.length > 0 ? split[0] : str;
    }

    /* renamed from: b  reason: collision with other method in class */
    public static boolean m531b() {
        return a() == 2;
    }

    public static String c() {
        return m525a("ro.miui.ui.version.name");
    }

    /* renamed from: c  reason: collision with other method in class */
    public static boolean m532c() {
        if (f9182b < 0) {
            f9182b = !m534e() ? 1 : 0;
        }
        return f9182b > 0;
    }

    public static String d() {
        return m525a("ro.build.characteristics");
    }

    /* renamed from: d  reason: collision with other method in class */
    public static boolean m533d() {
        return !p.China.name().equalsIgnoreCase(a(b()).name());
    }

    public static String e() {
        return m525a("ro.product.manufacturer");
    }

    /* renamed from: e  reason: collision with other method in class */
    public static boolean m534e() {
        String str = "";
        try {
            str = t.a("ro.miui.ui.version.code", str);
        } catch (Exception unused) {
        }
        return !TextUtils.isEmpty(str);
    }
}
