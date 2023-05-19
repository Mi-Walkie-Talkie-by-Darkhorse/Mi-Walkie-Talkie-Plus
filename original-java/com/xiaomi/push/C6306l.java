package com.xiaomi.push;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* renamed from: com.xiaomi.push.l */
/* loaded from: classes2.dex */
public class C6306l {

    /* renamed from: a */
    private static volatile int f22825a = 0;

    /* renamed from: a */
    private static Map<String, EnumC6310p> f22826a = null;

    /* renamed from: b */
    private static int f22827b = -1;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m1856a() {
        int i;
        boolean z;
        if (f22825a == 0) {
            try {
                i = 1;
            } catch (Throwable th) {
                AbstractC5876b.m4144a("get isMIUI failed", th);
                f22825a = 0;
            }
            if (TextUtils.isEmpty(m1847a("ro.miui.ui.version.code")) && TextUtils.isEmpty(m1847a("ro.miui.ui.version.name"))) {
                z = false;
                if (z) {
                    i = 2;
                }
                f22825a = i;
                AbstractC5876b.m4141b("isMIUI's value is: " + f22825a);
            }
            z = true;
            if (z) {
            }
            f22825a = i;
            AbstractC5876b.m4141b("isMIUI's value is: " + f22825a);
        }
        return f22825a;
    }

    /* renamed from: a */
    public static int m1852a(Context context) {
        String m1847a = m1847a("ro.miui.ui.version.code");
        if (TextUtils.isEmpty(m1847a) || !TextUtils.isDigitsOnly(m1847a)) {
            return 0;
        }
        return Integer.parseInt(m1847a);
    }

    /* renamed from: a */
    public static EnumC6310p m1848a(String str) {
        EnumC6310p m1842b = m1842b(str);
        return m1842b == null ? EnumC6310p.Global : m1842b;
    }

    /* renamed from: a */
    public static String m1855a() {
        int m1241a = C6469u.m1241a();
        return (!m1853a() || m1241a <= 0) ? "" : m1241a < 2 ? "alpha" : m1241a < 3 ? "development" : "stable";
    }

    /* renamed from: a */
    public static String m1850a(Intent intent) {
        if (intent == null) {
            return null;
        }
        return intent.toString() + " " + m1849a(intent.getExtras());
    }

    /* renamed from: a */
    public static String m1849a(Bundle bundle) {
        String m1849a;
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
                    m1849a = Arrays.toString((int[]) obj);
                } else if (obj instanceof byte[]) {
                    m1849a = Arrays.toString((byte[]) obj);
                } else if (obj instanceof boolean[]) {
                    m1849a = Arrays.toString((boolean[]) obj);
                } else if (obj instanceof short[]) {
                    m1849a = Arrays.toString((short[]) obj);
                } else if (obj instanceof long[]) {
                    m1849a = Arrays.toString((long[]) obj);
                } else if (obj instanceof float[]) {
                    m1849a = Arrays.toString((float[]) obj);
                } else if (obj instanceof double[]) {
                    m1849a = Arrays.toString((double[]) obj);
                } else if (obj instanceof String[]) {
                    m1849a = Arrays.toString((String[]) obj);
                } else if (obj instanceof CharSequence[]) {
                    m1849a = Arrays.toString((CharSequence[]) obj);
                } else if (obj instanceof Parcelable[]) {
                    m1849a = Arrays.toString((Parcelable[]) obj);
                } else if (obj instanceof Bundle) {
                    m1849a = m1849a((Bundle) obj);
                } else {
                    sb.append(obj);
                    z = false;
                }
                sb.append(m1849a);
                z = false;
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: a */
    public static String m1847a(String str) {
        try {
            try {
                return (String) C6016bj.m3646a("android.os.SystemProperties", "get", str, "");
            } catch (Exception e) {
                AbstractC5876b.m4138d("fail to get property. " + e);
                return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: a */
    private static void m1854a() {
        if (f22826a != null) {
            return;
        }
        HashMap hashMap = new HashMap();
        f22826a = hashMap;
        hashMap.put("CN", EnumC6310p.China);
        Map<String, EnumC6310p> map = f22826a;
        EnumC6310p enumC6310p = EnumC6310p.Europe;
        map.put("FI", enumC6310p);
        f22826a.put("SE", enumC6310p);
        f22826a.put("NO", enumC6310p);
        f22826a.put("FO", enumC6310p);
        f22826a.put("EE", enumC6310p);
        f22826a.put("LV", enumC6310p);
        f22826a.put("LT", enumC6310p);
        f22826a.put("BY", enumC6310p);
        f22826a.put("MD", enumC6310p);
        f22826a.put("UA", enumC6310p);
        f22826a.put("PL", enumC6310p);
        f22826a.put("CZ", enumC6310p);
        f22826a.put("SK", enumC6310p);
        f22826a.put("HU", enumC6310p);
        f22826a.put("DE", enumC6310p);
        f22826a.put("AT", enumC6310p);
        f22826a.put("CH", enumC6310p);
        f22826a.put("LI", enumC6310p);
        f22826a.put("GB", enumC6310p);
        f22826a.put("IE", enumC6310p);
        f22826a.put("NL", enumC6310p);
        f22826a.put("BE", enumC6310p);
        f22826a.put("LU", enumC6310p);
        f22826a.put("FR", enumC6310p);
        f22826a.put("RO", enumC6310p);
        f22826a.put("BG", enumC6310p);
        f22826a.put("RS", enumC6310p);
        f22826a.put("MK", enumC6310p);
        f22826a.put("AL", enumC6310p);
        f22826a.put("GR", enumC6310p);
        f22826a.put("SI", enumC6310p);
        f22826a.put("HR", enumC6310p);
        f22826a.put("IT", enumC6310p);
        f22826a.put("SM", enumC6310p);
        f22826a.put("MT", enumC6310p);
        f22826a.put("ES", enumC6310p);
        f22826a.put("PT", enumC6310p);
        f22826a.put("AD", enumC6310p);
        f22826a.put("CY", enumC6310p);
        f22826a.put("DK", enumC6310p);
        f22826a.put("RU", EnumC6310p.Russia);
        f22826a.put("IN", EnumC6310p.India);
    }

    /* renamed from: a */
    public static boolean m1853a() {
        return m1856a() == 1;
    }

    /* renamed from: a */
    public static boolean m1851a(Context context) {
        return context != null && m1846a(context.getPackageName());
    }

    /* renamed from: a */
    public static boolean m1846a(String str) {
        return "com.xiaomi.xmsf".equals(str);
    }

    /* renamed from: b */
    public static int m1843b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 0).versionCode;
        } catch (Exception unused) {
            return 0;
        }
    }

