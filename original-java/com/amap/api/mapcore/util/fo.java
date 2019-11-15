package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.security.MessageDigest;
import java.util.Locale;

/* compiled from: AppInfo */
public class fo {
    static String a = null;
    static boolean b = false;
    private static String c = "";
    private static String d = "";
    private static String e = "";
    private static String f = "";

    private static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str.toCharArray();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        while (i < length) {
            char c2 = charArray[i];
            if (('A' > c2 || c2 > 'z') && (('0' > c2 || c2 > ':') && c2 != '.')) {
                try {
                    gf.b(fy.a(), str, "errorPackage");
                    return false;
                } catch (Throwable th) {
                    return false;
                }
            } else {
                i++;
            }
        }
        return true;
    }

    static boolean a() {
        try {
            if (b) {
                return true;
            }
            if (b(a)) {
                b = true;
                return true;
            } else if (!TextUtils.isEmpty(a)) {
                b = false;
                a = null;
                return false;
            } else if (b(d)) {
                b = true;
                return true;
            } else if (TextUtils.isEmpty(d)) {
                return true;
            } else {
                b = false;
                d = null;
                return false;
            }
        } catch (Throwable th) {
            return true;
        }
    }

    public static String a(Context context) {
        try {
            return h(context);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return f;
        }
    }

    public static String b(Context context) {
        try {
            if (!"".equals(c)) {
                return c;
            }
            PackageManager packageManager = context.getPackageManager();
            c = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
            return c;
        } catch (Throwable th) {
            gc.a(th, "AI", "gAN");
        }
    }

    public static String c(Context context) {
        try {
            if (d != null && !"".equals(d)) {
                return d;
            }
            d = context.getPackageName();
            if (!b(d)) {
                d = context.getPackageName();
            }
            return d;
        } catch (Throwable th) {
            gc.a(th, "AI", "gpck");
        }
    }

    public static String d(Context context) {
        try {
            if (!"".equals(e)) {
                return e;
            }
            e = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            if (e == null) {
                return "";
            }
            return e;
        } catch (Throwable th) {
            gc.a(th, "AI", "gAV");
        }
    }

    public static String e(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            byte[] digest = MessageDigest.getInstance("SHA1").digest(packageInfo.signatures[0].toByteArray());
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b2 : digest) {
                String upperCase = Integer.toHexString(b2 & 255).toUpperCase(Locale.US);
                if (upperCase.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(upperCase);
                stringBuffer.append(":");
            }
            String str = packageInfo.packageName;
            if (b(str)) {
                str = packageInfo.packageName;
            }
            if (!TextUtils.isEmpty(d)) {
                str = c(context);
            }
            stringBuffer.append(str);
            a = stringBuffer.toString();
            return a;
        } catch (Throwable th) {
            gc.a(th, "AI", "gsp");
            return a;
        }
    }

    static void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            f = str;
        }
    }

    public static String f(Context context) {
        try {
            return h(context);
        } catch (Throwable th) {
            gc.a(th, "ai", "gKy");
            return f;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0048 A[SYNTHETIC, Splitter:B:22:0x0048] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0053 A[SYNTHETIC, Splitter:B:27:0x0053] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String g(android.content.Context r5) {
        /*
            java.lang.String r0 = "k.store"
            java.lang.String r0 = com.amap.api.mapcore.util.gd.a(r5, r0)
            java.io.File r3 = new java.io.File
            r3.<init>(r0)
            boolean r0 = r3.exists()
            if (r0 != 0) goto L_0x0014
            java.lang.String r0 = ""
        L_0x0013:
            return r0
        L_0x0014:
            r2 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch:{ Throwable -> 0x003d, all -> 0x006f }
            r1.<init>(r3)     // Catch:{ Throwable -> 0x003d, all -> 0x006f }
            int r0 = r1.available()     // Catch:{ Throwable -> 0x0072 }
            byte[] r0 = new byte[r0]     // Catch:{ Throwable -> 0x0072 }
            r1.read(r0)     // Catch:{ Throwable -> 0x0072 }
            java.lang.String r0 = com.amap.api.mapcore.util.fy.a(r0)     // Catch:{ Throwable -> 0x0072 }
            int r2 = r0.length()     // Catch:{ Throwable -> 0x0072 }
            r4 = 32
            if (r2 != r4) goto L_0x003a
        L_0x002f:
            if (r1 == 0) goto L_0x0013
            r1.close()     // Catch:{ Throwable -> 0x0035 }
            goto L_0x0013
        L_0x0035:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0013
        L_0x003a:
            java.lang.String r0 = ""
            goto L_0x002f
        L_0x003d:
            r0 = move-exception
            r1 = r2
        L_0x003f:
            java.lang.String r2 = "ai"
            java.lang.String r4 = "gKe"
            com.amap.api.mapcore.util.gc.a(r0, r2, r4)     // Catch:{ all -> 0x005e }
            if (r3 == 0) goto L_0x0051
            boolean r0 = r3.exists()     // Catch:{ Throwable -> 0x0059 }
            if (r0 == 0) goto L_0x0051
            r3.delete()     // Catch:{ Throwable -> 0x0059 }
        L_0x0051:
            if (r1 == 0) goto L_0x0056
            r1.close()     // Catch:{ Throwable -> 0x0065 }
        L_0x0056:
            java.lang.String r0 = ""
            goto L_0x0013
        L_0x0059:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x005e }
            goto L_0x0051
        L_0x005e:
            r0 = move-exception
        L_0x005f:
            if (r1 == 0) goto L_0x0064
            r1.close()     // Catch:{ Throwable -> 0x006a }
        L_0x0064:
            throw r0
        L_0x0065:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0056
        L_0x006a:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0064
        L_0x006f:
            r0 = move-exception
            r1 = r2
            goto L_0x005f
        L_0x0072:
            r0 = move-exception
            goto L_0x003f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fo.g(android.content.Context):java.lang.String");
    }

    private static String h(Context context) throws NameNotFoundException {
        if (f == null || f.equals("")) {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null) {
                return f;
            }
            f = applicationInfo.metaData.getString("com.amap.api.v2.apikey");
            if (f == null) {
                f = g(context);
            }
        }
        return f;
    }
}
