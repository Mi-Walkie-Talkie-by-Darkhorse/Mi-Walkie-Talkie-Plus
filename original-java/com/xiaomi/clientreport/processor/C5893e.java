package com.xiaomi.clientreport.processor;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.clientreport.data.C5878a;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.push.C5968aa;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* renamed from: com.xiaomi.clientreport.processor.e */
/* loaded from: classes2.dex */
public class C5893e {
    /* renamed from: a */
    private static PerfClientReport m4092a(PerfClientReport perfClientReport, String str) {
        long[] m4089a;
        if (perfClientReport == null || (m4089a = m4089a(str)) == null) {
            return null;
        }
        perfClientReport.perfCounts = m4089a[0];
        perfClientReport.perfLatencies = m4089a[1];
        return perfClientReport;
    }

    /* renamed from: a */
    private static PerfClientReport m4091a(String str) {
        PerfClientReport perfClientReport = null;
        try {
            String[] m4088a = m4088a(str);
            if (m4088a == null || m4088a.length < 4 || TextUtils.isEmpty(m4088a[0]) || TextUtils.isEmpty(m4088a[1]) || TextUtils.isEmpty(m4088a[2]) || TextUtils.isEmpty(m4088a[3])) {
                return null;
            }
            perfClientReport = PerfClientReport.getBlankInstance();
            perfClientReport.production = Integer.parseInt(m4088a[0]);
            perfClientReport.clientInterfaceId = m4088a[1];
            perfClientReport.reportType = Integer.parseInt(m4088a[2]);
            perfClientReport.code = Integer.parseInt(m4088a[3]);
            return perfClientReport;
        } catch (Exception unused) {
            AbstractC5876b.m4139c("parse per key error");
            return perfClientReport;
        }
    }

