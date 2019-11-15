package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Log;
import com.amap.api.mapcore.util.fx.a;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.xiaomi.mipush.sdk.Constants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONObject;

/* compiled from: Utils */
public class fy {
    static String a;

    public static Parcel a(IBinder iBinder, int i, Parcel parcel) {
        Throwable th;
        Parcel parcel2;
        try {
            parcel2 = Parcel.obtain();
            try {
                iBinder.transact(i, parcel, parcel2, 0);
            } catch (Throwable th2) {
                th = th2;
                gc.a(th, "ConfigManager", "getcpu");
                return parcel2;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            parcel2 = null;
            th = th4;
            gc.a(th, "ConfigManager", "getcpu");
            return parcel2;
        }
        return parcel2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:6:0x002c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(android.content.Context r4) {
        /*
            java.lang.String r1 = ""
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 21
            if (r0 < r2) goto L_0x0037
            android.content.pm.ApplicationInfo r0 = r4.getApplicationInfo()     // Catch:{ Throwable -> 0x002f }
            java.lang.Class<android.content.pm.ApplicationInfo> r2 = android.content.pm.ApplicationInfo.class
            java.lang.String r2 = r2.getName()     // Catch:{ Throwable -> 0x002f }
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch:{ Throwable -> 0x002f }
            java.lang.String r3 = "primaryCpuAbi"
            java.lang.reflect.Field r2 = r2.getDeclaredField(r3)     // Catch:{ Throwable -> 0x002f }
            r3 = 1
            r2.setAccessible(r3)     // Catch:{ Throwable -> 0x002f }
            java.lang.Object r0 = r2.get(r0)     // Catch:{ Throwable -> 0x002f }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ Throwable -> 0x002f }
        L_0x0026:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L_0x002e
            java.lang.String r0 = android.os.Build.CPU_ABI
        L_0x002e:
            return r0
        L_0x002f:
            r0 = move-exception
            java.lang.String r2 = "ut"
            java.lang.String r3 = "gct"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)
        L_0x0037:
            r0 = r1
            goto L_0x0026
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fy.a(android.content.Context):java.lang.String");
    }

    public static boolean a(Context context, String str) {
        if (context == null) {
            return false;
        }
        if (context.checkCallingOrSelfPermission(str) != 0) {
            return false;
        }
        if (VERSION.SDK_INT >= 23 && context.getApplicationInfo().targetSdkVersion >= 23) {
            try {
                if (((Integer) context.getClass().getMethod("checkSelfPermission", new Class[]{String.class}).invoke(context, new Object[]{str})).intValue() != 0) {
                    return false;
                }
            } catch (Throwable th) {
            }
        }
        return true;
    }

    public static fx a() throws fn {
        return new a("collection", "1.0", "AMap_collection_1.0").a(new String[]{"com.amap.api.collection"}).a();
    }

    public static void a(ByteArrayOutputStream byteArrayOutputStream, String str) {
        int i = 255;
        if (TextUtils.isEmpty(str)) {
            try {
                byteArrayOutputStream.write(new byte[]{0});
            } catch (IOException e) {
                ThrowableExtension.printStackTrace(e);
            }
        } else {
            int length = str.length();
            if (length <= 255) {
                i = length;
            }
            a(byteArrayOutputStream, (byte) i, a(str));
        }
    }

    public static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return new String(bArr);
        }
    }

    public static byte[] a(String str) {
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            return str.getBytes();
        }
    }

    public static void a(ByteArrayOutputStream byteArrayOutputStream, byte b, byte[] bArr) {
        try {
            byteArrayOutputStream.write(new byte[]{b});
            byte b2 = b & 255;
            if (b2 < 255 && b2 > 0) {
                byteArrayOutputStream.write(bArr);
            } else if (b2 == 255) {
                byteArrayOutputStream.write(bArr, 0, 255);
            }
        } catch (IOException e) {
            gc.a((Throwable) e, "Utils", "writeField");
        }
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        String b = ft.b(a(str));
        String str2 = "";
        try {
            return ((char) ((b.length() % 26) + 65)) + b;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return str2;
        }
    }

    public static String c(String str) {
        if (str.length() < 2) {
            return "";
        }
        return ft.a(str.substring(1));
    }

    public static boolean a(JSONObject jSONObject, String str) {
        return jSONObject != null && jSONObject.has(str);
    }

    public static byte[] b() {
        try {
            String[] split = new StringBuffer("16,16,18,77,15,911,121,77,121,911,38,77,911,99,86,67,611,96,48,77,84,911,38,67,021,301,86,67,611,98,48,77,511,77,48,97,511,58,48,97,511,84,501,87,511,96,48,77,221,911,38,77,121,37,86,67,25,301,86,67,021,96,86,67,021,701,86,67,35,56,86,67,611,37,221,87").reverse().toString().split(Constants.ACCEPT_TIME_SEPARATOR_SP);
            byte[] bArr = new byte[split.length];
            for (int i = 0; i < split.length; i++) {
                bArr[i] = Byte.parseByte(split[i]);
            }
            String[] split2 = new StringBuffer(new String(ft.b(new String(bArr)))).reverse().toString().split(Constants.ACCEPT_TIME_SEPARATOR_SP);
            byte[] bArr2 = new byte[split2.length];
            for (int i2 = 0; i2 < split2.length; i2++) {
                bArr2[i2] = Byte.parseByte(split2[i2]);
            }
            return bArr2;
        } catch (Throwable th) {
            gc.a(th, "Utils", "getIV");
            return new byte[16];
        }
    }

    static String a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Entry entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append((String) entry.getKey());
            sb.append("=");
            sb.append((String) entry.getValue());
        }
        return sb.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0033 A[SYNTHETIC, Splitter:B:22:0x0033] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0038 A[SYNTHETIC, Splitter:B:25:0x0038] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0047 A[SYNTHETIC, Splitter:B:32:0x0047] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x004c A[SYNTHETIC, Splitter:B:35:0x004c] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(java.lang.Throwable r4) {
        /*
            r0 = 0
            java.io.StringWriter r3 = new java.io.StringWriter     // Catch:{ Throwable -> 0x002b, all -> 0x0041 }
            r3.<init>()     // Catch:{ Throwable -> 0x002b, all -> 0x0041 }
            java.io.PrintWriter r2 = new java.io.PrintWriter     // Catch:{ Throwable -> 0x006c, all -> 0x0066 }
            r2.<init>(r3)     // Catch:{ Throwable -> 0x006c, all -> 0x0066 }
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r4, r2)     // Catch:{ Throwable -> 0x006f }
            java.lang.Throwable r1 = r4.getCause()     // Catch:{ Throwable -> 0x006f }
        L_0x0012:
            if (r1 == 0) goto L_0x001c
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1, r2)     // Catch:{ Throwable -> 0x006f }
            java.lang.Throwable r1 = r1.getCause()     // Catch:{ Throwable -> 0x006f }
            goto L_0x0012
        L_0x001c:
            java.lang.String r0 = r3.toString()     // Catch:{ Throwable -> 0x006f }
            if (r3 == 0) goto L_0x0025
            r3.close()     // Catch:{ Throwable -> 0x005f }
        L_0x0025:
            if (r2 == 0) goto L_0x002a
            r2.close()     // Catch:{ Throwable -> 0x0064 }
        L_0x002a:
            return r0
        L_0x002b:
            r1 = move-exception
            r2 = r0
            r3 = r0
        L_0x002e:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x006a }
            if (r3 == 0) goto L_0x0036
            r3.close()     // Catch:{ Throwable -> 0x005a }
        L_0x0036:
            if (r2 == 0) goto L_0x002a
            r2.close()     // Catch:{ Throwable -> 0x003c }
            goto L_0x002a
        L_0x003c:
            r1 = move-exception
        L_0x003d:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x002a
        L_0x0041:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
        L_0x0045:
            if (r3 == 0) goto L_0x004a
            r3.close()     // Catch:{ Throwable -> 0x0050 }
        L_0x004a:
            if (r2 == 0) goto L_0x004f
            r2.close()     // Catch:{ Throwable -> 0x0055 }
        L_0x004f:
            throw r0
        L_0x0050:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x004a
        L_0x0055:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x004f
        L_0x005a:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0036
        L_0x005f:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0025
        L_0x0064:
            r1 = move-exception
            goto L_0x003d
        L_0x0066:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x0045
        L_0x006a:
            r0 = move-exception
            goto L_0x0045
        L_0x006c:
            r1 = move-exception
            r2 = r0
            goto L_0x002e
        L_0x006f:
            r1 = move-exception
            goto L_0x002e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fy.a(java.lang.Throwable):java.lang.String");
    }

    public static String b(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = true;
        try {
            for (Entry entry : map.entrySet()) {
                if (z) {
                    z = false;
                    stringBuffer.append((String) entry.getKey()).append("=").append((String) entry.getValue());
                } else {
                    stringBuffer.append("&").append((String) entry.getKey()).append("=").append((String) entry.getValue());
                }
                z = z;
            }
        } catch (Throwable th) {
            gc.a(th, "Utils", "assembleParams");
        }
        return stringBuffer.toString();
    }

    public static String c(Map<String, String> map) {
        return d(a(map));
    }

    public static String d(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            String[] split = str.split("&");
            Arrays.sort(split);
            StringBuffer stringBuffer = new StringBuffer();
            for (String append : split) {
                stringBuffer.append(append);
                stringBuffer.append("&");
            }
            String stringBuffer2 = stringBuffer.toString();
            if (stringBuffer2.length() > 1) {
                return (String) stringBuffer2.subSequence(0, stringBuffer2.length() - 1);
            }
            return str;
        } catch (Throwable th) {
            gc.a(th, "Utils", "sortParams");
        }
    }

    public static byte[] b(byte[] bArr) {
        try {
            return g(bArr);
        } catch (Throwable th) {
            gc.a(th, "Utils", "gZip");
            return new byte[0];
        }
    }

    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r0v1, types: [byte[]] */
    /* JADX WARNING: type inference failed for: r3v0, types: [java.util.zip.ZipOutputStream] */
    /* JADX WARNING: type inference failed for: r2v0, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r2v2 */
    /* JADX WARNING: type inference failed for: r3v3 */
    /* JADX WARNING: type inference failed for: r3v4, types: [java.util.zip.ZipOutputStream] */
    /* JADX WARNING: type inference failed for: r2v3, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r3v7 */
    /* JADX WARNING: type inference failed for: r0v6 */
    /* JADX WARNING: type inference failed for: r2v7, types: [java.io.OutputStream, java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: type inference failed for: r3v10 */
    /* JADX WARNING: type inference failed for: r3v11, types: [java.util.zip.ZipOutputStream] */
    /* JADX WARNING: type inference failed for: r0v9, types: [byte[]] */
    /* JADX WARNING: type inference failed for: r3v14 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r0v10 */
    /* JADX WARNING: type inference failed for: r2v10 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r2v12 */
    /* JADX WARNING: type inference failed for: r3v15 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r0v6
  assigns: []
  uses: []
  mth insns count: 74
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0048 A[SYNTHETIC, Splitter:B:26:0x0048] */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x004d A[SYNTHETIC, Splitter:B:29:0x004d] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x005d A[SYNTHETIC, Splitter:B:36:0x005d] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0062 A[SYNTHETIC, Splitter:B:39:0x0062] */
    /* JADX WARNING: Unknown variable types count: 7 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] c(byte[] r6) {
        /*
            r0 = 0
            if (r6 == 0) goto L_0x0006
            int r1 = r6.length
            if (r1 != 0) goto L_0x0007
        L_0x0006:
            return r0
        L_0x0007:
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ Throwable -> 0x003c, all -> 0x0057 }
            r2.<init>()     // Catch:{ Throwable -> 0x003c, all -> 0x0057 }
            java.util.zip.ZipOutputStream r3 = new java.util.zip.ZipOutputStream     // Catch:{ Throwable -> 0x0090, all -> 0x008a }
            r3.<init>(r2)     // Catch:{ Throwable -> 0x0090, all -> 0x008a }
            java.util.zip.ZipEntry r1 = new java.util.zip.ZipEntry     // Catch:{ Throwable -> 0x0093 }
            java.lang.String r4 = "log"
            r1.<init>(r4)     // Catch:{ Throwable -> 0x0093 }
            r3.putNextEntry(r1)     // Catch:{ Throwable -> 0x0093 }
            r3.write(r6)     // Catch:{ Throwable -> 0x0093 }
            r3.closeEntry()     // Catch:{ Throwable -> 0x0093 }
            r3.finish()     // Catch:{ Throwable -> 0x0093 }
            byte[] r0 = r2.toByteArray()     // Catch:{ Throwable -> 0x0093 }
            if (r3 == 0) goto L_0x002d
            r3.close()     // Catch:{ Throwable -> 0x0081 }
        L_0x002d:
            if (r2 == 0) goto L_0x0006
            r2.close()     // Catch:{ Throwable -> 0x0033 }
            goto L_0x0006
        L_0x0033:
            r1 = move-exception
            java.lang.String r2 = "Utils"
            java.lang.String r3 = "zip2"
        L_0x0038:
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)
            goto L_0x0006
        L_0x003c:
            r1 = move-exception
            r2 = r0
            r3 = r0
        L_0x003f:
            java.lang.String r4 = "Utils"
            java.lang.String r5 = "zip"
            com.amap.api.mapcore.util.gc.a(r1, r4, r5)     // Catch:{ all -> 0x008e }
            if (r3 == 0) goto L_0x004b
            r3.close()     // Catch:{ Throwable -> 0x0078 }
        L_0x004b:
            if (r2 == 0) goto L_0x0006
            r2.close()     // Catch:{ Throwable -> 0x0051 }
            goto L_0x0006
        L_0x0051:
            r1 = move-exception
            java.lang.String r2 = "Utils"
            java.lang.String r3 = "zip2"
            goto L_0x0038
        L_0x0057:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
        L_0x005b:
            if (r3 == 0) goto L_0x0060
            r3.close()     // Catch:{ Throwable -> 0x0066 }
        L_0x0060:
            if (r2 == 0) goto L_0x0065
            r2.close()     // Catch:{ Throwable -> 0x006f }
        L_0x0065:
            throw r0
        L_0x0066:
            r1 = move-exception
            java.lang.String r3 = "Utils"
            java.lang.String r4 = "zip1"
            com.amap.api.mapcore.util.gc.a(r1, r3, r4)
            goto L_0x0060
        L_0x006f:
            r1 = move-exception
            java.lang.String r2 = "Utils"
            java.lang.String r3 = "zip2"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)
            goto L_0x0065
        L_0x0078:
            r1 = move-exception
            java.lang.String r3 = "Utils"
            java.lang.String r4 = "zip1"
            com.amap.api.mapcore.util.gc.a(r1, r3, r4)
            goto L_0x004b
        L_0x0081:
            r1 = move-exception
            java.lang.String r3 = "Utils"
            java.lang.String r4 = "zip1"
            com.amap.api.mapcore.util.gc.a(r1, r3, r4)
            goto L_0x002d
        L_0x008a:
            r1 = move-exception
            r3 = r0
            r0 = r1
            goto L_0x005b
        L_0x008e:
            r0 = move-exception
            goto L_0x005b
        L_0x0090:
            r1 = move-exception
            r3 = r0
            goto L_0x003f
        L_0x0093:
            r1 = move-exception
            goto L_0x003f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fy.c(byte[]):byte[]");
    }

    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r2v0, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r2v2, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r0v5 */
    /* JADX WARNING: type inference failed for: r0v6, types: [java.security.PublicKey] */
    /* JADX WARNING: type inference failed for: r2v4, types: [java.io.ByteArrayInputStream, java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r0v8, types: [java.security.PublicKey] */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r0v9 */
    /* JADX WARNING: type inference failed for: r2v6 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r0v5
  assigns: []
  uses: []
  mth insns count: 42
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0054 A[SYNTHETIC, Splitter:B:30:0x0054] */
    /* JADX WARNING: Unknown variable types count: 4 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static java.security.PublicKey b(android.content.Context r5) throws java.security.cert.CertificateException, java.security.spec.InvalidKeySpecException, java.security.NoSuchAlgorithmException, java.lang.NullPointerException, java.io.IOException {
        /*
            r0 = 0
            java.lang.String r1 = "MIICnjCCAgegAwIBAgIJAJ0Pdzos7ZfYMA0GCSqGSIb3DQEBBQUAMGgxCzAJBgNVBAYTAkNOMRMwEQYDVQQIDApTb21lLVN0YXRlMRAwDgYDVQQHDAdCZWlqaW5nMREwDwYDVQQKDAhBdXRvbmF2aTEfMB0GA1UEAwwWY29tLmF1dG9uYXZpLmFwaXNlcnZlcjAeFw0xMzA4MTUwNzU2NTVaFw0yMzA4MTMwNzU2NTVaMGgxCzAJBgNVBAYTAkNOMRMwEQYDVQQIDApTb21lLVN0YXRlMRAwDgYDVQQHDAdCZWlqaW5nMREwDwYDVQQKDAhBdXRvbmF2aTEfMB0GA1UEAwwWY29tLmF1dG9uYXZpLmFwaXNlcnZlcjCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA8eWAyHbFPoFPfdx5AD+D4nYFq4dbJ1p7SIKt19Oz1oivF/6H43v5Fo7s50pD1UF8+Qu4JoUQxlAgOt8OCyQ8DYdkaeB74XKb1wxkIYg/foUwN1CMHPZ9O9ehgna6K4EJXZxR7Y7XVZnbjHZIVn3VpPU/Rdr2v37LjTw+qrABJxMCAwEAAaNQME4wHQYDVR0OBBYEFOM/MLGP8xpVFuVd+3qZkw7uBvOTMB8GA1UdIwQYMBaAFOM/MLGP8xpVFuVd+3qZkw7uBvOTMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEA4LY3g8aAD8JkxAOqUXDDyLuCCGOc2pTIhn0TwMNaVdH4hZlpTeC/wuRD5LJ0z3j+IQ0vLvuQA5uDjVyEOlBrvVIGwSem/1XGUo13DfzgAJ5k1161S5l+sFUo5TxpHOXr8Z5nqJMjieXmhnE/I99GFyHpQmw4cC6rhYUhdhtg+Zk="
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream     // Catch:{ Throwable -> 0x0042, all -> 0x004f }
            byte[] r1 = com.amap.api.mapcore.util.ft.b(r1)     // Catch:{ Throwable -> 0x0042, all -> 0x004f }
            r2.<init>(r1)     // Catch:{ Throwable -> 0x0042, all -> 0x004f }
            java.lang.String r1 = "X.509"
            java.security.cert.CertificateFactory r1 = java.security.cert.CertificateFactory.getInstance(r1)     // Catch:{ Throwable -> 0x0061 }
            java.lang.String r3 = "RSA"
            java.security.KeyFactory r3 = java.security.KeyFactory.getInstance(r3)     // Catch:{ Throwable -> 0x0061 }
            java.security.cert.Certificate r1 = r1.generateCertificate(r2)     // Catch:{ Throwable -> 0x0061 }
            if (r1 == 0) goto L_0x0020
            if (r3 != 0) goto L_0x0026
        L_0x0020:
            if (r2 == 0) goto L_0x0025
            r2.close()     // Catch:{ Throwable -> 0x005d }
        L_0x0025:
            return r0
        L_0x0026:
            java.security.spec.X509EncodedKeySpec r4 = new java.security.spec.X509EncodedKeySpec     // Catch:{ Throwable -> 0x0061 }
            java.security.PublicKey r1 = r1.getPublicKey()     // Catch:{ Throwable -> 0x0061 }
            byte[] r1 = r1.getEncoded()     // Catch:{ Throwable -> 0x0061 }
            r4.<init>(r1)     // Catch:{ Throwable -> 0x0061 }
            java.security.PublicKey r0 = r3.generatePublic(r4)     // Catch:{ Throwable -> 0x0061 }
            if (r2 == 0) goto L_0x0025
            r2.close()     // Catch:{ Throwable -> 0x003d }
            goto L_0x0025
        L_0x003d:
            r1 = move-exception
        L_0x003e:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0025
        L_0x0042:
            r1 = move-exception
            r2 = r0
        L_0x0044:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x005f }
            if (r2 == 0) goto L_0x0025
            r2.close()     // Catch:{ Throwable -> 0x004d }
            goto L_0x0025
        L_0x004d:
            r1 = move-exception
            goto L_0x003e
        L_0x004f:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x0052:
            if (r2 == 0) goto L_0x0057
            r2.close()     // Catch:{ Throwable -> 0x0058 }
        L_0x0057:
            throw r0
        L_0x0058:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0057
        L_0x005d:
            r1 = move-exception
            goto L_0x003e
        L_0x005f:
            r0 = move-exception
            goto L_0x0052
        L_0x0061:
            r1 = move-exception
            goto L_0x0044
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fy.b(android.content.Context):java.security.PublicKey");
    }

    static String d(byte[] bArr) {
        try {
            return f(bArr);
        } catch (Throwable th) {
            gc.a(th, "Utils", "HexString");
            return null;
        }
    }

    static String e(byte[] bArr) {
        try {
            return f(bArr);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public static String f(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        if (bArr == null) {
            return null;
        }
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x002e A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0033 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static byte[] g(byte[] r4) throws java.io.IOException, java.lang.Throwable {
        /*
            r0 = 0
            if (r4 != 0) goto L_0x0004
        L_0x0003:
            return r0
        L_0x0004:
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ Throwable -> 0x0025, all -> 0x003d }
            r2.<init>()     // Catch:{ Throwable -> 0x0025, all -> 0x003d }
            java.util.zip.GZIPOutputStream r1 = new java.util.zip.GZIPOutputStream     // Catch:{ Throwable -> 0x0048, all -> 0x0043 }
            r1.<init>(r2)     // Catch:{ Throwable -> 0x0048, all -> 0x0043 }
            r1.write(r4)     // Catch:{ Throwable -> 0x004d }
            r1.finish()     // Catch:{ Throwable -> 0x004d }
            byte[] r0 = r2.toByteArray()     // Catch:{ Throwable -> 0x004d }
            if (r1 == 0) goto L_0x001d
            r1.close()     // Catch:{ Throwable -> 0x003b }
        L_0x001d:
            if (r2 == 0) goto L_0x0003
            r2.close()     // Catch:{ Throwable -> 0x0023 }
            goto L_0x0003
        L_0x0023:
            r0 = move-exception
            throw r0
        L_0x0025:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
            r1 = r3
        L_0x002a:
            throw r0     // Catch:{ all -> 0x002b }
        L_0x002b:
            r0 = move-exception
        L_0x002c:
            if (r1 == 0) goto L_0x0031
            r1.close()     // Catch:{ Throwable -> 0x0037 }
        L_0x0031:
            if (r2 == 0) goto L_0x0036
            r2.close()     // Catch:{ Throwable -> 0x0039 }
        L_0x0036:
            throw r0
        L_0x0037:
            r0 = move-exception
            throw r0
        L_0x0039:
            r0 = move-exception
            throw r0
        L_0x003b:
            r0 = move-exception
            throw r0
        L_0x003d:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
            r1 = r3
            goto L_0x002c
        L_0x0043:
            r1 = move-exception
            r3 = r1
            r1 = r0
            r0 = r3
            goto L_0x002c
        L_0x0048:
            r1 = move-exception
            r3 = r1
            r1 = r0
            r0 = r3
            goto L_0x002a
        L_0x004d:
            r0 = move-exception
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fy.g(byte[]):byte[]");
    }

    public static String a(long j) {
        boolean z = false;
        try {
            return new SimpleDateFormat("yyyyMMdd HH:mm:ss:SSS", Locale.CHINA).format(new Date(j));
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return z;
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 80; i++) {
            sb.append("=");
        }
        a = sb.toString();
    }

    public static void a(Context context, String str, String str2, JSONObject jSONObject) {
        String str3;
        String str4 = "";
        String e = fo.e(context);
        String b = fu.b(e);
        String str5 = "";
        String str6 = "";
        String str7 = "";
        String a2 = fo.a(context);
        String str8 = "";
        try {
            if (jSONObject.has("info")) {
                str4 = jSONObject.getString("info");
                str7 = "请在高德开放平台官网中搜索\"" + str4 + "\"相关内容进行解决";
            }
            if ("INVALID_USER_SCODE".equals(str4)) {
                if (jSONObject.has("sec_code")) {
                    str5 = jSONObject.getString("sec_code");
                }
                if (jSONObject.has("sec_code_debug")) {
                    str3 = jSONObject.getString("sec_code_debug");
                } else {
                    str3 = str6;
                }
                if (b.equals(str5) || b.equals(str3)) {
                    str7 = "请在高德开放平台官网中搜索\"请求内容过长导致业务调用失败\"相关内容进行解决";
                }
            } else if ("INVALID_USER_KEY".equals(str4)) {
                if (jSONObject.has("key")) {
                    str8 = jSONObject.getString("key");
                }
                if (str8.length() > 0 && !a2.equals(str8)) {
                    str7 = "请在高德开放平台官网上发起技术咨询工单—>账号与Key问题，咨询INVALID_USER_KEY如何解决";
                }
            }
        } catch (Throwable th) {
        }
        f(a);
        f("                                   鉴权错误信息                                  ");
        f(a);
        e("SHA1Package:" + e);
        e("key:" + a2);
        e("csid:" + str);
        e("gsid:" + str2);
        e("json:" + jSONObject.toString());
        f("                                                                               ");
        f(str7);
        f(a);
    }

    static void e(String str) {
        if (str.length() < 78) {
            StringBuilder sb = new StringBuilder();
            sb.append("|").append(str);
            for (int i = 0; i < 78 - str.length(); i++) {
                sb.append(Token.SEPARATOR);
            }
            sb.append("|");
            f(sb.toString());
            return;
        }
        f("|" + str.substring(0, 78) + "|");
        e(str.substring(78));
    }

    private static void f(String str) {
        Log.i("authErrLog", str);
    }
}
