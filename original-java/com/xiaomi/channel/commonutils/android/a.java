package com.xiaomi.channel.commonutils.android;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class a {
    private static int a(List<String> list, String str) {
        int i = 0;
        while (list != null && i < list.size()) {
            if (!TextUtils.isEmpty(str) && str.equalsIgnoreCase((String) list.get(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private static String a(String str) {
        if (str == null) {
            return str;
        }
        String[] split = str.split("/");
        return (split == null || split.length <= 0) ? str : split[split.length - 1];
    }

    public static List<String> a(Context context) {
        ArrayList arrayList = new ArrayList();
        String b = b(context);
        if (!TextUtils.isEmpty(b)) {
            arrayList.add(b);
        }
        String a = i.a("ro.product.cpu.abi", "");
        if (!TextUtils.isEmpty(a)) {
            arrayList.add(a);
        }
        String a2 = i.a("ro.product.cpu.abi2", "");
        if (!TextUtils.isEmpty(a2)) {
            arrayList.add(a2);
        }
        String a3 = i.a("ro.product.cpu.abilist", "");
        if (!TextUtils.isEmpty(a3)) {
            String[] split = a3.split(Constants.ACCEPT_TIME_SEPARATOR_SP);
            int i = 0;
            while (split != null && i < split.length) {
                if (!TextUtils.isEmpty(split[i])) {
                    arrayList.add(split[i]);
                }
                i++;
            }
        }
        arrayList.add("armeabi");
        return arrayList;
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x011c A[SYNTHETIC, Splitter:B:43:0x011c] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r10, java.lang.String r11, java.lang.String r12) {
        /*
            r1 = 0
            if (r11 == 0) goto L_0x001e
            java.lang.String r0 = java.io.File.separator     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            boolean r0 = r11.endsWith(r0)     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            if (r0 != 0) goto L_0x001e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            r0.<init>()     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            java.lang.StringBuilder r0 = r0.append(r11)     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            java.lang.String r2 = java.io.File.separator     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            java.lang.String r11 = r0.toString()     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
        L_0x001e:
            if (r12 == 0) goto L_0x003b
            java.lang.String r0 = java.io.File.separator     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            boolean r0 = r12.endsWith(r0)     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            if (r0 != 0) goto L_0x003b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            r0.<init>()     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            java.lang.StringBuilder r0 = r0.append(r12)     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            java.lang.String r2 = java.io.File.separator     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            java.lang.String r12 = r0.toString()     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
        L_0x003b:
            java.util.HashMap r3 = new java.util.HashMap     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            r3.<init>()     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            java.util.List r4 = a(r10)     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            java.util.zip.ZipFile r2 = new java.util.zip.ZipFile     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            r2.<init>(r11)     // Catch:{ Exception -> 0x013b, all -> 0x0135 }
            java.util.Enumeration r5 = r2.entries()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r6 = new byte[r0]     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
        L_0x0051:
            boolean r0 = r5.hasMoreElements()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            if (r0 == 0) goto L_0x0120
            java.lang.Object r0 = r5.nextElement()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.util.zip.ZipEntry r0 = (java.util.zip.ZipEntry) r0     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            r1.<init>()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.String r7 = "ze.getName() = "
            java.lang.StringBuilder r1 = r1.append(r7)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.String r7 = r0.getName()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.StringBuilder r1 = r1.append(r7)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            com.xiaomi.channel.commonutils.logger.b.b(r1)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.String r1 = r0.getName()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.String r7 = "lib/"
            boolean r1 = r1.startsWith(r7)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            if (r1 == 0) goto L_0x0051
            boolean r1 = r0.isDirectory()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            if (r1 != 0) goto L_0x0051
            java.lang.String r1 = r0.getName()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.String r7 = a(r1)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.String r1 = r0.getName()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.String r8 = b(r1)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.Object r1 = r3.get(r7)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.String r1 = (java.lang.String) r1     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            boolean r9 = android.text.TextUtils.isEmpty(r1)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            if (r9 != 0) goto L_0x00b1
            int r9 = a(r4, r8)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            if (r9 < 0) goto L_0x0051
            int r1 = a(r4, r1)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            if (r9 >= r1) goto L_0x0051
        L_0x00b1:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            r1.<init>()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.String r9 = "use abi "
            java.lang.StringBuilder r1 = r1.append(r9)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.StringBuilder r1 = r1.append(r8)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            com.xiaomi.channel.commonutils.logger.b.b(r1)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            r3.put(r7, r8)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.io.File r1 = new java.io.File     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            r8.<init>()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.StringBuilder r8 = r8.append(r12)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.StringBuilder r7 = r8.append(r7)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.lang.String r7 = r7.toString()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            r1.<init>(r7)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            boolean r7 = r1.exists()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            if (r7 == 0) goto L_0x00e9
            r1.delete()     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
        L_0x00e9:
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            r7.<init>(r1)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.io.BufferedInputStream r1 = new java.io.BufferedInputStream     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            java.io.InputStream r0 = r2.getInputStream(r0)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            r1.<init>(r0)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
        L_0x00f7:
            r0 = 0
            r8 = 1024(0x400, float:1.435E-42)
            int r0 = r1.read(r6, r0, r8)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            r8 = -1
            if (r0 == r8) goto L_0x0111
            r8 = 0
            r7.write(r6, r8, r0)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            goto L_0x00f7
        L_0x0106:
            r0 = move-exception
            r1 = r2
        L_0x0108:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0138 }
            if (r1 == 0) goto L_0x0110
            r1.close()     // Catch:{ Exception -> 0x012b }
        L_0x0110:
            return
        L_0x0111:
            com.xiaomi.channel.commonutils.file.a.a(r1)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            com.xiaomi.channel.commonutils.file.a.a(r7)     // Catch:{ Exception -> 0x0106, all -> 0x0119 }
            goto L_0x0051
        L_0x0119:
            r0 = move-exception
        L_0x011a:
            if (r2 == 0) goto L_0x011f
            r2.close()     // Catch:{ Exception -> 0x0130 }
        L_0x011f:
            throw r0
        L_0x0120:
            if (r2 == 0) goto L_0x0110
            r2.close()     // Catch:{ Exception -> 0x0126 }
            goto L_0x0110
        L_0x0126:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0110
        L_0x012b:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0110
        L_0x0130:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x011f
        L_0x0135:
            r0 = move-exception
            r2 = r1
            goto L_0x011a
        L_0x0138:
            r0 = move-exception
            r2 = r1
            goto L_0x011a
        L_0x013b:
            r0 = move-exception
            goto L_0x0108
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.channel.commonutils.android.a.a(android.content.Context, java.lang.String, java.lang.String):void");
    }

    public static String b(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            Field declaredField = Class.forName("android.content.pm.ApplicationInfo").getDeclaredField("primaryCpuAbi");
            declaredField.setAccessible(true);
            return (String) declaredField.get(applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    private static String b(String str) {
        if (str != null) {
            String[] split = str.split("/");
            if (split != null && split.length > 1) {
                return split[split.length - 2];
            }
        }
        return "armeabi";
    }
}
