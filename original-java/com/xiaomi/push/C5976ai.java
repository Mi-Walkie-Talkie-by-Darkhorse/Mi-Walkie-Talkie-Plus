package com.xiaomi.push;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
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

/* renamed from: com.xiaomi.push.ai */
/* loaded from: classes2.dex */
public class C5976ai {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    /* renamed from: a */
    public static boolean m3788a(Context context, String str, long j) {
        RandomAccessFile randomAccessFile;
        ?? r2 = 23;
        if (Build.VERSION.SDK_INT < 23 || C6175g.m2804c(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            FileLock fileLock = null;
            try {
                try {
                    File file = new File(new File(context.getExternalFilesDir(null), "/.vdevdir/"), "lcfp.lock");
                    C5968aa.m3808a(file);
                    randomAccessFile = new RandomAccessFile(file, "rw");
                } catch (IOException e) {
                    e = e;
                    randomAccessFile = null;
                } catch (Throwable th) {
                    th = th;
                    r2 = 0;
                    if (0 != 0) {
                        try {
                            fileLock.release();
                        } catch (IOException unused) {
                        }
                    }
                    C5968aa.m3810a((Closeable) r2);
                    throw th;
                }
                try {
                    fileLock = randomAccessFile.getChannel().lock();
                    boolean m3787b = m3787b(context, str, j);
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException unused2) {
                        }
                    }
                    C5968aa.m3810a(randomAccessFile);
                    return m3787b;
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException unused3) {
                        }
                    }
                    C5968aa.m3810a(randomAccessFile);
                    return true;
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0 && fileLock.isValid()) {
                    fileLock.release();
                }
                C5968aa.m3810a((Closeable) r2);
                throw th;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d8 A[Catch: IOException -> 0x00e8, all -> 0x00fa, LOOP:0: B:39:0x00d2->B:41:0x00d8, LOOP_END, TRY_LEAVE, TryCatch #0 {IOException -> 0x00e8, blocks: (B:38:0x00ce, B:39:0x00d2, B:41:0x00d8), top: B:56:0x00ce }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean m3787b(Context context, String str, long j) {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        BufferedWriter bufferedWriter;
        File file = new File(new File(context.getExternalFilesDir(null), "/.vdevdir/"), "lcfp");
        ArrayList<String> arrayList = new ArrayList();
        long currentTimeMillis = System.currentTimeMillis();
        String str2 = str + Constants.COLON_SEPARATOR + context.getPackageName() + Constants.ACCEPT_TIME_SEPARATOR_SP + currentTimeMillis;
        if (file.exists()) {
            try {
                bufferedReader2 = new BufferedReader(new FileReader(file));
                while (true) {
                    try {
                        try {
                            String readLine = bufferedReader2.readLine();
                            if (readLine == null) {
                                break;
                            }
                            String[] split = readLine.split(Constants.COLON_SEPARATOR);
                            if (split.length == 2) {
                                if (TextUtils.equals(split[0], String.valueOf(str))) {
                                    String[] split2 = split[1].split(Constants.ACCEPT_TIME_SEPARATOR_SP);
                                    if (split2.length == 2) {
                                        long parseLong = Long.parseLong(split2[1]);
                                        if (!TextUtils.equals(split2[0], context.getPackageName()) && ((float) Math.abs(currentTimeMillis - parseLong)) < ((float) (1000 * j)) * 0.9f) {
                                            C5968aa.m3810a(bufferedReader2);
                                            return false;
                                        }
                                    }
                                } else {
                                    arrayList.add(readLine);
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            C5968aa.m3810a(bufferedReader);
                            throw th;
                        }
                    } catch (Exception unused) {
                        arrayList.clear();
                        C5968aa.m3810a(bufferedReader2);
                        arrayList.add(str2);
                        bufferedWriter = new BufferedWriter(new FileWriter(file));
                        try {
                            while (r0.hasNext()) {
                            }
                            C5968aa.m3810a(bufferedWriter);
                            return true;
                        } catch (Throwable th2) {
                            th = th2;
                            C5968aa.m3810a(bufferedWriter);
                            throw th;
                        }
                    }
                }
            } catch (Exception unused2) {
                bufferedReader2 = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
                C5968aa.m3810a(bufferedReader);
                throw th;
            }
        } else if (!C5968aa.m3808a(file)) {
            return true;
        }
        arrayList.add(str2);
        try {
            bufferedWriter = new BufferedWriter(new FileWriter(file));
        } catch (IOException e) {
            e = e;
            bufferedWriter = null;
        } catch (Throwable th4) {
            th = th4;
            bufferedWriter = null;
            C5968aa.m3810a(bufferedWriter);
            throw th;
        }
        try {
            for (String str3 : arrayList) {
                bufferedWriter.write(str3);
                bufferedWriter.newLine();
                bufferedWriter.flush();
            }
        } catch (IOException e2) {
            e = e2;
            AbstractC5876b.m4138d(e.toString());
            C5968aa.m3810a(bufferedWriter);
            return true;
        }
        C5968aa.m3810a(bufferedWriter);
        return true;
    }
}