    /* renamed from: a */
    public static String m4093a(PerfClientReport perfClientReport) {
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
    /* renamed from: a */
    private static HashMap<String, String> m4090a(String str) {
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
                    } catch (Exception e) {
                        e = e;
                        bufferedReader = bufferedReader2;
                        AbstractC5876b.m4143a(e);
                        C5968aa.m3810a(bufferedReader);
                        return hashMap;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        C5968aa.m3810a(bufferedReader);
                        throw th;
                    }
                }
                C5968aa.m3810a(bufferedReader2);
            } catch (Exception e2) {
                e = e2;
            }
            return hashMap;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00d5, code lost:
        if (r1 != null) goto L50;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00f4  */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.io.Closeable, java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<String> m4094a(Context context, String str) {
        File file;
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        PerfClientReport m4092a;
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str) || !new File(str).exists()) {
            return arrayList;
        }
        FileLock fileLock = null;
        try {
            file = new File(str + ".lock");
        } catch (Exception e) {
            e = e;
            file = null;
            randomAccessFile = null;
        } catch (Throwable th) {
            th = th;
            file = null;
            randomAccessFile = null;
        }
        try {
            C5968aa.m3808a(file);
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                FileLock lock = randomAccessFile.getChannel().lock();
                try {
                    randomAccessFile2 = new BufferedReader(new FileReader(str));
                    while (true) {
                        try {
                            String readLine = randomAccessFile2.readLine();
                            if (readLine == null) {
                                break;
                            }
                            String[] split = readLine.split("%%%");
                            if (split.length >= 2 && !TextUtils.isEmpty(split[0]) && !TextUtils.isEmpty(split[1]) && (m4092a = m4092a(m4091a(split[0]), split[1])) != null) {
                                arrayList.add(m4092a.toJsonString());
                            }
                        } catch (Exception e2) {
                            e = e2;
                            fileLock = lock;
                            randomAccessFile2 = randomAccessFile2;
                            try {
                                AbstractC5876b.m4143a(e);
                                if (fileLock != null) {
                                    try {
                                        fileLock.release();
                                    } catch (IOException e3) {
                                        AbstractC5876b.m4143a(e3);
                                    }
                                }
                                C5968aa.m3810a(randomAccessFile);
                                C5968aa.m3810a(randomAccessFile2);
                            } catch (Throwable th2) {
                                th = th2;
                                if (fileLock != null && fileLock.isValid()) {
                                    try {
                                        fileLock.release();
                                    } catch (IOException e4) {
                                        AbstractC5876b.m4143a(e4);
                                    }
                                }
                                C5968aa.m3810a(randomAccessFile);
                                C5968aa.m3810a(randomAccessFile2);
                                if (file != null) {
                                    file.delete();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            fileLock = lock;
                            if (fileLock != null) {
                            }
                            C5968aa.m3810a(randomAccessFile);
                            C5968aa.m3810a(randomAccessFile2);
                            if (file != null) {
                            }
                            throw th;
                        }
                    }
                    if (lock != null && lock.isValid()) {
                        try {
                            lock.release();
                        } catch (IOException e5) {
                            AbstractC5876b.m4143a(e5);
                        }
                    }
                    C5968aa.m3810a(randomAccessFile);
                    C5968aa.m3810a((Closeable) randomAccessFile2);
                } catch (Exception e6) {
                    e = e6;
                    randomAccessFile2 = 0;
                } catch (Throwable th4) {
                    th = th4;
                    randomAccessFile2 = 0;
                }
            } catch (Exception e7) {
                e = e7;
                randomAccessFile2 = null;
            } catch (Throwable th5) {
                th = th5;
                randomAccessFile2 = null;
            }
        } catch (Exception e8) {
            e = e8;
            randomAccessFile = null;
            randomAccessFile2 = randomAccessFile;
            AbstractC5876b.m4143a(e);
            if (fileLock != null && fileLock.isValid()) {
                fileLock.release();
            }
            C5968aa.m3810a(randomAccessFile);
            C5968aa.m3810a(randomAccessFile2);
        } catch (Throwable th6) {
            th = th6;
            randomAccessFile = null;
            randomAccessFile2 = randomAccessFile;
            if (fileLock != null) {
                fileLock.release();
            }
            C5968aa.m3810a(randomAccessFile);
            C5968aa.m3810a(randomAccessFile2);
            if (file != null) {
            }
            throw th;
        }
        file.delete();
        return arrayList;
    }

    /* renamed from: a */
    private static void m4087a(String str, HashMap<String, String> hashMap) {
        BufferedWriter bufferedWriter;
        Throwable th;
        Exception e;
        if (TextUtils.isEmpty(str) || hashMap == null || hashMap.size() == 0) {
            return;
        }
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        try {
            bufferedWriter = new BufferedWriter(new FileWriter(file));
        } catch (Exception e2) {
            bufferedWriter = null;
            e = e2;
        } catch (Throwable th2) {
            bufferedWriter = null;
            th = th2;
            C5968aa.m3810a(bufferedWriter);
            throw th;
        }
        try {
            try {
                for (String str2 : hashMap.keySet()) {
                    bufferedWriter.write(str2 + "%%%" + hashMap.get(str2));
                    bufferedWriter.newLine();
                }
            } catch (Throwable th3) {
                th = th3;
                C5968aa.m3810a(bufferedWriter);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            AbstractC5876b.m4143a(e);
            C5968aa.m3810a(bufferedWriter);
        }
        C5968aa.m3810a(bufferedWriter);
    }

    /* renamed from: a */
    public static void m4086a(String str, C5878a[] c5878aArr) {
        RandomAccessFile randomAccessFile;
        if (c5878aArr == null || c5878aArr.length <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        FileLock fileLock = null;
        try {
            File file = new File(str + ".lock");
            C5968aa.m3808a(file);
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                fileLock = randomAccessFile.getChannel().lock();
                HashMap<String, String> m4090a = m4090a(str);
                for (C5878a c5878a : c5878aArr) {
                    if (c5878a != null) {
                        String m4093a = m4093a((PerfClientReport) c5878a);
                        long j = ((PerfClientReport) c5878a).perfCounts;
                        long j2 = ((PerfClientReport) c5878a).perfLatencies;
                        if (!TextUtils.isEmpty(m4093a) && j > 0 && j2 >= 0) {
                            m4085a(m4090a, m4093a, j, j2);
                        }
                    }
                }
                m4087a(str, m4090a);
                if (fileLock != null && fileLock.isValid()) {
                    try {
                        fileLock.release();
                    } catch (IOException e) {
                        e = e;
                        AbstractC5876b.m4143a(e);
                        C5968aa.m3810a(randomAccessFile);
                    }
                }
            } catch (Throwable unused) {
                try {
                    AbstractC5876b.m4139c("failed to write perf to file ");
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException e2) {
                            e = e2;
                            AbstractC5876b.m4143a(e);
                            C5968aa.m3810a(randomAccessFile);
                        }
                    }
                    C5968aa.m3810a(randomAccessFile);
                } catch (Throwable th) {
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException e3) {
                            AbstractC5876b.m4143a(e3);
                        }
                    }
                    C5968aa.m3810a(randomAccessFile);
                    throw th;
                }
            }
        } catch (Throwable unused2) {
            randomAccessFile = null;
        }
        C5968aa.m3810a(randomAccessFile);
    }

    /* renamed from: a */
    private static void m4085a(HashMap<String, String> hashMap, String str, long j, long j2) {
        StringBuilder sb;
        String str2 = hashMap.get(str);
        if (TextUtils.isEmpty(str2)) {
            sb = new StringBuilder();
        } else {
            long[] m4089a = m4089a(str2);
            if (m4089a == null || m4089a[0] <= 0 || m4089a[1] < 0) {
                sb = new StringBuilder();
            } else {
                j += m4089a[0];
                j2 += m4089a[1];
                sb = new StringBuilder();
            }
        }
        sb.append(j);
        sb.append("#");
        sb.append(j2);
        hashMap.put(str, sb.toString());
    }

    /* renamed from: a */
    protected static long[] m4089a(String str) {
        long[] jArr = new long[2];
        try {
            String[] split = str.split("#");
            if (split.length >= 2) {
                jArr[0] = Long.parseLong(split[0].trim());
                jArr[1] = Long.parseLong(split[1].trim());
            }
            return jArr;
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
            return null;
        }
    }

    /* renamed from: a */
    private static String[] m4088a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.split("#");
    }
}
