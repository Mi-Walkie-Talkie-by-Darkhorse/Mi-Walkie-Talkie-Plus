package com.xiaomi.clientreport.processor;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.data.a;
import com.xiaomi.push.aa;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class e {
    private static PerfClientReport a(PerfClientReport perfClientReport, String str) {
        long[] a2;
        if (perfClientReport == null || (a2 = m9a(str)) == null) {
            return null;
        }
        perfClientReport.perfCounts = a2[0];
        perfClientReport.perfLatencies = a2[1];
        return perfClientReport;
    }

    private static PerfClientReport a(String str) {
        PerfClientReport perfClientReport = null;
        try {
            String[] a2 = m10a(str);
            if (a2 == null || a2.length < 4 || TextUtils.isEmpty(a2[0]) || TextUtils.isEmpty(a2[1]) || TextUtils.isEmpty(a2[2]) || TextUtils.isEmpty(a2[3])) {
                return null;
            }
            perfClientReport = PerfClientReport.getBlankInstance();
            perfClientReport.production = Integer.parseInt(a2[0]);
            perfClientReport.clientInterfaceId = a2[1];
            perfClientReport.reportType = Integer.parseInt(a2[2]);
            perfClientReport.code = Integer.parseInt(a2[3]);
            return perfClientReport;
        } catch (Exception unused) {
            b.c("parse per key error");
            return perfClientReport;
        }
    }

    public static String a(PerfClientReport perfClientReport) {
        return perfClientReport.production + "#" + perfClientReport.clientInterfaceId + "#" + perfClientReport.reportType + "#" + perfClientReport.code;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12, types: [int] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.lang.Object] */
    /* renamed from: a  reason: collision with other method in class */
    private static HashMap<String, String> m8a(String str) {
        Throwable th;
        Exception e;
        HashMap hashMap = new HashMap();
        if (TextUtils.isEmpty(str) || !new File(str).exists()) {
            return hashMap;
        }
        BufferedReader bufferedReader = 0;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(str));
                while (true) {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine == null) {
                            break;
                        }
                        String[] split = readLine.split("%%%");
                        bufferedReader = split.length;
                        if (bufferedReader >= 2) {
                            bufferedReader = 0;
                            bufferedReader = 0;
                            if (!TextUtils.isEmpty(split[0]) && !TextUtils.isEmpty(split[1])) {
                                bufferedReader = split[0];
                                hashMap.put(bufferedReader, split[1]);
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                        bufferedReader = bufferedReader2;
                        b.a(e);
                        aa.a(bufferedReader);
                        return hashMap;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        aa.a(bufferedReader);
                        throw th;
                    }
                }
                aa.a(bufferedReader2);
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e3) {
            e = e3;
        }
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d5, code lost:
        if (r1 != null) goto L_0x00d7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00f4  */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.io.Closeable, java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List<java.lang.String> a(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.clientreport.processor.e.a(android.content.Context, java.lang.String):java.util.List");
    }

    private static void a(String str, HashMap<String, String> hashMap) {
        Throwable th;
        BufferedWriter bufferedWriter;
        Exception e;
        if (!(TextUtils.isEmpty(str) || hashMap == null || hashMap.size() == 0)) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(file));
                try {
                    try {
                        for (String str2 : hashMap.keySet()) {
                            bufferedWriter.write(str2 + "%%%" + hashMap.get(str2));
                            bufferedWriter.newLine();
                        }
                    } catch (Exception e2) {
                        e = e2;
                        b.a(e);
                        aa.a(bufferedWriter);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    aa.a(bufferedWriter);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                bufferedWriter = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedWriter = null;
                aa.a(bufferedWriter);
                throw th;
            }
            aa.a(bufferedWriter);
        }
    }

    public static void a(String str, a[] aVarArr) {
        RandomAccessFile randomAccessFile;
        if (!(aVarArr == null || aVarArr.length <= 0 || TextUtils.isEmpty(str))) {
            FileLock fileLock = null;
            try {
                File file = new File(str + ".lock");
                aa.m65a(file);
                randomAccessFile = new RandomAccessFile(file, "rw");
            } catch (Throwable unused) {
                randomAccessFile = null;
            }
            try {
                fileLock = randomAccessFile.getChannel().lock();
                HashMap<String, String> a2 = m8a(str);
                for (a aVar : aVarArr) {
                    if (aVar != null) {
                        String a3 = a((PerfClientReport) aVar);
                        long j = ((PerfClientReport) aVar).perfCounts;
                        long j2 = ((PerfClientReport) aVar).perfLatencies;
                        if (!TextUtils.isEmpty(a3) && j > 0 && j2 >= 0) {
                            a(a2, a3, j, j2);
                        }
                    }
                }
                a(str, a2);
            } catch (Throwable unused2) {
                try {
                    b.c("failed to write perf to file ");
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException e) {
                            e = e;
                        }
                    }
                } finally {
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException e2) {
                            b.a(e2);
                        }
                    }
                    aa.a(randomAccessFile);
                }
            }
        }
    }

    private static void a(HashMap<String, String> hashMap, String str, long j, long j2) {
        StringBuilder sb;
        String str2 = hashMap.get(str);
        if (TextUtils.isEmpty(str2)) {
            sb = new StringBuilder();
        } else {
            long[] a2 = m9a(str2);
            if (a2 == null || a2[0] <= 0 || a2[1] < 0) {
                sb = new StringBuilder();
            } else {
                j += a2[0];
                j2 += a2[1];
                sb = new StringBuilder();
            }
        }
        sb.append(j);
        sb.append("#");
        sb.append(j2);
        hashMap.put(str, sb.toString());
    }

    /* renamed from: a  reason: collision with other method in class */
    protected static long[] m9a(String str) {
        long[] jArr = new long[2];
        try {
            String[] split = str.split("#");
            if (split.length >= 2) {
                jArr[0] = Long.parseLong(split[0].trim());
                jArr[1] = Long.parseLong(split[1].trim());
            }
            return jArr;
        } catch (Exception e) {
            b.a(e);
            return null;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    private static String[] m10a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.split("#");
    }
}
