package com.amap.api.col.sl;

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
public final class bp {
    static String a = null;
    static boolean b = false;
    private static String c = "";
    private static String d = "";
    private static String e = "";
    private static String f = "";

    private static boolean c(String str) {
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
                    cm.b(ca.a(), str, "errorPackage");
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
            if (c(a)) {
                b = true;
                return true;
            } else if (!TextUtils.isEmpty(a)) {
                b = false;
                a = null;
                return false;
            } else if (c(d)) {
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
            cj.a(th, "AI", "gAN");
        }
    }

    public static void a(String str) {
        d = str;
    }

    public static String c(Context context) {
        try {
            if (d != null && !"".equals(d)) {
                return d;
            }
            String packageName = context.getPackageName();
            d = packageName;
            if (!c(packageName)) {
                d = context.getPackageName();
            }
            return d;
        } catch (Throwable th) {
            cj.a(th, "AI", "gpck");
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
            cj.a(th, "AI", "gAV");
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
            if (c(str)) {
                str = packageInfo.packageName;
            }
            if (!TextUtils.isEmpty(d)) {
                str = c(context);
            }
            stringBuffer.append(str);
            String stringBuffer2 = stringBuffer.toString();
            a = stringBuffer2;
            return stringBuffer2;
        } catch (Throwable th) {
            cj.a(th, "AI", "gsp");
            return a;
        }
    }

