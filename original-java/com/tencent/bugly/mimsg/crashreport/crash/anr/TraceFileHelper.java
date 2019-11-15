package com.tencent.bugly.mimsg.crashreport.crash.anr;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.tencent.bugly.mimsg.proguard.x;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: BUGLY */
public class TraceFileHelper {

    /* compiled from: BUGLY */
    public static class a {
        public long a;
        public String b;
        public long c;
        public Map<String, String[]> d;
    }

    /* compiled from: BUGLY */
    public interface b {
        boolean a(long j);

        boolean a(long j, long j2, String str);

        boolean a(String str, int i, String str2, String str3);
    }

    public static a readTargetDumpInfo(String str, String str2, final boolean z) {
        if (str == null || str2 == null) {
            return null;
        }
        final a aVar = new a();
        readTraceFile(str2, new b() {
            public final boolean a(String str, int i, String str2, String str3) {
                x.c("new thread %s", str);
                if (aVar.a > 0 && aVar.c > 0 && aVar.b != null) {
                    if (aVar.d == null) {
                        aVar.d = new HashMap();
                    }
                    aVar.d.put(str, new String[]{str2, str3, i});
                }
                return true;
            }

            public final boolean a(long j, long j2, String str) {
                x.c("new process %s", str);
                if (!str.equals(str)) {
                    return true;
                }
                aVar.a = j;
                aVar.b = str;
                aVar.c = j2;
                if (!z) {
                    return false;
                }
                return true;
            }

            public final boolean a(long j) {
                x.c("process end %d", Long.valueOf(j));
                if (aVar.a <= 0 || aVar.c <= 0 || aVar.b == null) {
                    return true;
                }
                return false;
            }
        });
        if (aVar.a <= 0 || aVar.c <= 0 || aVar.b == null) {
            return null;
        }
        return aVar;
    }

