package com.amap.api.mapcore.util;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.mipush.sdk.Constants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Date;

/* compiled from: Utils */
public class id {
    static byte[] a(hk hkVar, String str) {
        return a(hkVar, str, true);
    }

    /* JADX WARNING: Removed duplicated region for block: B:52:0x006f A[SYNTHETIC, Splitter:B:52:0x006f] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0081 A[SYNTHETIC, Splitter:B:61:0x0081] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0086 A[SYNTHETIC, Splitter:B:64:0x0086] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static byte[] a(com.amap.api.mapcore.util.hk r6, java.lang.String r7, boolean r8) {
        /*
            r2 = 0
            r0 = 0
            r1 = 0
            byte[] r0 = new byte[r0]
            com.amap.api.mapcore.util.hk$b r3 = r6.a(r7)     // Catch:{ Throwable -> 0x005f, all -> 0x007d }
            if (r3 != 0) goto L_0x0020
            if (r2 == 0) goto L_0x0010
            r1.close()     // Catch:{ Throwable -> 0x0016 }
        L_0x0010:
            if (r3 == 0) goto L_0x0015
            r3.close()     // Catch:{ Throwable -> 0x001b }
        L_0x0015:
            return r0
        L_0x0016:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0010
        L_0x001b:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0015
        L_0x0020:
            r1 = 0
            java.io.InputStream r2 = r3.a(r1)     // Catch:{ Throwable -> 0x0096 }
            if (r2 != 0) goto L_0x003c
            if (r2 == 0) goto L_0x002c
            r2.close()     // Catch:{ Throwable -> 0x0037 }
        L_0x002c:
            if (r3 == 0) goto L_0x0015
            r3.close()     // Catch:{ Throwable -> 0x0032 }
            goto L_0x0015
        L_0x0032:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0015
        L_0x0037:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x002c
        L_0x003c:
            int r1 = r2.available()     // Catch:{ Throwable -> 0x0096 }
            byte[] r0 = new byte[r1]     // Catch:{ Throwable -> 0x0096 }
            r2.read(r0)     // Catch:{ Throwable -> 0x0096 }
            if (r8 == 0) goto L_0x004a
            r6.c(r7)     // Catch:{ Throwable -> 0x0096 }
        L_0x004a:
            if (r2 == 0) goto L_0x004f
            r2.close()     // Catch:{ Throwable -> 0x005a }
        L_0x004f:
            if (r3 == 0) goto L_0x0015
            r3.close()     // Catch:{ Throwable -> 0x0055 }
            goto L_0x0015
        L_0x0055:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0015
        L_0x005a:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x004f
        L_0x005f:
            r1 = move-exception
            r3 = r2
        L_0x0061:
            java.lang.String r4 = "Utils"
            java.lang.String r5 = "readSingleLog"
            com.amap.api.mapcore.util.gc.a(r1, r4, r5)     // Catch:{ all -> 0x0094 }
            if (r2 == 0) goto L_0x006d
            r2.close()     // Catch:{ Throwable -> 0x0078 }
        L_0x006d:
            if (r3 == 0) goto L_0x0015
            r3.close()     // Catch:{ Throwable -> 0x0073 }
            goto L_0x0015
        L_0x0073:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0015
        L_0x0078:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x006d
        L_0x007d:
            r0 = move-exception
            r3 = r2
        L_0x007f:
            if (r2 == 0) goto L_0x0084
            r2.close()     // Catch:{ Throwable -> 0x008a }
        L_0x0084:
            if (r3 == 0) goto L_0x0089
            r3.close()     // Catch:{ Throwable -> 0x008f }
        L_0x0089:
            throw r0
        L_0x008a:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0084
        L_0x008f:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0089
        L_0x0094:
            r0 = move-exception
            goto L_0x007f
        L_0x0096:
            r1 = move-exception
            goto L_0x0061
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.id.a(com.amap.api.mapcore.util.hk, java.lang.String, boolean):byte[]");
    }

    public static String a() {
        return fy.a(new Date().getTime());
    }

    public static String a(Context context, fx fxVar) {
        StringBuilder sb = new StringBuilder();
        try {
            sb.append("\"sim\":\"").append(fs.g(context)).append("\",\"sdkversion\":\"").append(fxVar.c()).append("\",\"product\":\"").append(fxVar.a()).append("\",\"ed\":\"").append(fxVar.e()).append("\",\"nt\":\"").append(fs.e(context)).append("\",\"np\":\"").append(fs.c(context)).append("\",\"mnc\":\"").append(fs.d(context)).append("\",\"ant\":\"").append(fs.f(context)).append("\"");
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return sb.toString();
    }

    public static String a(String str, String str2, String str3, int i, String str4, String str5) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str2).append(Constants.ACCEPT_TIME_SEPARATOR_SP).append("\"timestamp\":\"");
        stringBuffer.append(str3);
        stringBuffer.append("\",\"et\":\"");
        stringBuffer.append(i);
        stringBuffer.append("\",\"classname\":\"");
        stringBuffer.append(str4);
        stringBuffer.append("\",");
        stringBuffer.append("\"detail\":\"");
        stringBuffer.append(str5);
        stringBuffer.append("\"");
        return stringBuffer.toString();
    }

    public static byte[] a(Context context, String str, int i) {
        String[] list;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[0];
        String a = gd.a(context, str);
        hk hkVar = null;
        try {
            hkVar = hk.a(new File(a), 1, 1, (long) i);
            File file = new File(a);
            if (file != null && file.exists()) {
                for (String str2 : file.list()) {
                    if (str2.contains(".0")) {
                        byteArrayOutputStream.write(a(hkVar, str2.split("\\.")[0]));
                    }
                }
            }
            bArr = byteArrayOutputStream.toByteArray();
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
            if (hkVar != null) {
                try {
                    hkVar.close();
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        } catch (IOException e2) {
            gc.a((Throwable) e2, "sui", "gec");
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e3) {
                    ThrowableExtension.printStackTrace(e3);
                }
            }
            if (hkVar != null) {
                hkVar.close();
            }
        } catch (Throwable th2) {
            ThrowableExtension.printStackTrace(th2);
        }
        return bArr;
    }

    public static int a(Context context, String str) {
        try {
            File file = new File(gd.a(context, str));
            if (!file.exists()) {
                return 0;
            }
            return file.list().length;
        } catch (Throwable th) {
            gc.a(th, "sui", "gfn");
            return 0;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:48:0x008f A[SYNTHETIC, Splitter:B:48:0x008f] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0094 A[SYNTHETIC, Splitter:B:51:0x0094] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:53:0x0097=Splitter:B:53:0x0097, B:18:0x005e=Splitter:B:18:0x005e} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r8, java.lang.String r9, int r10, byte[] r11) {
        /*
            r1 = 0
            if (r11 == 0) goto L_0x0006
            int r0 = r11.length
            if (r0 != 0) goto L_0x0007
        L_0x0006:
            return
        L_0x0007:
            java.lang.Class<com.amap.api.mapcore.util.id> r3 = com.amap.api.mapcore.util.id.class
            monitor-enter(r3)
            java.util.Random r0 = new java.util.Random     // Catch:{ all -> 0x0060 }
            r0.<init>()     // Catch:{ all -> 0x0060 }
            java.lang.String r2 = com.amap.api.mapcore.util.gd.a(r8, r9)     // Catch:{ Throwable -> 0x006d, all -> 0x008b }
            java.io.File r4 = new java.io.File     // Catch:{ Throwable -> 0x006d, all -> 0x008b }
            r4.<init>(r2)     // Catch:{ Throwable -> 0x006d, all -> 0x008b }
            r2 = 1
            r5 = 1
            long r6 = (long) r10     // Catch:{ Throwable -> 0x006d, all -> 0x008b }
            com.amap.api.mapcore.util.hk r2 = com.amap.api.mapcore.util.hk.a(r4, r2, r5, r6)     // Catch:{ Throwable -> 0x006d, all -> 0x008b }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00a4 }
            r4.<init>()     // Catch:{ Throwable -> 0x00a4 }
            r5 = 100
            int r0 = r0.nextInt(r5)     // Catch:{ Throwable -> 0x00a4 }
            java.lang.String r0 = java.lang.Integer.toString(r0)     // Catch:{ Throwable -> 0x00a4 }
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch:{ Throwable -> 0x00a4 }
            long r4 = java.lang.System.nanoTime()     // Catch:{ Throwable -> 0x00a4 }
            java.lang.String r4 = java.lang.Long.toString(r4)     // Catch:{ Throwable -> 0x00a4 }
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch:{ Throwable -> 0x00a4 }
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x00a4 }
            com.amap.api.mapcore.util.hk$a r0 = r2.b(r0)     // Catch:{ Throwable -> 0x00a4 }
            r4 = 0
            java.io.OutputStream r1 = r0.a(r4)     // Catch:{ Throwable -> 0x00a4 }
            r1.write(r11)     // Catch:{ Throwable -> 0x00a4 }
            r0.a()     // Catch:{ Throwable -> 0x00a4 }
            r2.e()     // Catch:{ Throwable -> 0x00a4 }
            if (r1 == 0) goto L_0x0059
            r1.close()     // Catch:{ Throwable -> 0x0063 }
        L_0x0059:
            if (r2 == 0) goto L_0x005e
            r2.close()     // Catch:{ Throwable -> 0x0068 }
        L_0x005e:
            monitor-exit(r3)     // Catch:{ all -> 0x0060 }
            goto L_0x0006
        L_0x0060:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x0060 }
            throw r0
        L_0x0063:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0060 }
            goto L_0x0059
        L_0x0068:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0060 }
            goto L_0x005e
        L_0x006d:
            r0 = move-exception
            r2 = r1
        L_0x006f:
            java.lang.String r4 = "sui"
            java.lang.String r5 = "wdc"
            com.amap.api.mapcore.util.gc.a(r0, r4, r5)     // Catch:{ all -> 0x00a2 }
            if (r1 == 0) goto L_0x007b
            r1.close()     // Catch:{ Throwable -> 0x0086 }
        L_0x007b:
            if (r2 == 0) goto L_0x005e
            r2.close()     // Catch:{ Throwable -> 0x0081 }
            goto L_0x005e
        L_0x0081:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0060 }
            goto L_0x005e
        L_0x0086:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0060 }
            goto L_0x007b
        L_0x008b:
            r0 = move-exception
            r2 = r1
        L_0x008d:
            if (r1 == 0) goto L_0x0092
            r1.close()     // Catch:{ Throwable -> 0x0098 }
        L_0x0092:
            if (r2 == 0) goto L_0x0097
            r2.close()     // Catch:{ Throwable -> 0x009d }
        L_0x0097:
            throw r0     // Catch:{ all -> 0x0060 }
        L_0x0098:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x0060 }
            goto L_0x0092
        L_0x009d:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x0060 }
            goto L_0x0097
        L_0x00a2:
            r0 = move-exception
            goto L_0x008d
        L_0x00a4:
            r0 = move-exception
            goto L_0x006f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.id.a(android.content.Context, java.lang.String, int, byte[]):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:48:0x007b, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:?, code lost:
        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0080, code lost:
        r0 = th;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:16:0x003a, B:39:0x0067] */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0053 A[SYNTHETIC, Splitter:B:29:0x0053] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0067 A[SYNTHETIC, Splitter:B:39:0x0067] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0072 A[SYNTHETIC, Splitter:B:44:0x0072] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static long b(android.content.Context r7, java.lang.String r8) {
        /*
            r0 = 0
            java.lang.String r2 = com.amap.api.mapcore.util.gd.a(r7, r8)
            java.io.File r5 = new java.io.File
            r5.<init>(r2)
            boolean r2 = r5.exists()
            if (r2 != 0) goto L_0x0012
        L_0x0011:
            return r0
        L_0x0012:
            r4 = 0
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ FileNotFoundException -> 0x0034, IOException -> 0x0048, Throwable -> 0x005c, all -> 0x008c }
            r3.<init>(r5)     // Catch:{ FileNotFoundException -> 0x0034, IOException -> 0x0048, Throwable -> 0x005c, all -> 0x008c }
            int r2 = r3.available()     // Catch:{ FileNotFoundException -> 0x0093, IOException -> 0x0091, Throwable -> 0x008f }
            byte[] r2 = new byte[r2]     // Catch:{ FileNotFoundException -> 0x0093, IOException -> 0x0091, Throwable -> 0x008f }
            r3.read(r2)     // Catch:{ FileNotFoundException -> 0x0093, IOException -> 0x0091, Throwable -> 0x008f }
            java.lang.String r2 = com.amap.api.mapcore.util.fy.a(r2)     // Catch:{ FileNotFoundException -> 0x0093, IOException -> 0x0091, Throwable -> 0x008f }
            long r0 = java.lang.Long.parseLong(r2)     // Catch:{ FileNotFoundException -> 0x0093, IOException -> 0x0091, Throwable -> 0x008f }
            if (r3 == 0) goto L_0x0011
            r3.close()     // Catch:{ Throwable -> 0x002f }
            goto L_0x0011
        L_0x002f:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x0011
        L_0x0034:
            r2 = move-exception
            r3 = r4
        L_0x0036:
            java.lang.String r4 = "sm"
            java.lang.String r5 = "gut"
            com.amap.api.mapcore.util.gc.a(r2, r4, r5)     // Catch:{ all -> 0x0080 }
            if (r3 == 0) goto L_0x0011
            r3.close()     // Catch:{ Throwable -> 0x0043 }
            goto L_0x0011
        L_0x0043:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x0011
        L_0x0048:
            r2 = move-exception
            r3 = r4
        L_0x004a:
            java.lang.String r4 = "sm"
            java.lang.String r5 = "gut"
            com.amap.api.mapcore.util.gc.a(r2, r4, r5)     // Catch:{ all -> 0x0080 }
            if (r3 == 0) goto L_0x0011
            r3.close()     // Catch:{ Throwable -> 0x0057 }
            goto L_0x0011
        L_0x0057:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x0011
        L_0x005c:
            r2 = move-exception
            r3 = r4
        L_0x005e:
            java.lang.String r4 = "sm"
            java.lang.String r6 = "gut"
            com.amap.api.mapcore.util.gc.a(r2, r4, r6)     // Catch:{ all -> 0x0080 }
            if (r5 == 0) goto L_0x0070
            boolean r2 = r5.exists()     // Catch:{ Throwable -> 0x007b }
            if (r2 == 0) goto L_0x0070
            r5.delete()     // Catch:{ Throwable -> 0x007b }
        L_0x0070:
            if (r3 == 0) goto L_0x0011
            r3.close()     // Catch:{ Throwable -> 0x0076 }
            goto L_0x0011
        L_0x0076:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x0011
        L_0x007b:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)     // Catch:{ all -> 0x0080 }
            goto L_0x0070
        L_0x0080:
            r0 = move-exception
        L_0x0081:
            if (r3 == 0) goto L_0x0086
            r3.close()     // Catch:{ Throwable -> 0x0087 }
        L_0x0086:
            throw r0
        L_0x0087:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0086
        L_0x008c:
            r0 = move-exception
            r3 = r4
            goto L_0x0081
        L_0x008f:
            r2 = move-exception
            goto L_0x005e
        L_0x0091:
            r2 = move-exception
            goto L_0x004a
        L_0x0093:
            r2 = move-exception
            goto L_0x0036
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.id.b(android.content.Context, java.lang.String):long");
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x003d A[SYNTHETIC, Splitter:B:18:0x003d] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x004d A[SYNTHETIC, Splitter:B:27:0x004d] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x005a A[SYNTHETIC, Splitter:B:34:0x005a] */
    /* JADX WARNING: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:15:0x0038=Splitter:B:15:0x0038, B:24:0x0048=Splitter:B:24:0x0048} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r5, long r6, java.lang.String r8) {
        /*
            java.lang.String r0 = com.amap.api.mapcore.util.gd.a(r5, r8)
            java.io.File r3 = new java.io.File
            r3.<init>(r0)
            java.io.File r0 = r3.getParentFile()
            boolean r0 = r0.exists()
            if (r0 != 0) goto L_0x001a
            java.io.File r0 = r3.getParentFile()
            r0.mkdirs()
        L_0x001a:
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ FileNotFoundException -> 0x0036, IOException -> 0x0046, all -> 0x0056 }
            r1.<init>(r3)     // Catch:{ FileNotFoundException -> 0x0036, IOException -> 0x0046, all -> 0x0056 }
            java.lang.String r0 = java.lang.String.valueOf(r6)     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            byte[] r0 = com.amap.api.mapcore.util.fy.a(r0)     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            r1.write(r0)     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            if (r1 == 0) goto L_0x0030
            r1.close()     // Catch:{ Throwable -> 0x0031 }
        L_0x0030:
            return
        L_0x0031:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0030
        L_0x0036:
            r0 = move-exception
            r1 = r2
        L_0x0038:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0063 }
            if (r1 == 0) goto L_0x0030
            r1.close()     // Catch:{ Throwable -> 0x0041 }
            goto L_0x0030
        L_0x0041:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0030
        L_0x0046:
            r0 = move-exception
            r1 = r2
        L_0x0048:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0063 }
            if (r1 == 0) goto L_0x0030
            r1.close()     // Catch:{ Throwable -> 0x0051 }
            goto L_0x0030
        L_0x0051:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0030
        L_0x0056:
            r0 = move-exception
            r1 = r2
        L_0x0058:
            if (r1 == 0) goto L_0x005d
            r1.close()     // Catch:{ Throwable -> 0x005e }
        L_0x005d:
            throw r0
        L_0x005e:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x005d
        L_0x0063:
            r0 = move-exception
            goto L_0x0058
        L_0x0065:
            r0 = move-exception
            goto L_0x0048
        L_0x0067:
            r0 = move-exception
            goto L_0x0038
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.id.a(android.content.Context, long, java.lang.String):void");
    }
}
