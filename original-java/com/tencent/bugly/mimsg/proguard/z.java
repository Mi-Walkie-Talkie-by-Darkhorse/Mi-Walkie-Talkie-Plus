package com.tencent.bugly.mimsg.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.Process;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.crashreport.common.info.PlugInBean;
import com.tencent.bugly.mimsg.crashreport.common.info.a;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import org.apache.http.HttpHost;

/* compiled from: BUGLY */
public class z {
    private static Map<String, String> a = null;
    private static boolean b = false;

    public static String a(Throwable th) {
        if (th == null) {
            return "";
        }
        try {
            StringWriter stringWriter = new StringWriter();
            ThrowableExtension.printStackTrace(th, new PrintWriter(stringWriter));
            return stringWriter.getBuffer().toString();
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                ThrowableExtension.printStackTrace(th2);
            }
            return "fail";
        }
    }

    public static String a() {
        return a(System.currentTimeMillis());
    }

    public static String a(long j) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date(j));
        } catch (Exception e) {
            return new Date().toString();
        }
    }

    public static String a(Date date) {
        if (date == null) {
            return null;
        }
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(date);
        } catch (Exception e) {
            return new Date().toString();
        }
    }

    private static byte[] a(byte[] bArr, int i, String str) {
        if (bArr == null || i == -1) {
            return bArr;
        }
        x.c("rqdp{  enD:} %d %d", Integer.valueOf(bArr.length), Integer.valueOf(i));
        try {
            ag a2 = a.a(i);
            if (a2 == null) {
                return null;
            }
            a2.a(str);
            return a2.b(bArr);
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return null;
        }
    }

    private static byte[] b(byte[] bArr, int i, String str) {
        if (bArr == null || i == -1) {
            return bArr;
        }
        try {
            ag a2 = a.a(i);
            if (a2 == null) {
                return null;
            }
            a2.a(str);
            return a2.a(bArr);
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            x.d("encrytype %d %s", Integer.valueOf(i), str);
            return null;
        }
    }

    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r3v0 */
    /* JADX WARNING: type inference failed for: r3v1, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r2v1, types: [java.util.zip.ZipOutputStream] */
    /* JADX WARNING: type inference failed for: r3v2, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r2v3, types: [java.util.zip.ZipOutputStream] */
    /* JADX WARNING: type inference failed for: r3v3, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r2v6 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r3v4 */
    /* JADX WARNING: type inference failed for: r2v10 */
    /* JADX WARNING: type inference failed for: r3v5 */
    /* JADX WARNING: type inference failed for: r2v11, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r3v6 */
    /* JADX WARNING: type inference failed for: r2v12 */
    /* JADX WARNING: type inference failed for: r3v7 */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: type inference failed for: r3v8 */
    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: type inference failed for: r2v14 */
    /* JADX WARNING: type inference failed for: r3v10 */
    /* JADX WARNING: type inference failed for: r3v11 */
    /* JADX WARNING: type inference failed for: r3v12 */
    /* JADX WARNING: type inference failed for: r2v15 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0049 A[Catch:{ Throwable -> 0x0054 }, LOOP:0: B:18:0x0049->B:20:0x004f, LOOP_START] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x005b A[Catch:{ all -> 0x007b }] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0060 A[SYNTHETIC, Splitter:B:27:0x0060] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0065 A[SYNTHETIC, Splitter:B:30:0x0065] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0076 A[Catch:{ Throwable -> 0x0054 }, LOOP:1: B:34:0x0070->B:37:0x0076, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x007e A[SYNTHETIC, Splitter:B:40:0x007e] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0083 A[SYNTHETIC, Splitter:B:43:0x0083] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x008e A[EDGE_INSN: B:47:0x008e->B:48:? ?: BREAK  
EDGE_INSN: B:47:0x008e->B:48:? ?: BREAK  
EDGE_INSN: B:47:0x008e->B:48:? ?: BREAK  , SYNTHETIC, Splitter:B:47:0x008e] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x008e A[EDGE_INSN: B:47:0x008e->B:48:? ?: BREAK  
EDGE_INSN: B:47:0x008e->B:48:? ?: BREAK  , SYNTHETIC, Splitter:B:47:0x008e] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x009d A[SYNTHETIC, Splitter:B:50:0x009d] */
    /* JADX WARNING: Unknown variable types count: 8 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] a(java.io.File r9, java.lang.String r10, java.lang.String r11) {
        /*
            r0 = 0
            r8 = 0
            java.lang.String r1 = "rqdp{  ZF start}"
            java.lang.Object[] r2 = new java.lang.Object[r8]
            com.tencent.bugly.mimsg.proguard.x.c(r1, r2)
            if (r9 == 0) goto L_0x00e5
            boolean r1 = r9.exists()     // Catch:{ Throwable -> 0x00d7, all -> 0x00c9 }
            if (r1 == 0) goto L_0x00e5
            boolean r1 = r9.canRead()     // Catch:{ Throwable -> 0x00d7, all -> 0x00c9 }
            if (r1 == 0) goto L_0x00e5
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch:{ Throwable -> 0x00d7, all -> 0x00c9 }
            r2.<init>(r9)     // Catch:{ Throwable -> 0x00d7, all -> 0x00c9 }
            java.lang.String r11 = r9.getName()     // Catch:{ Throwable -> 0x00dc, all -> 0x00ce }
            r3 = r2
        L_0x0021:
            java.lang.String r1 = "UTF-8"
            byte[] r1 = r10.getBytes(r1)     // Catch:{ Throwable -> 0x00e1, all -> 0x00d3 }
            java.io.ByteArrayInputStream r4 = new java.io.ByteArrayInputStream     // Catch:{ Throwable -> 0x00e1, all -> 0x00d3 }
            r4.<init>(r1)     // Catch:{ Throwable -> 0x00e1, all -> 0x00d3 }
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch:{ Throwable -> 0x00e1, all -> 0x00d3 }
            r1.<init>()     // Catch:{ Throwable -> 0x00e1, all -> 0x00d3 }
            java.util.zip.ZipOutputStream r2 = new java.util.zip.ZipOutputStream     // Catch:{ Throwable -> 0x00e1, all -> 0x00d3 }
            r2.<init>(r1)     // Catch:{ Throwable -> 0x00e1, all -> 0x00d3 }
            r5 = 8
            r2.setMethod(r5)     // Catch:{ Throwable -> 0x0054 }
            java.util.zip.ZipEntry r5 = new java.util.zip.ZipEntry     // Catch:{ Throwable -> 0x0054 }
            r5.<init>(r11)     // Catch:{ Throwable -> 0x0054 }
            r2.putNextEntry(r5)     // Catch:{ Throwable -> 0x0054 }
            r5 = 1024(0x400, float:1.435E-42)
            byte[] r5 = new byte[r5]     // Catch:{ Throwable -> 0x0054 }
            if (r3 == 0) goto L_0x0070
        L_0x0049:
            int r6 = r3.read(r5)     // Catch:{ Throwable -> 0x0054 }
            if (r6 <= 0) goto L_0x0070
            r7 = 0
            r2.write(r5, r7, r6)     // Catch:{ Throwable -> 0x0054 }
            goto L_0x0049
        L_0x0054:
            r1 = move-exception
        L_0x0055:
            boolean r4 = com.tencent.bugly.mimsg.proguard.x.a(r1)     // Catch:{ all -> 0x007b }
            if (r4 != 0) goto L_0x005e
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x007b }
        L_0x005e:
            if (r3 == 0) goto L_0x0063
            r3.close()     // Catch:{ IOException -> 0x00b5 }
        L_0x0063:
            if (r2 == 0) goto L_0x0068
            r2.close()     // Catch:{ IOException -> 0x00ba }
        L_0x0068:
            java.lang.String r1 = "rqdp{  ZF end}"
            java.lang.Object[] r2 = new java.lang.Object[r8]
            com.tencent.bugly.mimsg.proguard.x.c(r1, r2)
        L_0x006f:
            return r0
        L_0x0070:
            int r6 = r4.read(r5)     // Catch:{ Throwable -> 0x0054 }
            if (r6 <= 0) goto L_0x008e
            r7 = 0
            r2.write(r5, r7, r6)     // Catch:{ Throwable -> 0x0054 }
            goto L_0x0070
        L_0x007b:
            r0 = move-exception
        L_0x007c:
            if (r3 == 0) goto L_0x0081
            r3.close()     // Catch:{ IOException -> 0x00bf }
        L_0x0081:
            if (r2 == 0) goto L_0x0086
            r2.close()     // Catch:{ IOException -> 0x00c4 }
        L_0x0086:
            java.lang.String r1 = "rqdp{  ZF end}"
            java.lang.Object[] r2 = new java.lang.Object[r8]
            com.tencent.bugly.mimsg.proguard.x.c(r1, r2)
            throw r0
        L_0x008e:
            r2.closeEntry()     // Catch:{ Throwable -> 0x0054 }
            r2.flush()     // Catch:{ Throwable -> 0x0054 }
            r2.finish()     // Catch:{ Throwable -> 0x0054 }
            byte[] r0 = r1.toByteArray()     // Catch:{ Throwable -> 0x0054 }
            if (r3 == 0) goto L_0x00a0
            r3.close()     // Catch:{ IOException -> 0x00ab }
        L_0x00a0:
            r2.close()     // Catch:{ IOException -> 0x00b0 }
        L_0x00a3:
            java.lang.String r1 = "rqdp{  ZF end}"
            java.lang.Object[] r2 = new java.lang.Object[r8]
            com.tencent.bugly.mimsg.proguard.x.c(r1, r2)
            goto L_0x006f
        L_0x00ab:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00a0
        L_0x00b0:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00a3
        L_0x00b5:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0063
        L_0x00ba:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0068
        L_0x00bf:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0081
        L_0x00c4:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0086
        L_0x00c9:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
            goto L_0x007c
        L_0x00ce:
            r1 = move-exception
            r3 = r2
            r2 = r0
            r0 = r1
            goto L_0x007c
        L_0x00d3:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x007c
        L_0x00d7:
            r1 = move-exception
            r2 = r0
            r3 = r0
            goto L_0x0055
        L_0x00dc:
            r1 = move-exception
            r3 = r2
            r2 = r0
            goto L_0x0055
        L_0x00e1:
            r1 = move-exception
            r2 = r0
            goto L_0x0055
        L_0x00e5:
            r3 = r0
            goto L_0x0021
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.z.a(java.io.File, java.lang.String, java.lang.String):byte[]");
    }

    public static byte[] a(byte[] bArr, int i) {
        if (bArr == null || i == -1) {
            return bArr;
        }
        String str = "[Util] Zip %d bytes data with type %s";
        Object[] objArr = new Object[2];
        objArr[0] = Integer.valueOf(bArr.length);
        objArr[1] = i == 2 ? "Gzip" : "zip";
        x.c(str, objArr);
        try {
            ab a2 = aa.a(i);
            if (a2 == null) {
                return null;
            }
            return a2.a(bArr);
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return null;
        }
    }

    public static byte[] b(byte[] bArr, int i) {
        if (bArr == null || i == -1) {
            return bArr;
        }
        String str = "[Util] Unzip %d bytes data with type %s";
        Object[] objArr = new Object[2];
        objArr[0] = Integer.valueOf(bArr.length);
        objArr[1] = i == 2 ? "Gzip" : "zip";
        x.c(str, objArr);
        try {
            ab a2 = aa.a(i);
            if (a2 == null) {
                return null;
            }
            return a2.b(bArr);
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return null;
        }
    }

    public static byte[] a(byte[] bArr, int i, int i2, String str) {
        byte[] bArr2 = null;
        if (bArr == null) {
            return bArr2;
        }
        try {
            return a(a(bArr, 2), 1, str);
        } catch (Throwable th) {
            if (x.a(th)) {
                return bArr2;
            }
            ThrowableExtension.printStackTrace(th);
            return bArr2;
        }
    }

    public static byte[] b(byte[] bArr, int i, int i2, String str) {
        try {
            return b(b(bArr, 1, str), 2);
        } catch (Exception e) {
            if (!x.a(e)) {
                ThrowableExtension.printStackTrace(e);
            }
            return null;
        }
    }

    public static long b() {
        try {
            return (((System.currentTimeMillis() + ((long) TimeZone.getDefault().getRawOffset())) / 86400000) * 86400000) - ((long) TimeZone.getDefault().getRawOffset());
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return -1;
        }
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                stringBuffer.append("0");
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString().toUpperCase();
    }

    public static String b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "NULL";
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(bArr);
            return a(instance.digest());
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x0097 A[Catch:{ all -> 0x0106 }] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x009c A[SYNTHETIC, Splitter:B:41:0x009c] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00a1 A[SYNTHETIC, Splitter:B:44:0x00a1] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x00e7 A[SYNTHETIC, Splitter:B:69:0x00e7] */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x00ec A[SYNTHETIC, Splitter:B:72:0x00ec] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(java.io.File r6, java.io.File r7, int r8) {
        /*
            r3 = 0
            r0 = 0
            java.lang.String r1 = "rqdp{  ZF start}"
            java.lang.Object[] r2 = new java.lang.Object[r0]
            com.tencent.bugly.mimsg.proguard.x.c(r1, r2)
            if (r6 == 0) goto L_0x0013
            if (r7 == 0) goto L_0x0013
            boolean r1 = r6.equals(r7)
            if (r1 == 0) goto L_0x001b
        L_0x0013:
            java.lang.String r1 = "rqdp{  err ZF 1R!}"
            java.lang.Object[] r2 = new java.lang.Object[r0]
            com.tencent.bugly.mimsg.proguard.x.d(r1, r2)
        L_0x001a:
            return r0
        L_0x001b:
            boolean r1 = r6.exists()
            if (r1 == 0) goto L_0x0027
            boolean r1 = r6.canRead()
            if (r1 != 0) goto L_0x002f
        L_0x0027:
            java.lang.String r1 = "rqdp{  !sFile.exists() || !sFile.canRead(),pls check ,return!}"
            java.lang.Object[] r2 = new java.lang.Object[r0]
            com.tencent.bugly.mimsg.proguard.x.d(r1, r2)
            goto L_0x001a
        L_0x002f:
            java.io.File r1 = r7.getParentFile()     // Catch:{ Throwable -> 0x00ad }
            if (r1 == 0) goto L_0x0046
            java.io.File r1 = r7.getParentFile()     // Catch:{ Throwable -> 0x00ad }
            boolean r1 = r1.exists()     // Catch:{ Throwable -> 0x00ad }
            if (r1 != 0) goto L_0x0046
            java.io.File r1 = r7.getParentFile()     // Catch:{ Throwable -> 0x00ad }
            r1.mkdirs()     // Catch:{ Throwable -> 0x00ad }
        L_0x0046:
            boolean r1 = r7.exists()     // Catch:{ Throwable -> 0x00ad }
            if (r1 != 0) goto L_0x004f
            r7.createNewFile()     // Catch:{ Throwable -> 0x00ad }
        L_0x004f:
            boolean r1 = r7.exists()
            if (r1 == 0) goto L_0x001a
            boolean r1 = r7.canRead()
            if (r1 == 0) goto L_0x001a
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch:{ Throwable -> 0x0109, all -> 0x00e2 }
            r4.<init>(r6)     // Catch:{ Throwable -> 0x0109, all -> 0x00e2 }
            java.util.zip.ZipOutputStream r2 = new java.util.zip.ZipOutputStream     // Catch:{ Throwable -> 0x010c, all -> 0x0101 }
            java.io.BufferedOutputStream r1 = new java.io.BufferedOutputStream     // Catch:{ Throwable -> 0x010c, all -> 0x0101 }
            java.io.FileOutputStream r5 = new java.io.FileOutputStream     // Catch:{ Throwable -> 0x010c, all -> 0x0101 }
            r5.<init>(r7)     // Catch:{ Throwable -> 0x010c, all -> 0x0101 }
            r1.<init>(r5)     // Catch:{ Throwable -> 0x010c, all -> 0x0101 }
            r2.<init>(r1)     // Catch:{ Throwable -> 0x010c, all -> 0x0101 }
            r1 = 8
            r2.setMethod(r1)     // Catch:{ Throwable -> 0x008f, all -> 0x0104 }
            java.util.zip.ZipEntry r1 = new java.util.zip.ZipEntry     // Catch:{ Throwable -> 0x008f, all -> 0x0104 }
            java.lang.String r3 = r6.getName()     // Catch:{ Throwable -> 0x008f, all -> 0x0104 }
            r1.<init>(r3)     // Catch:{ Throwable -> 0x008f, all -> 0x0104 }
            r2.putNextEntry(r1)     // Catch:{ Throwable -> 0x008f, all -> 0x0104 }
            r1 = 5000(0x1388, float:7.006E-42)
            byte[] r1 = new byte[r1]     // Catch:{ Throwable -> 0x008f, all -> 0x0104 }
        L_0x0084:
            int r3 = r4.read(r1)     // Catch:{ Throwable -> 0x008f, all -> 0x0104 }
            if (r3 <= 0) goto L_0x00b8
            r5 = 0
            r2.write(r1, r5, r3)     // Catch:{ Throwable -> 0x008f, all -> 0x0104 }
            goto L_0x0084
        L_0x008f:
            r1 = move-exception
            r3 = r4
        L_0x0091:
            boolean r4 = com.tencent.bugly.mimsg.proguard.x.a(r1)     // Catch:{ all -> 0x0106 }
            if (r4 != 0) goto L_0x009a
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x0106 }
        L_0x009a:
            if (r3 == 0) goto L_0x009f
            r3.close()     // Catch:{ IOException -> 0x00d8 }
        L_0x009f:
            if (r2 == 0) goto L_0x00a4
            r2.close()     // Catch:{ IOException -> 0x00dd }
        L_0x00a4:
            java.lang.String r1 = "rqdp{  ZF end}"
            java.lang.Object[] r2 = new java.lang.Object[r0]
            com.tencent.bugly.mimsg.proguard.x.c(r1, r2)
            goto L_0x001a
        L_0x00ad:
            r1 = move-exception
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r1)
            if (r2 != 0) goto L_0x004f
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x004f
        L_0x00b8:
            r2.flush()     // Catch:{ Throwable -> 0x008f, all -> 0x0104 }
            r2.closeEntry()     // Catch:{ Throwable -> 0x008f, all -> 0x0104 }
            r4.close()     // Catch:{ IOException -> 0x00ce }
        L_0x00c1:
            r2.close()     // Catch:{ IOException -> 0x00d3 }
        L_0x00c4:
            java.lang.String r1 = "rqdp{  ZF end}"
            java.lang.Object[] r0 = new java.lang.Object[r0]
            com.tencent.bugly.mimsg.proguard.x.c(r1, r0)
            r0 = 1
            goto L_0x001a
        L_0x00ce:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00c1
        L_0x00d3:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00c4
        L_0x00d8:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x009f
        L_0x00dd:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00a4
        L_0x00e2:
            r1 = move-exception
            r2 = r3
            r4 = r3
        L_0x00e5:
            if (r4 == 0) goto L_0x00ea
            r4.close()     // Catch:{ IOException -> 0x00f7 }
        L_0x00ea:
            if (r2 == 0) goto L_0x00ef
            r2.close()     // Catch:{ IOException -> 0x00fc }
        L_0x00ef:
            java.lang.String r2 = "rqdp{  ZF end}"
            java.lang.Object[] r0 = new java.lang.Object[r0]
            com.tencent.bugly.mimsg.proguard.x.c(r2, r0)
            throw r1
        L_0x00f7:
            r3 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r3)
            goto L_0x00ea
        L_0x00fc:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x00ef
        L_0x0101:
            r1 = move-exception
            r2 = r3
            goto L_0x00e5
        L_0x0104:
            r1 = move-exception
            goto L_0x00e5
        L_0x0106:
            r1 = move-exception
            r4 = r3
            goto L_0x00e5
        L_0x0109:
            r1 = move-exception
            r2 = r3
            goto L_0x0091
        L_0x010c:
            r1 = move-exception
            r2 = r3
            r3 = r4
            goto L_0x0091
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.z.a(java.io.File, java.io.File, int):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0048 A[Catch:{ all -> 0x00a5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x004d A[SYNTHETIC, Splitter:B:16:0x004d] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0052 A[SYNTHETIC, Splitter:B:19:0x0052] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0090 A[SYNTHETIC, Splitter:B:44:0x0090] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0095 A[SYNTHETIC, Splitter:B:47:0x0095] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.ArrayList<java.lang.String> a(android.content.Context r6, java.lang.String[] r7) {
        /*
            r1 = 0
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.tencent.bugly.mimsg.crashreport.common.info.a r2 = com.tencent.bugly.mimsg.crashreport.common.info.a.a(r6)
            boolean r2 = r2.H()
            if (r2 == 0) goto L_0x0020
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.String r1 = new java.lang.String
            java.lang.String r2 = "unknown(low memory)"
            r1.<init>(r2)
            r0.add(r1)
        L_0x001f:
            return r0
        L_0x0020:
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch:{ Throwable -> 0x00a8, all -> 0x008c }
            java.lang.Process r4 = r2.exec(r7)     // Catch:{ Throwable -> 0x00a8, all -> 0x008c }
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch:{ Throwable -> 0x00a8, all -> 0x008c }
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch:{ Throwable -> 0x00a8, all -> 0x008c }
            java.io.InputStream r5 = r4.getInputStream()     // Catch:{ Throwable -> 0x00a8, all -> 0x008c }
            r2.<init>(r5)     // Catch:{ Throwable -> 0x00a8, all -> 0x008c }
            r3.<init>(r2)     // Catch:{ Throwable -> 0x00a8, all -> 0x008c }
        L_0x0036:
            java.lang.String r2 = r3.readLine()     // Catch:{ Throwable -> 0x0040, all -> 0x00a3 }
            if (r2 == 0) goto L_0x0057
            r0.add(r2)     // Catch:{ Throwable -> 0x0040, all -> 0x00a3 }
            goto L_0x0036
        L_0x0040:
            r0 = move-exception
            r2 = r1
        L_0x0042:
            boolean r4 = com.tencent.bugly.mimsg.proguard.x.a(r0)     // Catch:{ all -> 0x00a5 }
            if (r4 != 0) goto L_0x004b
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x00a5 }
        L_0x004b:
            if (r3 == 0) goto L_0x0050
            r3.close()     // Catch:{ IOException -> 0x0082 }
        L_0x0050:
            if (r2 == 0) goto L_0x0055
            r2.close()     // Catch:{ IOException -> 0x0087 }
        L_0x0055:
            r0 = r1
            goto L_0x001f
        L_0x0057:
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ Throwable -> 0x0040, all -> 0x00a3 }
            java.io.InputStreamReader r5 = new java.io.InputStreamReader     // Catch:{ Throwable -> 0x0040, all -> 0x00a3 }
            java.io.InputStream r4 = r4.getErrorStream()     // Catch:{ Throwable -> 0x0040, all -> 0x00a3 }
            r5.<init>(r4)     // Catch:{ Throwable -> 0x0040, all -> 0x00a3 }
            r2.<init>(r5)     // Catch:{ Throwable -> 0x0040, all -> 0x00a3 }
        L_0x0065:
            java.lang.String r4 = r2.readLine()     // Catch:{ Throwable -> 0x006f }
            if (r4 == 0) goto L_0x0071
            r0.add(r4)     // Catch:{ Throwable -> 0x006f }
            goto L_0x0065
        L_0x006f:
            r0 = move-exception
            goto L_0x0042
        L_0x0071:
            r3.close()     // Catch:{ IOException -> 0x007d }
        L_0x0074:
            r2.close()     // Catch:{ IOException -> 0x0078 }
            goto L_0x001f
        L_0x0078:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x001f
        L_0x007d:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0074
        L_0x0082:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0050
        L_0x0087:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0055
        L_0x008c:
            r0 = move-exception
            r3 = r1
        L_0x008e:
            if (r3 == 0) goto L_0x0093
            r3.close()     // Catch:{ IOException -> 0x0099 }
        L_0x0093:
            if (r1 == 0) goto L_0x0098
            r1.close()     // Catch:{ IOException -> 0x009e }
        L_0x0098:
            throw r0
        L_0x0099:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x0093
        L_0x009e:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0098
        L_0x00a3:
            r0 = move-exception
            goto L_0x008e
        L_0x00a5:
            r0 = move-exception
            r1 = r2
            goto L_0x008e
        L_0x00a8:
            r0 = move-exception
            r2 = r1
            r3 = r1
            goto L_0x0042
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.z.a(android.content.Context, java.lang.String[]):java.util.ArrayList");
    }

    public static String a(Context context, String str) {
        if (str == null || str.trim().equals("")) {
            return "";
        }
        if (a == null) {
            a = new HashMap();
            ArrayList<String> a2 = a(context, new String[]{"/system/bin/sh", "-c", "getprop"});
            if (a2 != null && a2.size() > 0) {
                x.b(z.class, "Successfully get 'getprop' list.", new Object[0]);
                Pattern compile = Pattern.compile("\\[(.+)\\]: \\[(.*)\\]");
                for (String matcher : a2) {
                    Matcher matcher2 = compile.matcher(matcher);
                    if (matcher2.find()) {
                        a.put(matcher2.group(1), matcher2.group(2));
                    }
                }
                x.b(z.class, "System properties number: %dffffdsfsdfff.", Integer.valueOf(a.size()));
            }
        }
        if (a.containsKey(str)) {
            return (String) a.get(str);
        }
        return "fail";
    }

    public static void b(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException e) {
            ThrowableExtension.printStackTrace(e);
        }
    }

    public static boolean a(String str) {
        if (str == null || str.trim().length() <= 0) {
            return true;
        }
        return false;
    }

    public static void b(String str) {
        if (str != null) {
            File file = new File(str);
            if (file.isFile() && file.exists() && file.canWrite()) {
                file.delete();
            }
        }
    }

    public static byte[] c(long j) {
        try {
            return (j).getBytes("utf-8");
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    public static long c(byte[] bArr) {
        long j = -1;
        if (bArr == null) {
            return j;
        }
        try {
            return Long.parseLong(new String(bArr, "utf-8"));
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
            return j;
        }
    }

    public static Context a(Context context) {
        if (context == null) {
            return context;
        }
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }

    public static String b(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        ThrowableExtension.printStackTrace(th, printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }

    public static void a(Class<?> cls, String str, Object obj, Object obj2) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(null, obj);
        } catch (Exception e) {
        }
    }

    public static Object a(String str, String str2, Object obj, Class<?>[] clsArr, Object[] objArr) {
        boolean z = false;
        try {
            Method declaredMethod = Class.forName(str).getDeclaredMethod(str2, clsArr);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(null, objArr);
        } catch (Exception e) {
            return z;
        }
    }

    public static void a(Parcel parcel, Map<String, PlugInBean> map) {
        if (map == null || map.size() <= 0) {
            parcel.writeBundle(null);
            return;
        }
        int size = map.size();
        ArrayList arrayList = new ArrayList(size);
        ArrayList arrayList2 = new ArrayList(size);
        for (Entry entry : map.entrySet()) {
            arrayList.add(entry.getKey());
            arrayList2.add(entry.getValue());
        }
        Bundle bundle = new Bundle();
        bundle.putInt("pluginNum", arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            bundle.putString("pluginKey" + i, (String) arrayList.get(i));
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            bundle.putString("pluginVal" + i2 + "plugInId", ((PlugInBean) arrayList2.get(i2)).a);
            bundle.putString("pluginVal" + i2 + "plugInUUID", ((PlugInBean) arrayList2.get(i2)).c);
            bundle.putString("pluginVal" + i2 + "plugInVersion", ((PlugInBean) arrayList2.get(i2)).b);
        }
        parcel.writeBundle(bundle);
    }

    public static Map<String, PlugInBean> a(Parcel parcel) {
        HashMap hashMap;
        Bundle readBundle = parcel.readBundle();
        if (readBundle == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int intValue = ((Integer) readBundle.get("pluginNum")).intValue();
        for (int i = 0; i < intValue; i++) {
            arrayList.add(readBundle.getString("pluginKey" + i));
        }
        for (int i2 = 0; i2 < intValue; i2++) {
            arrayList2.add(new PlugInBean(readBundle.getString("pluginVal" + i2 + "plugInId"), readBundle.getString("pluginVal" + i2 + "plugInVersion"), readBundle.getString("pluginVal" + i2 + "plugInUUID")));
        }
        if (arrayList.size() == arrayList2.size()) {
            HashMap hashMap2 = new HashMap(arrayList.size());
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                hashMap2.put(arrayList.get(i3), PlugInBean.class.cast(arrayList2.get(i3)));
            }
            hashMap = hashMap2;
        } else {
            x.e("map plugin parcel error!", new Object[0]);
            hashMap = null;
        }
        return hashMap;
    }

    public static void b(Parcel parcel, Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            parcel.writeBundle(null);
            return;
        }
        int size = map.size();
        ArrayList arrayList = new ArrayList(size);
        ArrayList arrayList2 = new ArrayList(size);
        for (Entry entry : map.entrySet()) {
            arrayList.add(entry.getKey());
            arrayList2.add(entry.getValue());
        }
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("keys", arrayList);
        bundle.putStringArrayList("values", arrayList2);
        parcel.writeBundle(bundle);
    }

    public static Map<String, String> b(Parcel parcel) {
        HashMap hashMap;
        Bundle readBundle = parcel.readBundle();
        if (readBundle == null) {
            return null;
        }
        ArrayList stringArrayList = readBundle.getStringArrayList("keys");
        ArrayList stringArrayList2 = readBundle.getStringArrayList("values");
        if (stringArrayList == null || stringArrayList2 == null || stringArrayList.size() != stringArrayList2.size()) {
            x.e("map parcel error!", new Object[0]);
            hashMap = null;
        } else {
            HashMap hashMap2 = new HashMap(stringArrayList.size());
            for (int i = 0; i < stringArrayList.size(); i++) {
                hashMap2.put(stringArrayList.get(i), stringArrayList2.get(i));
            }
            hashMap = hashMap2;
        }
        return hashMap;
    }

    public static byte[] a(Parcelable parcelable) {
        Parcel obtain = Parcel.obtain();
        parcelable.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    public static <T> T a(byte[] bArr, Creator<T> creator) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        try {
            T createFromParcel = creator.createFromParcel(obtain);
            if (obtain == null) {
                return createFromParcel;
            }
            obtain.recycle();
            return createFromParcel;
        } catch (Throwable th) {
            if (obtain != null) {
                obtain.recycle();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:55:0x0108 A[SYNTHETIC, Splitter:B:55:0x0108] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(android.content.Context r7, int r8, java.lang.String r9) {
        /*
            r6 = 4
            r5 = 3
            r4 = 2
            r3 = 1
            r2 = 0
            java.lang.String r0 = "android.permission.READ_LOGS"
            boolean r0 = com.tencent.bugly.mimsg.crashreport.common.info.AppInfo.a(r7, r0)
            if (r0 != 0) goto L_0x0016
            java.lang.String r0 = "no read_log permission!"
            java.lang.Object[] r1 = new java.lang.Object[r2]
            com.tencent.bugly.mimsg.proguard.x.d(r0, r1)
            r0 = 0
        L_0x0015:
            return r0
        L_0x0016:
            if (r9 != 0) goto L_0x00b2
            java.lang.String[] r0 = new java.lang.String[r6]
            java.lang.String r1 = "logcat"
            r0[r2] = r1
            java.lang.String r1 = "-d"
            r0[r3] = r1
            java.lang.String r1 = "-v"
            r0[r4] = r1
            java.lang.String r1 = "threadtime"
            r0[r5] = r1
        L_0x002a:
            r1 = 0
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch:{ Throwable -> 0x0130 }
            java.lang.Process r2 = r2.exec(r0)     // Catch:{ Throwable -> 0x0130 }
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch:{ Throwable -> 0x0067, all -> 0x012d }
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch:{ Throwable -> 0x0067, all -> 0x012d }
            java.io.InputStream r4 = r2.getInputStream()     // Catch:{ Throwable -> 0x0067, all -> 0x012d }
            r1.<init>(r4)     // Catch:{ Throwable -> 0x0067, all -> 0x012d }
            r0.<init>(r1)     // Catch:{ Throwable -> 0x0067, all -> 0x012d }
        L_0x0046:
            java.lang.String r1 = r0.readLine()     // Catch:{ Throwable -> 0x0067, all -> 0x012d }
            if (r1 == 0) goto L_0x00ce
            java.lang.StringBuilder r1 = r3.append(r1)     // Catch:{ Throwable -> 0x0067, all -> 0x012d }
            java.lang.String r4 = "\n"
            r1.append(r4)     // Catch:{ Throwable -> 0x0067, all -> 0x012d }
            if (r8 <= 0) goto L_0x0046
            int r1 = r3.length()     // Catch:{ Throwable -> 0x0067, all -> 0x012d }
            if (r1 <= r8) goto L_0x0046
            r1 = 0
            int r4 = r3.length()     // Catch:{ Throwable -> 0x0067, all -> 0x012d }
            int r4 = r4 - r8
            r3.delete(r1, r4)     // Catch:{ Throwable -> 0x0067, all -> 0x012d }
            goto L_0x0046
        L_0x0067:
            r0 = move-exception
            r1 = r2
        L_0x0069:
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r0)     // Catch:{ all -> 0x0105 }
            if (r2 != 0) goto L_0x0072
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0105 }
        L_0x0072:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0105 }
            java.lang.String r4 = "\n[error:"
            r2.<init>(r4)     // Catch:{ all -> 0x0105 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0105 }
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch:{ all -> 0x0105 }
            java.lang.String r2 = "]"
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch:{ all -> 0x0105 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0105 }
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ all -> 0x0105 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0105 }
            if (r1 == 0) goto L_0x0015
            java.io.OutputStream r2 = r1.getOutputStream()     // Catch:{ IOException -> 0x00fb }
            r2.close()     // Catch:{ IOException -> 0x00fb }
        L_0x009c:
            java.io.InputStream r2 = r1.getInputStream()     // Catch:{ IOException -> 0x0100 }
            r2.close()     // Catch:{ IOException -> 0x0100 }
        L_0x00a3:
            java.io.InputStream r1 = r1.getErrorStream()     // Catch:{ IOException -> 0x00ac }
            r1.close()     // Catch:{ IOException -> 0x00ac }
            goto L_0x0015
        L_0x00ac:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0015
        L_0x00b2:
            r0 = 6
            java.lang.String[] r0 = new java.lang.String[r0]
            java.lang.String r1 = "logcat"
            r0[r2] = r1
            java.lang.String r1 = "-d"
            r0[r3] = r1
            java.lang.String r1 = "-v"
            r0[r4] = r1
            java.lang.String r1 = "threadtime"
            r0[r5] = r1
            java.lang.String r1 = "-s"
            r0[r6] = r1
            r1 = 5
            r0[r1] = r9
            goto L_0x002a
        L_0x00ce:
            java.lang.String r0 = r3.toString()     // Catch:{ Throwable -> 0x0067, all -> 0x012d }
            if (r2 == 0) goto L_0x0015
            java.io.OutputStream r1 = r2.getOutputStream()     // Catch:{ IOException -> 0x00f1 }
            r1.close()     // Catch:{ IOException -> 0x00f1 }
        L_0x00db:
            java.io.InputStream r1 = r2.getInputStream()     // Catch:{ IOException -> 0x00f6 }
            r1.close()     // Catch:{ IOException -> 0x00f6 }
        L_0x00e2:
            java.io.InputStream r1 = r2.getErrorStream()     // Catch:{ IOException -> 0x00eb }
            r1.close()     // Catch:{ IOException -> 0x00eb }
            goto L_0x0015
        L_0x00eb:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0015
        L_0x00f1:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00db
        L_0x00f6:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00e2
        L_0x00fb:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x009c
        L_0x0100:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x00a3
        L_0x0105:
            r0 = move-exception
        L_0x0106:
            if (r1 == 0) goto L_0x011d
            java.io.OutputStream r2 = r1.getOutputStream()     // Catch:{ IOException -> 0x011e }
            r2.close()     // Catch:{ IOException -> 0x011e }
        L_0x010f:
            java.io.InputStream r2 = r1.getInputStream()     // Catch:{ IOException -> 0x0123 }
            r2.close()     // Catch:{ IOException -> 0x0123 }
        L_0x0116:
            java.io.InputStream r1 = r1.getErrorStream()     // Catch:{ IOException -> 0x0128 }
            r1.close()     // Catch:{ IOException -> 0x0128 }
        L_0x011d:
            throw r0
        L_0x011e:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x010f
        L_0x0123:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x0116
        L_0x0128:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x011d
        L_0x012d:
            r0 = move-exception
            r1 = r2
            goto L_0x0106
        L_0x0130:
            r0 = move-exception
            goto L_0x0069
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.z.a(android.content.Context, int, java.lang.String):java.lang.String");
    }

    public static Map<String, String> a(int i, boolean z) {
        HashMap hashMap = new HashMap(12);
        Map allStackTraces = Thread.getAllStackTraces();
        if (allStackTraces == null) {
            return null;
        }
        Thread.currentThread().getId();
        StringBuilder sb = new StringBuilder();
        for (Entry entry : allStackTraces.entrySet()) {
            sb.setLength(0);
            if (!(entry.getValue() == null || ((StackTraceElement[]) entry.getValue()).length == 0)) {
                StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) entry.getValue();
                int length = stackTraceElementArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTraceElementArr[i2];
                    if (i > 0 && sb.length() >= i) {
                        sb.append("\n[Stack over limit size :" + i + " , has been cutted !]");
                        break;
                    }
                    sb.append(stackTraceElement.toString()).append("\n");
                    i2++;
                }
                hashMap.put(((Thread) entry.getKey()).getName() + "(" + ((Thread) entry.getKey()).getId() + ")", sb.toString());
            }
        }
        return hashMap;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0030 A[SYNTHETIC, Splitter:B:17:0x0030] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0050 A[Catch:{ Exception -> 0x0054 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized byte[] a(int r7) {
        /*
            r1 = 0
            java.lang.Class<com.tencent.bugly.mimsg.proguard.z> r3 = com.tencent.bugly.mimsg.proguard.z.class
            monitor-enter(r3)
            r0 = 16
            byte[] r0 = new byte[r0]     // Catch:{ Exception -> 0x0021, all -> 0x004c }
            java.io.DataInputStream r2 = new java.io.DataInputStream     // Catch:{ Exception -> 0x0021, all -> 0x004c }
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch:{ Exception -> 0x0021, all -> 0x004c }
            java.io.File r5 = new java.io.File     // Catch:{ Exception -> 0x0021, all -> 0x004c }
            java.lang.String r6 = "/dev/urandom"
            r5.<init>(r6)     // Catch:{ Exception -> 0x0021, all -> 0x004c }
            r4.<init>(r5)     // Catch:{ Exception -> 0x0021, all -> 0x004c }
            r2.<init>(r4)     // Catch:{ Exception -> 0x0021, all -> 0x004c }
            r2.readFully(r0)     // Catch:{ Exception -> 0x0065 }
            r2.close()     // Catch:{ Exception -> 0x0054 }
        L_0x001f:
            monitor-exit(r3)
            return r0
        L_0x0021:
            r0 = move-exception
            r2 = r1
        L_0x0023:
            java.lang.String r4 = "Failed to read from /dev/urandom : %s"
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ all -> 0x0063 }
            r6 = 0
            r5[r6] = r0     // Catch:{ all -> 0x0063 }
            com.tencent.bugly.mimsg.proguard.x.e(r4, r5)     // Catch:{ all -> 0x0063 }
            if (r2 == 0) goto L_0x0033
            r2.close()     // Catch:{ Exception -> 0x0054 }
        L_0x0033:
            java.lang.String r0 = "AES"
            javax.crypto.KeyGenerator r0 = javax.crypto.KeyGenerator.getInstance(r0)     // Catch:{ Exception -> 0x0054 }
            r2 = 128(0x80, float:1.794E-43)
            java.security.SecureRandom r4 = new java.security.SecureRandom     // Catch:{ Exception -> 0x0054 }
            r4.<init>()     // Catch:{ Exception -> 0x0054 }
            r0.init(r2, r4)     // Catch:{ Exception -> 0x0054 }
            javax.crypto.SecretKey r0 = r0.generateKey()     // Catch:{ Exception -> 0x0054 }
            byte[] r0 = r0.getEncoded()     // Catch:{ Exception -> 0x0054 }
            goto L_0x001f
        L_0x004c:
            r0 = move-exception
            r2 = r1
        L_0x004e:
            if (r2 == 0) goto L_0x0053
            r2.close()     // Catch:{ Exception -> 0x0054 }
        L_0x0053:
            throw r0     // Catch:{ Exception -> 0x0054 }
        L_0x0054:
            r0 = move-exception
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.b(r0)     // Catch:{ all -> 0x0060 }
            if (r2 != 0) goto L_0x005e
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0060 }
        L_0x005e:
            r0 = r1
            goto L_0x001f
        L_0x0060:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        L_0x0063:
            r0 = move-exception
            goto L_0x004e
        L_0x0065:
            r0 = move-exception
            goto L_0x0023
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.z.a(int):byte[]");
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    @android.annotation.TargetApi(19)
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] a(int r4, byte[] r5, byte[] r6) {
        /*
            javax.crypto.spec.SecretKeySpec r0 = new javax.crypto.spec.SecretKeySpec     // Catch:{ Exception -> 0x0038 }
            java.lang.String r1 = "AES"
            r0.<init>(r6, r1)     // Catch:{ Exception -> 0x0038 }
            java.lang.String r1 = "AES/GCM/NoPadding"
            javax.crypto.Cipher r1 = javax.crypto.Cipher.getInstance(r1)     // Catch:{ Exception -> 0x0038 }
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch:{ Exception -> 0x0038 }
            r3 = 21
            if (r2 < r3) goto L_0x0017
            boolean r2 = b     // Catch:{ Exception -> 0x0038 }
            if (r2 == 0) goto L_0x0024
        L_0x0017:
            javax.crypto.spec.IvParameterSpec r2 = new javax.crypto.spec.IvParameterSpec     // Catch:{ Exception -> 0x0038 }
            r2.<init>(r6)     // Catch:{ Exception -> 0x0038 }
            r1.init(r4, r0, r2)     // Catch:{ Exception -> 0x0038 }
        L_0x001f:
            byte[] r0 = r1.doFinal(r5)     // Catch:{ Exception -> 0x0038 }
        L_0x0023:
            return r0
        L_0x0024:
            int r2 = r1.getBlockSize()     // Catch:{ Exception -> 0x0038 }
            javax.crypto.spec.GCMParameterSpec r3 = new javax.crypto.spec.GCMParameterSpec     // Catch:{ Exception -> 0x0038 }
            int r2 = r2 << 3
            r3.<init>(r2, r6)     // Catch:{ Exception -> 0x0038 }
            r1.init(r4, r0, r3)     // Catch:{ InvalidAlgorithmParameterException -> 0x0033 }
            goto L_0x001f
        L_0x0033:
            r0 = move-exception
            r1 = 1
            b = r1     // Catch:{ Exception -> 0x0038 }
            throw r0     // Catch:{ Exception -> 0x0038 }
        L_0x0038:
            r0 = move-exception
            boolean r1 = com.tencent.bugly.mimsg.proguard.x.b(r0)
            if (r1 != 0) goto L_0x0042
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
        L_0x0042:
            r0 = 0
            goto L_0x0023
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.z.a(int, byte[], byte[]):byte[]");
    }

    public static byte[] b(int i, byte[] bArr, byte[] bArr2) {
        try {
            PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr2));
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(1, generatePublic);
            return instance.doFinal(bArr);
        } catch (Exception e) {
            if (!x.b(e)) {
                ThrowableExtension.printStackTrace(e);
            }
            return null;
        }
    }

    public static boolean a(Context context, String str, long j) {
        x.c("[Util] try to lock file:%s (pid=%d | tid=%d)", str, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        try {
            File file = new File(context.getFilesDir() + File.separator + str);
            if (file.exists()) {
                if (System.currentTimeMillis() - file.lastModified() < j) {
                    return false;
                }
                x.c("[Util] lock file(%s) is expired, unlock it", str);
                b(context, str);
            }
            if (file.createNewFile()) {
                x.c("[Util] successfully locked file:%s (pid=%d | tid=%d)", str, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                return true;
            }
            x.c("[Util] Failed to locked file:%s (pid=%d | tid=%d)", str, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            return false;
        } catch (Throwable th) {
            x.a(th);
            return false;
        }
    }

    public static boolean b(Context context, String str) {
        x.c("[Util] try to unlock file:%s (pid=%d | tid=%d)", str, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        try {
            File file = new File(context.getFilesDir() + File.separator + str);
            if (!file.exists()) {
                return true;
            }
            if (!file.delete()) {
                return false;
            }
            x.c("[Util] successfully unlocked file:%s (pid=%d | tid=%d)", str, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            return true;
        } catch (Throwable th) {
            x.a(th);
            return false;
        }
    }

    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r2v1, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r2v2 */
    /* JADX WARNING: type inference failed for: r2v3, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r2v6 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0056 A[SYNTHETIC, Splitter:B:30:0x0056] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(java.io.File r6) {
        /*
            r0 = 0
            if (r6 == 0) goto L_0x000f
            boolean r1 = r6.exists()
            if (r1 == 0) goto L_0x000f
            boolean r1 = r6.canRead()
            if (r1 != 0) goto L_0x0010
        L_0x000f:
            return r0
        L_0x0010:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0061, all -> 0x0051 }
            r1.<init>()     // Catch:{ Throwable -> 0x0061, all -> 0x0051 }
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ Throwable -> 0x0061, all -> 0x0051 }
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch:{ Throwable -> 0x0061, all -> 0x0051 }
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch:{ Throwable -> 0x0061, all -> 0x0051 }
            r4.<init>(r6)     // Catch:{ Throwable -> 0x0061, all -> 0x0051 }
            java.lang.String r5 = "utf-8"
            r3.<init>(r4, r5)     // Catch:{ Throwable -> 0x0061, all -> 0x0051 }
            r2.<init>(r3)     // Catch:{ Throwable -> 0x0061, all -> 0x0051 }
        L_0x0026:
            java.lang.String r3 = r2.readLine()     // Catch:{ Throwable -> 0x0035 }
            if (r3 == 0) goto L_0x0044
            r1.append(r3)     // Catch:{ Throwable -> 0x0035 }
            java.lang.String r3 = "\n"
            r1.append(r3)     // Catch:{ Throwable -> 0x0035 }
            goto L_0x0026
        L_0x0035:
            r1 = move-exception
        L_0x0036:
            com.tencent.bugly.mimsg.proguard.x.a(r1)     // Catch:{ all -> 0x005f }
            if (r2 == 0) goto L_0x000f
            r2.close()     // Catch:{ Exception -> 0x003f }
            goto L_0x000f
        L_0x003f:
            r1 = move-exception
            com.tencent.bugly.mimsg.proguard.x.a(r1)
            goto L_0x000f
        L_0x0044:
            java.lang.String r0 = r1.toString()     // Catch:{ Throwable -> 0x0035 }
            r2.close()     // Catch:{ Exception -> 0x004c }
            goto L_0x000f
        L_0x004c:
            r1 = move-exception
            com.tencent.bugly.mimsg.proguard.x.a(r1)
            goto L_0x000f
        L_0x0051:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x0054:
            if (r2 == 0) goto L_0x0059
            r2.close()     // Catch:{ Exception -> 0x005a }
        L_0x0059:
            throw r0
        L_0x005a:
            r1 = move-exception
            com.tencent.bugly.mimsg.proguard.x.a(r1)
            goto L_0x0059
        L_0x005f:
            r0 = move-exception
            goto L_0x0054
        L_0x0061:
            r1 = move-exception
            r2 = r0
            goto L_0x0036
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.z.a(java.io.File):java.lang.String");
    }

    private static BufferedReader b(File file) {
        if (file == null || !file.exists() || !file.canRead()) {
            return null;
        }
        try {
            return new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));
        } catch (Throwable th) {
            x.a(th);
            return null;
        }
    }

    public static BufferedReader a(String str, String str2) {
        if (str == null) {
            return null;
        }
        try {
            File file = new File(str, str2);
            if (!file.exists() || !file.canRead()) {
                return null;
            }
            return b(file);
        } catch (NullPointerException e) {
            x.a(e);
            return null;
        }
    }

    public static Thread a(Runnable runnable, String str) {
        try {
            Thread thread = new Thread(runnable);
            thread.setName(str);
            thread.start();
            return thread;
        } catch (Throwable th) {
            x.e("[Util] Failed to start a thread to execute task with message: %s", th.getMessage());
            return null;
        }
    }

    public static boolean a(Runnable runnable) {
        if (runnable != null) {
            w a2 = w.a();
            if (a2 != null) {
                return a2.a(runnable);
            }
            String[] split = runnable.getClass().getName().split("\\.");
            if (a(runnable, split[split.length - 1]) != null) {
                return true;
            }
        }
        return false;
    }

    public static boolean c(String str) {
        boolean z;
        if (str == null || str.trim().length() <= 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return false;
        }
        if (str.length() > 255) {
            x.a("URL(%s)'s length is larger than 255.", str);
            return false;
        } else if (!str.toLowerCase().startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
            x.a("URL(%s) is not start with \"http\".", str);
            return false;
        } else if (str.toLowerCase().contains("qq.com")) {
            return true;
        } else {
            x.a("URL(%s) does not contain \"qq.com\".", str);
            return false;
        }
    }

    public static SharedPreferences a(String str, Context context) {
        if (context != null) {
            return context.getSharedPreferences(str, 0);
        }
        return null;
    }

    public static String b(String str, String str2) {
        if (a.b() == null || a.b().E == null) {
            return "";
        }
        return a.b().E.getString(str, str2);
    }
}