    public static a readFirstDumpInfo(String str, final boolean z) {
        if (str == null) {
            x.e("path:%s", str);
            return null;
        }
        final a aVar = new a();
        readTraceFile(str, new b() {
            public final boolean a(String str, int i, String str2, String str3) {
                x.c("new thread %s", str);
                if (aVar.d == null) {
                    aVar.d = new HashMap();
                }
                aVar.d.put(str, new String[]{str2, str3, i});
                return true;
            }

            public final boolean a(long j, long j2, String str) {
                x.c("new process %s", str);
                aVar.a = j;
                aVar.b = str;
                aVar.c = j2;
                if (!z) {
                    return false;
                }
                return true;
            }

            public final boolean a(long j) {
                x.c("process end %d", Long.valueOf(j));
                return false;
            }
        });
        if (aVar.a > 0 && aVar.c > 0 && aVar.b != null) {
            return aVar;
        }
        x.e("first dump error %s", aVar.a + Token.SEPARATOR + aVar.c + Token.SEPARATOR + aVar.b);
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:102:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0199, code lost:
        if (r13.a(java.lang.Long.parseLong(r1[1].toString().split("\\s")[2])) != false) goto L_0x0042;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:?, code lost:
        r7.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x01a0, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x01a5, code lost:
        if (com.tencent.bugly.mimsg.proguard.x.a(r0) == false) goto L_0x01a7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x01a7, code lost:
        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:96:?, code lost:
        return;
     */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x01c1 A[SYNTHETIC, Splitter:B:70:0x01c1] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void readTraceFile(java.lang.String r12, com.tencent.bugly.mimsg.crashreport.crash.anr.TraceFileHelper.b r13) {
        /*
            if (r12 == 0) goto L_0x0004
            if (r13 != 0) goto L_0x0005
        L_0x0004:
            return
        L_0x0005:
            java.io.File r0 = new java.io.File
            r0.<init>(r12)
            boolean r1 = r0.exists()
            if (r1 == 0) goto L_0x0004
            r0.lastModified()
            r0.length()
            r1 = 0
            java.io.BufferedReader r7 = new java.io.BufferedReader     // Catch:{ Exception -> 0x01d5, all -> 0x01bd }
            java.io.FileReader r2 = new java.io.FileReader     // Catch:{ Exception -> 0x01d5, all -> 0x01bd }
            r2.<init>(r0)     // Catch:{ Exception -> 0x01d5, all -> 0x01bd }
            r7.<init>(r2)     // Catch:{ Exception -> 0x01d5, all -> 0x01bd }
            java.lang.String r0 = "-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}"
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r1 = "-{5}\\send\\s\\d+\\s-{5}"
            java.util.regex.Pattern r8 = java.util.regex.Pattern.compile(r1)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r1 = "Cmd\\sline:\\s(\\S+)"
            java.util.regex.Pattern r9 = java.util.regex.Pattern.compile(r1)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r1 = "\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*"
            java.util.regex.Pattern r10 = java.util.regex.Pattern.compile(r1)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.text.SimpleDateFormat r11 = new java.text.SimpleDateFormat     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r1 = "yyyy-MM-dd HH:mm:ss"
            java.util.Locale r2 = java.util.Locale.US     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r11.<init>(r1, r2)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
        L_0x0042:
            r1 = 1
            java.util.regex.Pattern[] r1 = new java.util.regex.Pattern[r1]     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r2 = 0
            r1[r2] = r0     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.Object[] r1 = a(r7, r1)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            if (r1 == 0) goto L_0x01ac
            r2 = 1
            r1 = r1[r2]     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r2 = "\\s"
            java.lang.String[] r1 = r1.split(r2)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r2 = 2
            r2 = r1[r2]     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            long r2 = java.lang.Long.parseLong(r2)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r4.<init>()     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r5 = 4
            r5 = r1[r5]     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r5 = " "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r5 = 5
            r1 = r1[r5]     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.StringBuilder r1 = r4.append(r1)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.util.Date r1 = r11.parse(r1)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            long r4 = r1.getTime()     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r1 = 1
            java.util.regex.Pattern[] r1 = new java.util.regex.Pattern[r1]     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r6 = 0
            r1[r6] = r9     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.Object[] r1 = a(r7, r1)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            if (r1 != 0) goto L_0x00a4
            r7.close()     // Catch:{ IOException -> 0x0098 }
            goto L_0x0004
        L_0x0098:
            r0 = move-exception
            boolean r1 = com.tencent.bugly.mimsg.proguard.x.a(r0)
            if (r1 != 0) goto L_0x0004
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0004
        L_0x00a4:
            r6 = 1
            r1 = r1[r6]     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.util.regex.Matcher r1 = r9.matcher(r1)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r1.find()     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r6 = 1
            r1.group(r6)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r6 = 1
            java.lang.String r6 = r1.group(r6)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r1 = r13
            boolean r1 = r1.a(r2, r4, r6)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            if (r1 != 0) goto L_0x00d3
            r7.close()     // Catch:{ IOException -> 0x00c7 }
            goto L_0x0004
        L_0x00c7:
            r0 = move-exception
            boolean r1 = com.tencent.bugly.mimsg.proguard.x.a(r0)
            if (r1 != 0) goto L_0x0004
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0004
        L_0x00d3:
            r1 = 2
            java.util.regex.Pattern[] r1 = new java.util.regex.Pattern[r1]     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r2 = 0
            r1[r2] = r10     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r2 = 1
            r1[r2] = r8     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.Object[] r1 = a(r7, r1)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            if (r1 == 0) goto L_0x0042
            r2 = 0
            r2 = r1[r2]     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            if (r2 != r10) goto L_0x0181
            r2 = 1
            r1 = r1[r2]     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r2 = "\".+\""
            java.util.regex.Pattern r2 = java.util.regex.Pattern.compile(r2)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.util.regex.Matcher r2 = r2.matcher(r1)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r2.find()     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r2 = r2.group()     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r3 = 1
            int r4 = r2.length()     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            int r4 = r4 + -1
            java.lang.String r2 = r2.substring(r3, r4)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r3 = "NATIVE"
            r1.contains(r3)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r3 = "tid=\\d+"
            java.util.regex.Pattern r3 = java.util.regex.Pattern.compile(r3)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.util.regex.Matcher r1 = r3.matcher(r1)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r1.find()     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r1 = r1.group()     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r3 = "="
            int r3 = r1.indexOf(r3)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            int r3 = r3 + 1
            java.lang.String r1 = r1.substring(r3)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            int r1 = java.lang.Integer.parseInt(r1)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r3 = a(r7)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r4 = b(r7)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r13.a(r2, r1, r3, r4)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            goto L_0x00d3
        L_0x013c:
            r0 = move-exception
            r1 = r7
        L_0x013e:
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r0)     // Catch:{ all -> 0x01d2 }
            if (r2 != 0) goto L_0x0147
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x01d2 }
        L_0x0147:
            java.lang.String r2 = "trace open fail:%s : %s"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ all -> 0x01d2 }
            r4 = 0
            java.lang.Class r5 = r0.getClass()     // Catch:{ all -> 0x01d2 }
            java.lang.String r5 = r5.getName()     // Catch:{ all -> 0x01d2 }
            r3[r4] = r5     // Catch:{ all -> 0x01d2 }
            r4 = 1
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x01d2 }
            r5.<init>()     // Catch:{ all -> 0x01d2 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x01d2 }
            java.lang.StringBuilder r0 = r5.append(r0)     // Catch:{ all -> 0x01d2 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x01d2 }
            r3[r4] = r0     // Catch:{ all -> 0x01d2 }
            com.tencent.bugly.mimsg.proguard.x.d(r2, r3)     // Catch:{ all -> 0x01d2 }
            if (r1 == 0) goto L_0x0004
            r1.close()     // Catch:{ IOException -> 0x0175 }
            goto L_0x0004
        L_0x0175:
            r0 = move-exception
            boolean r1 = com.tencent.bugly.mimsg.proguard.x.a(r0)
            if (r1 != 0) goto L_0x0004
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0004
        L_0x0181:
            r2 = 1
            r1 = r1[r2]     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            java.lang.String r2 = "\\s"
            java.lang.String[] r1 = r1.split(r2)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            r2 = 2
            r1 = r1[r2]     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            long r2 = java.lang.Long.parseLong(r1)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            boolean r1 = r13.a(r2)     // Catch:{ Exception -> 0x013c, all -> 0x01d0 }
            if (r1 != 0) goto L_0x0042
            r7.close()     // Catch:{ IOException -> 0x01a0 }
            goto L_0x0004
        L_0x01a0:
            r0 = move-exception
            boolean r1 = com.tencent.bugly.mimsg.proguard.x.a(r0)
            if (r1 != 0) goto L_0x0004
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0004
        L_0x01ac:
            r7.close()     // Catch:{ IOException -> 0x01b1 }
            goto L_0x0004
        L_0x01b1:
            r0 = move-exception
            boolean r1 = com.tencent.bugly.mimsg.proguard.x.a(r0)
            if (r1 != 0) goto L_0x0004
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0004
        L_0x01bd:
            r0 = move-exception
            r7 = r1
        L_0x01bf:
            if (r7 == 0) goto L_0x01c4
            r7.close()     // Catch:{ IOException -> 0x01c5 }
        L_0x01c4:
            throw r0
        L_0x01c5:
            r1 = move-exception
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r1)
            if (r2 != 0) goto L_0x01c4
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x01c4
        L_0x01d0:
            r0 = move-exception
            goto L_0x01bf
        L_0x01d2:
            r0 = move-exception
            r7 = r1
            goto L_0x01bf
        L_0x01d5:
            r0 = move-exception
            goto L_0x013e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.crashreport.crash.anr.TraceFileHelper.readTraceFile(java.lang.String, com.tencent.bugly.mimsg.crashreport.crash.anr.TraceFileHelper$b):void");
    }

    private static Object[] a(BufferedReader bufferedReader, Pattern... patternArr) throws IOException {
        if (bufferedReader == null || patternArr == null) {
            return null;
        }
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return null;
            }
            int length = patternArr.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    Pattern pattern = patternArr[i];
                    if (pattern.matcher(readLine).matches()) {
                        return new Object[]{pattern, readLine};
                    }
                    i++;
                }
            }
        }
    }

    private static String a(BufferedReader bufferedReader) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < 3; i++) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return null;
            }
            stringBuffer.append(readLine + "\n");
        }
        return stringBuffer.toString();
    }

    private static String b(BufferedReader bufferedReader) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null && readLine.trim().length() > 0) {
                stringBuffer.append(readLine + "\n");
            }
        }
        return stringBuffer.toString();
    }
}
