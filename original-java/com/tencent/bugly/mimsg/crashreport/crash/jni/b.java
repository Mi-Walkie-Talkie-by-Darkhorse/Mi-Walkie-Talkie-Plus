package com.tencent.bugly.mimsg.crashreport.crash.jni;

import android.content.Context;
import android.support.v4.os.EnvironmentCompat;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.crashreport.common.info.a;
import com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.z;
import com.xiaomi.mipush.sdk.Constants;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
public final class b {
    private static String a = null;

    private static Map<String, Integer> c(String str) {
        String[] split;
        if (str == null) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            for (String str2 : str.split(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
                String[] split2 = str2.split(":");
                if (split2.length != 2) {
                    x.e("error format at %s", str2);
                    return null;
                }
                hashMap.put(split2[0], Integer.valueOf(Integer.parseInt(split2[1])));
            }
            return hashMap;
        } catch (Exception e) {
            x.e("error format intStateStr %s", str);
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    protected static String a(String str) {
        if (str == null) {
            return "";
        }
        String[] split = str.split("\n");
        if (split == null || split.length == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : split) {
            if (!str2.contains("java.lang.Thread.getStackTrace(")) {
                sb.append(str2).append("\n");
            }
        }
        return sb.toString();
    }

    private static CrashDetailBean a(Context context, Map<String, String> map, NativeExceptionHandler nativeExceptionHandler) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        if (map == null) {
            return null;
        }
        if (a.a(context) == null) {
            x.e("abnormal com info not created", new Object[0]);
            return null;
        }
        String str8 = (String) map.get("intStateStr");
        if (str8 == null || str8.trim().length() <= 0) {
            x.e("no intStateStr", new Object[0]);
            return null;
        }
        Map c = c(str8);
        if (c == null) {
            x.e("parse intSateMap fail", Integer.valueOf(map.size()));
            return null;
        }
        try {
            ((Integer) c.get("sino")).intValue();
            ((Integer) c.get("sud")).intValue();
            String str9 = (String) map.get("soVersion");
            if (str9 == null) {
                x.e("error format at version", new Object[0]);
                return null;
            }
            String str10 = (String) map.get("errorAddr");
            String str11 = str10 == null ? EnvironmentCompat.MEDIA_UNKNOWN : str10;
            String str12 = (String) map.get("codeMsg");
            if (str12 == null) {
                str = EnvironmentCompat.MEDIA_UNKNOWN;
            } else {
                str = str12;
            }
            String str13 = (String) map.get("tombPath");
            if (str13 == null) {
                str2 = EnvironmentCompat.MEDIA_UNKNOWN;
            } else {
                str2 = str13;
            }
            String str14 = (String) map.get("signalName");
            if (str14 == null) {
                str3 = EnvironmentCompat.MEDIA_UNKNOWN;
            } else {
                str3 = str14;
            }
            map.get("errnoMsg");
            String str15 = (String) map.get("stack");
            if (str15 == null) {
                str4 = EnvironmentCompat.MEDIA_UNKNOWN;
            } else {
                str4 = str15;
            }
            String str16 = (String) map.get("jstack");
            if (str16 != null) {
                str4 = str4 + "java:\n" + str16;
            }
            Integer num = (Integer) c.get("sico");
            if (num != null && num.intValue() > 0) {
                str3 = str3 + "(" + str + ")";
                str = "KERNEL";
            }
            String str17 = (String) map.get("nativeLog");
            byte[] bArr = null;
            if (str17 != null && !str17.isEmpty()) {
                bArr = z.a((File) null, str17, "BuglyNativeLog.txt");
            }
            String str18 = (String) map.get("sendingProcess");
            if (str18 == null) {
                str5 = EnvironmentCompat.MEDIA_UNKNOWN;
            } else {
                str5 = str18;
            }
            Integer num2 = (Integer) c.get("spd");
            if (num2 != null) {
                str5 = str5 + "(" + num2 + ")";
            }
            String str19 = (String) map.get("threadName");
            if (str19 == null) {
                str6 = EnvironmentCompat.MEDIA_UNKNOWN;
            } else {
                str6 = str19;
            }
            Integer num3 = (Integer) c.get("et");
            if (num3 != null) {
                str6 = str6 + "(" + num3 + ")";
            }
            String str20 = (String) map.get("processName");
            if (str20 == null) {
                str7 = EnvironmentCompat.MEDIA_UNKNOWN;
            } else {
                str7 = str20;
            }
            Integer num4 = (Integer) c.get("ep");
            if (num4 != null) {
                str7 = str7 + "(" + num4 + ")";
            }
            HashMap hashMap = null;
            String str21 = (String) map.get("key-value");
            if (str21 != null) {
                hashMap = new HashMap();
                for (String split : str21.split("\n")) {
                    String[] split2 = split.split("=");
                    if (split2.length == 2) {
                        hashMap.put(split2[0], split2[1]);
                    }
                }
            }
            CrashDetailBean packageCrashDatas = nativeExceptionHandler.packageCrashDatas(str7, str6, (((long) ((Integer) c.get("etms")).intValue()) / 1000) + (((long) ((Integer) c.get("ets")).intValue()) * 1000), str3, str11, a(str4), str, str5, str2, (String) map.get("sysLogPath"), str9, bArr, hashMap, false);
            if (packageCrashDatas != null) {
                String str22 = (String) map.get("userId");
                if (str22 != null) {
                    x.c("[Native record info] userId: %s", str22);
                    packageCrashDatas.m = str22;
                }
                String str23 = (String) map.get("sysLog");
                if (str23 != null) {
                    packageCrashDatas.w = str23;
                }
                String str24 = (String) map.get("appVersion");
                if (str24 != null) {
                    x.c("[Native record info] appVersion: %s", str24);
                    packageCrashDatas.f = str24;
                }
                String str25 = (String) map.get("isAppForeground");
                if (str25 != null) {
                    x.c("[Native record info] isAppForeground: %s", str25);
                    packageCrashDatas.M = str25.equalsIgnoreCase("true");
                }
                String str26 = (String) map.get("launchTime");
                if (str26 != null) {
                    x.c("[Native record info] launchTime: %s", str26);
                    packageCrashDatas.L = Long.parseLong(str26);
                }
                packageCrashDatas.y = null;
                packageCrashDatas.k = true;
            }
            return packageCrashDatas;
        } catch (NumberFormatException e) {
            if (!x.a(e)) {
                ThrowableExtension.printStackTrace(e);
            }
        } catch (Throwable th) {
            x.e("error format", new Object[0]);
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    private static String a(BufferedInputStream bufferedInputStream) throws IOException {
        if (bufferedInputStream == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int read = bufferedInputStream.read();
            if (read == -1) {
                return null;
            }
            if (read == 0) {
                return sb.toString();
            }
            sb.append((char) read);
        }
    }

    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r0v1, types: [com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean] */
    /* JADX WARNING: type inference failed for: r2v5, types: [java.io.BufferedInputStream] */
    /* JADX WARNING: type inference failed for: r2v6 */
    /* JADX WARNING: type inference failed for: r2v7, types: [java.io.BufferedInputStream] */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v9, types: [java.io.BufferedInputStream] */
    /* JADX WARNING: type inference failed for: r1v10 */
    /* JADX WARNING: type inference failed for: r1v11, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r3v4, types: [java.lang.Object, java.lang.String] */
    /* JADX WARNING: type inference failed for: r0v7, types: [com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean] */
    /* JADX WARNING: type inference failed for: r4v4, types: [java.lang.Object[]] */
    /* JADX WARNING: type inference failed for: r1v14 */
    /* JADX WARNING: type inference failed for: r1v15 */
    /* JADX WARNING: type inference failed for: r1v16 */
    /* JADX WARNING: type inference failed for: r0v8 */
    /* JADX WARNING: type inference failed for: r2v10 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r0v9 */
    /* JADX WARNING: type inference failed for: r0v10 */
    /* JADX WARNING: type inference failed for: r1v17 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r1v14
  assigns: []
  uses: []
  mth insns count: 73
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
    /* JADX WARNING: Removed duplicated region for block: B:53:0x009e A[SYNTHETIC, Splitter:B:53:0x009e] */
    /* JADX WARNING: Unknown variable types count: 9 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean a(android.content.Context r6, java.lang.String r7, com.tencent.bugly.mimsg.crashreport.crash.jni.NativeExceptionHandler r8) {
        /*
            r2 = 0
            r0 = 0
            if (r6 == 0) goto L_0x0008
            if (r7 == 0) goto L_0x0008
            if (r8 != 0) goto L_0x0010
        L_0x0008:
            java.lang.String r1 = "get eup record file args error"
            java.lang.Object[] r2 = new java.lang.Object[r2]
            com.tencent.bugly.mimsg.proguard.x.e(r1, r2)
        L_0x000f:
            return r0
        L_0x0010:
            java.io.File r1 = new java.io.File
            java.lang.String r2 = "rqd_record.eup"
            r1.<init>(r7, r2)
            boolean r2 = r1.exists()
            if (r2 == 0) goto L_0x000f
            boolean r2 = r1.canRead()
            if (r2 == 0) goto L_0x000f
            java.io.BufferedInputStream r2 = new java.io.BufferedInputStream     // Catch:{ IOException -> 0x0087, all -> 0x0099 }
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ IOException -> 0x0087, all -> 0x0099 }
            r3.<init>(r1)     // Catch:{ IOException -> 0x0087, all -> 0x0099 }
            r2.<init>(r3)     // Catch:{ IOException -> 0x0087, all -> 0x0099 }
            java.lang.String r1 = a(r2)     // Catch:{ IOException -> 0x00a9 }
            if (r1 == 0) goto L_0x003b
            java.lang.String r3 = "NATIVE_RQD_REPORT"
            boolean r3 = r1.equals(r3)     // Catch:{ IOException -> 0x00a9 }
            if (r3 != 0) goto L_0x004f
        L_0x003b:
            java.lang.String r3 = "record read fail! %s"
            r4 = 1
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ IOException -> 0x00a9 }
            r5 = 0
            r4[r5] = r1     // Catch:{ IOException -> 0x00a9 }
            com.tencent.bugly.mimsg.proguard.x.e(r3, r4)     // Catch:{ IOException -> 0x00a9 }
            r2.close()     // Catch:{ IOException -> 0x004a }
            goto L_0x000f
        L_0x004a:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x000f
        L_0x004f:
            java.util.HashMap r4 = new java.util.HashMap     // Catch:{ IOException -> 0x00a9 }
            r4.<init>()     // Catch:{ IOException -> 0x00a9 }
            r1 = r0
        L_0x0055:
            java.lang.String r3 = a(r2)     // Catch:{ IOException -> 0x00a9 }
            if (r3 == 0) goto L_0x0064
            if (r1 != 0) goto L_0x005f
            r1 = r3
            goto L_0x0055
        L_0x005f:
            r4.put(r1, r3)     // Catch:{ IOException -> 0x00a9 }
            r1 = r0
            goto L_0x0055
        L_0x0064:
            if (r1 == 0) goto L_0x007a
            java.lang.String r3 = "record not pair! drop! %s"
            r4 = 1
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ IOException -> 0x00a9 }
            r5 = 0
            r4[r5] = r1     // Catch:{ IOException -> 0x00a9 }
            com.tencent.bugly.mimsg.proguard.x.e(r3, r4)     // Catch:{ IOException -> 0x00a9 }
            r2.close()     // Catch:{ IOException -> 0x0075 }
            goto L_0x000f
        L_0x0075:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x000f
        L_0x007a:
            com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean r0 = a(r6, r4, r8)     // Catch:{ IOException -> 0x00a9 }
            r2.close()     // Catch:{ IOException -> 0x0082 }
            goto L_0x000f
        L_0x0082:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x000f
        L_0x0087:
            r1 = move-exception
            r2 = r0
        L_0x0089:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x00a7 }
            if (r2 == 0) goto L_0x000f
            r2.close()     // Catch:{ IOException -> 0x0093 }
            goto L_0x000f
        L_0x0093:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x000f
        L_0x0099:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x009c:
            if (r2 == 0) goto L_0x00a1
            r2.close()     // Catch:{ IOException -> 0x00a2 }
        L_0x00a1:
            throw r0
        L_0x00a2:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x00a1
        L_0x00a7:
            r0 = move-exception
            goto L_0x009c
        L_0x00a9:
            r1 = move-exception
            goto L_0x0089
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.crashreport.crash.jni.b.a(android.content.Context, java.lang.String, com.tencent.bugly.mimsg.crashreport.crash.jni.NativeExceptionHandler):com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean");
    }

    private static String b(String str, String str2) {
        String str3 = null;
        String a2 = z.a(str, "reg_record.txt");
        if (a2 != null) {
            try {
                StringBuilder sb = new StringBuilder();
                a2 = a2.readLine();
                if (a2 != null && a2.startsWith(str2)) {
                    String str4 = "                ";
                    int i = 0;
                    int i2 = 18;
                    int i3 = 0;
                    while (true) {
                        String readLine = a2.readLine();
                        if (readLine == null) {
                            break;
                        }
                        if (i3 % 4 == 0) {
                            if (i3 > 0) {
                                sb.append("\n");
                            }
                            sb.append("  ");
                        } else {
                            if (readLine.length() > 16) {
                                i2 = 28;
                            }
                            sb.append(str4.substring(0, i2 - i));
                        }
                        i = readLine.length();
                        sb.append(readLine);
                        i3++;
                    }
                    sb.append("\n");
                    str3 = sb.toString();
                    if (a2 != null) {
                        try {
                            a2.close();
                        } catch (Exception e) {
                            x.a(e);
                        }
                    }
                } else if (a2 != null) {
                    try {
                        a2.close();
                    } catch (Exception e2) {
                        x.a(e2);
                    }
                }
            } catch (Throwable th) {
                x.a(th);
                if (a2 != null) {
                    try {
                        a2.close();
                    } catch (Exception e3) {
                        x.a(e3);
                    }
                }
            } finally {
                if (a2 != null) {
                    try {
                        a2.close();
                    } catch (Exception e4) {
                        x.a(e4);
                    }
                }
            }
        }
        return str3;
    }

    private static String c(String str, String str2) {
        String str3 = null;
        String a2 = z.a(str, "map_record.txt");
        if (a2 != null) {
            try {
                StringBuilder sb = new StringBuilder();
                a2 = a2.readLine();
                if (a2 != null && a2.startsWith(str2)) {
                    while (true) {
                        String readLine = a2.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb.append("  ");
                        sb.append(readLine);
                        sb.append("\n");
                    }
                    str3 = sb.toString();
                    if (a2 != null) {
                        try {
                            a2.close();
                        } catch (Exception e) {
                            x.a(e);
                        }
                    }
                } else if (a2 != null) {
                    try {
                        a2.close();
                    } catch (Exception e2) {
                        x.a(e2);
                    }
                }
            } catch (Throwable th) {
                x.a(th);
                if (a2 != null) {
                    try {
                        a2.close();
                    } catch (Exception e3) {
                        x.a(e3);
                    }
                }
            } finally {
                if (a2 != null) {
                    try {
                        a2.close();
                    } catch (Exception e4) {
                        x.a(e4);
                    }
                }
            }
        }
        return str3;
    }

    public static String a(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        String b = b(str, str2);
        if (b != null && !b.isEmpty()) {
            sb.append("Register infos:\n");
            sb.append(b);
        }
        String c = c(str, str2);
        if (c != null && !c.isEmpty()) {
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append("System SO infos:\n");
            sb.append(c);
        }
        return sb.toString();
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        File file = new File(str, "backup_record.txt");
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        return null;
    }

    public static void a(boolean z, String str) {
        if (str != null) {
            File file = new File(str, "rqd_record.eup");
            if (file.exists() && file.canWrite()) {
                file.delete();
                x.c("delete record file %s", file.getAbsoluteFile());
            }
            File file2 = new File(str, "reg_record.txt");
            if (file2.exists() && file2.canWrite()) {
                file2.delete();
                x.c("delete record file %s", file2.getAbsoluteFile());
            }
            File file3 = new File(str, "map_record.txt");
            if (file3.exists() && file3.canWrite()) {
                file3.delete();
                x.c("delete record file %s", file3.getAbsoluteFile());
            }
            File file4 = new File(str, "backup_record.txt");
            if (file4.exists() && file4.canWrite()) {
                file4.delete();
                x.c("delete record file %s", file4.getAbsoluteFile());
            }
            if (a != null) {
                File file5 = new File(a);
                if (file5.exists() && file5.canWrite()) {
                    file5.delete();
                    x.c("delete record file %s", file5.getAbsoluteFile());
                }
            }
            if (z) {
                File file6 = new File(str);
                if (file6.canRead() && file6.isDirectory()) {
                    File[] listFiles = file6.listFiles();
                    if (listFiles != null) {
                        for (File file7 : listFiles) {
                            if (file7.canRead() && file7.canWrite() && file7.length() == 0) {
                                file7.delete();
                                x.c("delete invalid record file %s", file7.getAbsoluteFile());
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r2v4, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r2v6, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00b9 A[SYNTHETIC, Splitter:B:39:0x00b9] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(java.lang.String r8, int r9, java.lang.String r10) {
        /*
            r0 = 0
            if (r8 == 0) goto L_0x0005
            if (r9 > 0) goto L_0x0006
        L_0x0005:
            return r0
        L_0x0006:
            java.io.File r1 = new java.io.File
            r1.<init>(r8)
            boolean r2 = r1.exists()
            if (r2 == 0) goto L_0x0005
            boolean r2 = r1.canRead()
            if (r2 == 0) goto L_0x0005
            a = r8
            java.lang.String r2 = "Read system log from native record file(length: %s bytes): %s"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = 0
            long r6 = r1.length()
            java.lang.Long r5 = java.lang.Long.valueOf(r6)
            r3[r4] = r5
            r4 = 1
            java.lang.String r5 = r1.getAbsolutePath()
            r3[r4] = r5
            com.tencent.bugly.mimsg.proguard.x.a(r2, r3)
            if (r10 != 0) goto L_0x0050
            java.io.File r0 = new java.io.File
            r0.<init>(r8)
            java.lang.String r0 = com.tencent.bugly.mimsg.proguard.z.a(r0)
        L_0x003e:
            if (r0 == 0) goto L_0x0005
            int r1 = r0.length()
            if (r1 <= r9) goto L_0x0005
            int r1 = r0.length()
            int r1 = r1 - r9
            java.lang.String r0 = r0.substring(r1)
            goto L_0x0005
        L_0x0050:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00c4, all -> 0x00b4 }
            r3.<init>()     // Catch:{ Throwable -> 0x00c4, all -> 0x00b4 }
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ Throwable -> 0x00c4, all -> 0x00b4 }
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch:{ Throwable -> 0x00c4, all -> 0x00b4 }
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch:{ Throwable -> 0x00c4, all -> 0x00b4 }
            r5.<init>(r1)     // Catch:{ Throwable -> 0x00c4, all -> 0x00b4 }
            java.lang.String r1 = "utf-8"
            r4.<init>(r5, r1)     // Catch:{ Throwable -> 0x00c4, all -> 0x00b4 }
            r2.<init>(r4)     // Catch:{ Throwable -> 0x00c4, all -> 0x00b4 }
        L_0x0066:
            java.lang.String r1 = r2.readLine()     // Catch:{ Throwable -> 0x0096 }
            if (r1 == 0) goto L_0x00a7
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0096 }
            r4.<init>()     // Catch:{ Throwable -> 0x0096 }
            java.lang.StringBuilder r4 = r4.append(r10)     // Catch:{ Throwable -> 0x0096 }
            java.lang.String r5 = "[ ]*:"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Throwable -> 0x0096 }
            java.lang.String r4 = r4.toString()     // Catch:{ Throwable -> 0x0096 }
            java.util.regex.Pattern r4 = java.util.regex.Pattern.compile(r4)     // Catch:{ Throwable -> 0x0096 }
            java.util.regex.Matcher r4 = r4.matcher(r1)     // Catch:{ Throwable -> 0x0096 }
            boolean r4 = r4.find()     // Catch:{ Throwable -> 0x0096 }
            if (r4 == 0) goto L_0x0066
            r3.append(r1)     // Catch:{ Throwable -> 0x0096 }
            java.lang.String r1 = "\n"
            r3.append(r1)     // Catch:{ Throwable -> 0x0096 }
            goto L_0x0066
        L_0x0096:
            r1 = move-exception
        L_0x0097:
            com.tencent.bugly.mimsg.proguard.x.a(r1)     // Catch:{ all -> 0x00c2 }
            if (r2 == 0) goto L_0x0005
            r2.close()     // Catch:{ Exception -> 0x00a1 }
            goto L_0x0005
        L_0x00a1:
            r1 = move-exception
            com.tencent.bugly.mimsg.proguard.x.a(r1)
            goto L_0x0005
        L_0x00a7:
            java.lang.String r0 = r3.toString()     // Catch:{ Throwable -> 0x0096 }
            r2.close()     // Catch:{ Exception -> 0x00af }
            goto L_0x003e
        L_0x00af:
            r1 = move-exception
            com.tencent.bugly.mimsg.proguard.x.a(r1)
            goto L_0x003e
        L_0x00b4:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x00b7:
            if (r2 == 0) goto L_0x00bc
            r2.close()     // Catch:{ Exception -> 0x00bd }
        L_0x00bc:
            throw r0
        L_0x00bd:
            r1 = move-exception
            com.tencent.bugly.mimsg.proguard.x.a(r1)
            goto L_0x00bc
        L_0x00c2:
            r0 = move-exception
            goto L_0x00b7
        L_0x00c4:
            r1 = move-exception
            r2 = r0
            goto L_0x0097
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.crashreport.crash.jni.b.a(java.lang.String, int, java.lang.String):java.lang.String");
    }
}