    /* renamed from: b */
    private static EnumC6310p m1842b(String str) {
        m1854a();
        return f22826a.get(str.toUpperCase());
    }

    /* renamed from: b */
    public static String m1845b() {
        String m1242a = C6468t.m1242a("ro.miui.region", "");
        if (TextUtils.isEmpty(m1242a)) {
            m1242a = C6468t.m1242a("persist.sys.oppo.region", "");
        }
        if (TextUtils.isEmpty(m1242a)) {
            m1242a = C6468t.m1242a("ro.oppo.regionmark", "");
        }
        if (TextUtils.isEmpty(m1242a)) {
            m1242a = C6468t.m1242a("ro.vendor.oplus.regionmark", "");
        }
        if (TextUtils.isEmpty(m1242a)) {
            m1242a = C6468t.m1242a("ro.hw.country", "");
        }
        if (TextUtils.isEmpty(m1242a)) {
            m1242a = C6468t.m1242a("ro.csc.countryiso_code", "");
        }
        if (TextUtils.isEmpty(m1242a)) {
            m1242a = m1841b(C6468t.m1242a("ro.product.country.region", ""));
        }
        if (TextUtils.isEmpty(m1242a)) {
            m1242a = C6468t.m1242a("gsm.vivo.countrycode", "");
        }
        if (TextUtils.isEmpty(m1242a)) {
            m1242a = C6468t.m1242a("persist.sys.oem.region", "");
        }
        if (TextUtils.isEmpty(m1242a)) {
            m1242a = C6468t.m1242a("ro.product.locale.region", "");
        }
        if (TextUtils.isEmpty(m1242a)) {
            m1242a = C6468t.m1242a("persist.sys.country", "");
        }
        if (!TextUtils.isEmpty(m1242a)) {
            AbstractC5876b.m4147a("get region from system, region = " + m1242a);
        }
        if (TextUtils.isEmpty(m1242a)) {
            String country = Locale.getDefault().getCountry();
            AbstractC5876b.m4147a("locale.default.country = " + country);
            return country;
        }
        return m1242a;
    }

    /* renamed from: b */
    private static String m1841b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String[] split = str.split(Constants.ACCEPT_TIME_SEPARATOR_SERVER);
        return split.length > 0 ? split[0] : str;
    }

    /* renamed from: b */
    public static boolean m1844b() {
        return m1856a() == 2;
    }

    /* renamed from: c */
    public static String m1840c() {
        return m1847a("ro.miui.ui.version.name");
    }

    /* renamed from: c */
    public static boolean m1839c() {
        if (f22827b < 0) {
            f22827b = !m1835e() ? 1 : 0;
        }
        return f22827b > 0;
    }

    /* renamed from: d */
    public static String m1838d() {
        return m1847a("ro.build.characteristics");
    }

    /* renamed from: d */
    public static boolean m1837d() {
        return !EnumC6310p.China.name().equalsIgnoreCase(m1848a(m1845b()).name());
    }

    /* renamed from: e */
    public static String m1836e() {
        return m1847a("ro.product.manufacturer");
    }

    /* renamed from: e */
    public static boolean m1835e() {
        String str = "";
        try {
            str = C6468t.m1242a("ro.miui.ui.version.code", "");
        } catch (Exception unused) {
        }
        return !TextUtils.isEmpty(str);
    }
}