    static void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            f = str;
        }
    }

    static void a(final Context context, final String str) {
        if (!TextUtils.isEmpty(str)) {
            f = str;
            if (context != null) {
                cm.d().submit(new Runnable() {
                    /* JADX WARNING: Removed duplicated region for block: B:17:0x0040 A[SYNTHETIC, Splitter:B:17:0x0040] */
                    /* JADX WARNING: Removed duplicated region for block: B:23:0x004c A[SYNTHETIC, Splitter:B:23:0x004c] */
                    /* JADX WARNING: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
                    /* Code decompiled incorrectly, please refer to instructions dump. */
                    public final void run() {
                        /*
                            r4 = this;
                            r1 = 0
                            android.content.Context r0 = r2     // Catch:{ Throwable -> 0x0036 }
                            java.lang.String r2 = "k.store"
                            java.lang.String r0 = com.amap.api.col.sl.ck.a(r0, r2)     // Catch:{ Throwable -> 0x0036 }
                            java.io.File r3 = new java.io.File     // Catch:{ Throwable -> 0x0036 }
                            r3.<init>(r0)     // Catch:{ Throwable -> 0x0036 }
                            java.io.File r0 = r3.getParentFile()     // Catch:{ Throwable -> 0x0036 }
                            boolean r0 = r0.exists()     // Catch:{ Throwable -> 0x0036 }
                            if (r0 != 0) goto L_0x001f
                            java.io.File r0 = r3.getParentFile()     // Catch:{ Throwable -> 0x0036 }
                            r0.mkdirs()     // Catch:{ Throwable -> 0x0036 }
                        L_0x001f:
                            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch:{ Throwable -> 0x0036 }
                            r2.<init>(r3)     // Catch:{ Throwable -> 0x0036 }
                            java.lang.String r0 = r3     // Catch:{ Throwable -> 0x0058, all -> 0x0055 }
                            byte[] r0 = com.amap.api.col.sl.ca.a(r0)     // Catch:{ Throwable -> 0x0058, all -> 0x0055 }
                            r2.write(r0)     // Catch:{ Throwable -> 0x0058, all -> 0x0055 }
                            r2.close()     // Catch:{ Throwable -> 0x0031 }
                        L_0x0030:
                            return
                        L_0x0031:
                            r0 = move-exception
                            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                            goto L_0x0030
                        L_0x0036:
                            r0 = move-exception
                        L_0x0037:
                            java.lang.String r2 = "AI"
                            java.lang.String r3 = "stf"
                            com.amap.api.col.sl.cj.a(r0, r2, r3)     // Catch:{ all -> 0x0049 }
                            if (r1 == 0) goto L_0x0030
                            r1.close()     // Catch:{ Throwable -> 0x0044 }
                            goto L_0x0030
                        L_0x0044:
                            r0 = move-exception
                            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                            goto L_0x0030
                        L_0x0049:
                            r0 = move-exception
                        L_0x004a:
                            if (r1 == 0) goto L_0x004f
                            r1.close()     // Catch:{ Throwable -> 0x0050 }
                        L_0x004f:
                            throw r0
                        L_0x0050:
                            r1 = move-exception
                            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
                            goto L_0x004f
                        L_0x0055:
                            r0 = move-exception
                            r1 = r2
                            goto L_0x004a
                        L_0x0058:
                            r0 = move-exception
                            r1 = r2
                            goto L_0x0037
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.bp.AnonymousClass1.run():void");
                    }
                });
            }
        }
    }

    public static String f(Context context) {
        try {
            return h(context);
        } catch (Throwable th) {
            cj.a(th, "AI", "gKy");
            return f;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x004a A[Catch:{ Throwable -> 0x0055, all -> 0x005a }] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x004f A[SYNTHETIC, Splitter:B:25:0x004f] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String g(android.content.Context r5) {
        /*
            java.lang.String r0 = "k.store"
            java.lang.String r0 = com.amap.api.col.sl.ck.a(r5, r0)
            java.io.File r3 = new java.io.File
            r3.<init>(r0)
            boolean r0 = r3.exists()
            if (r0 != 0) goto L_0x0014
            java.lang.String r0 = ""
        L_0x0013:
            return r0
        L_0x0014:
            r2 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch:{ Throwable -> 0x003b, all -> 0x006b }
            r1.<init>(r3)     // Catch:{ Throwable -> 0x003b, all -> 0x006b }
            int r0 = r1.available()     // Catch:{ Throwable -> 0x006e }
            byte[] r0 = new byte[r0]     // Catch:{ Throwable -> 0x006e }
            r1.read(r0)     // Catch:{ Throwable -> 0x006e }
            java.lang.String r0 = com.amap.api.col.sl.ca.a(r0)     // Catch:{ Throwable -> 0x006e }
            int r2 = r0.length()     // Catch:{ Throwable -> 0x006e }
            r4 = 32
            if (r2 != r4) goto L_0x0038
        L_0x002f:
            r1.close()     // Catch:{ Throwable -> 0x0033 }
            goto L_0x0013
        L_0x0033:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0013
        L_0x0038:
            java.lang.String r0 = ""
            goto L_0x002f
        L_0x003b:
            r0 = move-exception
            r1 = r2
        L_0x003d:
            java.lang.String r2 = "AI"
            java.lang.String r4 = "gKe"
            com.amap.api.col.sl.cj.a(r0, r2, r4)     // Catch:{ all -> 0x005a }
            boolean r0 = r3.exists()     // Catch:{ Throwable -> 0x0055 }
            if (r0 == 0) goto L_0x004d
            r3.delete()     // Catch:{ Throwable -> 0x0055 }
        L_0x004d:
            if (r1 == 0) goto L_0x0052
            r1.close()     // Catch:{ Throwable -> 0x0061 }
        L_0x0052:
            java.lang.String r0 = ""
            goto L_0x0013
        L_0x0055:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x005a }
            goto L_0x004d
        L_0x005a:
            r0 = move-exception
        L_0x005b:
            if (r1 == 0) goto L_0x0060
            r1.close()     // Catch:{ Throwable -> 0x0066 }
        L_0x0060:
            throw r0
        L_0x0061:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0052
        L_0x0066:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0060
        L_0x006b:
            r0 = move-exception
            r1 = r2
            goto L_0x005b
        L_0x006e:
            r0 = move-exception
            goto L_0x003d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.bp.g(android.content.Context):java.lang.String");
    }

    private static String h(Context context) throws NameNotFoundException {
        if (f == null || f.equals("")) {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null) {
                return f;
            }
            String string = applicationInfo.metaData.getString("com.amap.api.v2.apikey");
            f = string;
            if (string == null) {
                f = g(context);
            }
        }
        return f;
    }
}
