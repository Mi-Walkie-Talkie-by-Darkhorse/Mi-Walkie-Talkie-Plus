package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.C6411bx;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.ArrayList;

/* renamed from: com.xiaomi.push.hr */
/* loaded from: classes2.dex */
public class C6232hr {

    /* renamed from: a */
    private static boolean f21909a = false;

    /* renamed from: com.xiaomi.push.hr$a */
    /* loaded from: classes2.dex */
    static class RunnableC6233a implements Runnable {

        /* renamed from: a */
        private Context f21910a;

        /* renamed from: a */
        private InterfaceC6236hu f21911a;

        public RunnableC6233a(Context context, InterfaceC6236hu interfaceC6236hu) {
            this.f21911a = interfaceC6236hu;
            this.f21910a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            C6232hr.m2578c(this.f21910a, this.f21911a);
        }
    }

    /* renamed from: a */
    private static void m2583a(Context context) {
        File file = new File(context.getFilesDir() + "/tdReadTemp");
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    /* renamed from: a */
    public static void m2582a(Context context, InterfaceC6236hu interfaceC6236hu) {
        C5978ak.m3784a(context).m3775a(new RunnableC6233a(context, interfaceC6236hu));
    }

    /* renamed from: a */
    private static void m2581a(Context context, InterfaceC6236hu interfaceC6236hu, File file, byte[] bArr) {
        String str;
        int m3792a;
        ArrayList arrayList = new ArrayList();
        byte[] bArr2 = new byte[4];
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
                loop0: while (true) {
                    int i = 0;
                    int i2 = 0;
                    while (true) {
                        try {
                            int read = bufferedInputStream2.read(bArr2);
                            if (read == -1) {
                                break loop0;
                            } else if (read == 4) {
                                m3792a = C5972ae.m3792a(bArr2);
                                if (m3792a < 1 || m3792a > 10240) {
                                    break loop0;
                                }
                                byte[] bArr3 = new byte[m3792a];
                                int read2 = bufferedInputStream2.read(bArr3);
                                if (read2 != m3792a) {
                                    str = "TinyData read from cache file failed cause buffer size not equal length. size:" + read2 + "__length:" + m3792a;
                                    break loop0;
                                }
                                byte[] m2666a = C6210h.m2666a(bArr, bArr3);
                                if (m2666a != null && m2666a.length != 0) {
                                    C6241hz c6241hz = new C6241hz();
                                    C6278jf.m1932a(c6241hz, m2666a);
                                    c6241hz.m2543a("item_size", String.valueOf(m2666a.length));
                                    arrayList.add(c6241hz);
                                    i++;
                                    i2 += m2666a.length;
                                    if (i >= 8 || i2 >= 10240) {
                                    }
                                }
                                AbstractC5876b.m4138d("TinyData read from cache file failed cause decrypt fail");
                            } else {
                                str = "TinyData read from cache file failed cause lengthBuffer error. size:" + read;
                                break loop0;
                            }
                        } catch (Exception e) {
                            e = e;
                            bufferedInputStream = bufferedInputStream2;
                            AbstractC5876b.m4143a(e);
                            C5968aa.m3810a(bufferedInputStream);
                            return;
                        } catch (Throwable th) {
                            th = th;
                            bufferedInputStream = bufferedInputStream2;
                            C5968aa.m3810a(bufferedInputStream);
                            throw th;
                        }
                    }
                    C6234hs.m2576a(context, interfaceC6236hu, arrayList);
                    arrayList.clear();
                }
                str = "TinyData read from cache file failed cause lengthBuffer < 1 || too big. length:" + m3792a;
                AbstractC5876b.m4138d(str);
                C6234hs.m2576a(context, interfaceC6236hu, arrayList);
                if (file != null && file.exists() && !file.delete()) {
                    AbstractC5876b.m4147a("TinyData delete reading temp file failed");
                }
                C5968aa.m3810a(bufferedInputStream2);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* renamed from: b */
    private static void m2580b(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 4).edit();
        edit.putLong("last_tiny_data_upload_timestamp", System.currentTimeMillis() / 1000);
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bb  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m2578c(Context context, InterfaceC6236hu interfaceC6236hu) {
        RandomAccessFile randomAccessFile;
        File file;
        if (f21909a) {
            AbstractC5876b.m4147a("TinyData extractTinyData is running");
            return;
        }
        f21909a = true;
        File file2 = new File(context.getFilesDir(), "tiny_data.data");
        if (!file2.exists()) {
            AbstractC5876b.m4147a("TinyData no ready file to get data.");
            return;
        }
        m2583a(context);
        byte[] m1413a = C6411bx.m1413a(context);
        FileLock fileLock = null;
        try {
            try {
                File file3 = new File(context.getFilesDir(), "tiny_data.lock");
                C5968aa.m3808a(file3);
                randomAccessFile = new RandomAccessFile(file3, "rw");
            } catch (Exception e) {
                e = e;
                randomAccessFile = null;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = null;
                if (fileLock != null) {
                    try {
                        fileLock.release();
                    } catch (IOException e2) {
                        AbstractC5876b.m4143a(e2);
                    }
                }
                C5968aa.m3810a(randomAccessFile);
                throw th;
            }
            try {
                fileLock = randomAccessFile.getChannel().lock();
                file2.renameTo(new File(context.getFilesDir() + "/tdReadTemp/tiny_data.data"));
                if (fileLock != null && fileLock.isValid()) {
                    try {
                        fileLock.release();
                    } catch (IOException e3) {
                        e = e3;
                        AbstractC5876b.m4143a(e);
                        C5968aa.m3810a(randomAccessFile);
                        file = new File(context.getFilesDir() + "/tdReadTemp/tiny_data.data");
                        if (file.exists()) {
                        }
                    }
                }
            } catch (Exception e4) {
                e = e4;
                AbstractC5876b.m4143a(e);
                if (fileLock != null && fileLock.isValid()) {
                    try {
                        fileLock.release();
                    } catch (IOException e5) {
                        e = e5;
                        AbstractC5876b.m4143a(e);
                        C5968aa.m3810a(randomAccessFile);
                        file = new File(context.getFilesDir() + "/tdReadTemp/tiny_data.data");
                        if (file.exists()) {
                        }
                    }
                }
                C5968aa.m3810a(randomAccessFile);
                file = new File(context.getFilesDir() + "/tdReadTemp/tiny_data.data");
                if (file.exists()) {
                }
            }
            C5968aa.m3810a(randomAccessFile);
            file = new File(context.getFilesDir() + "/tdReadTemp/tiny_data.data");
            if (file.exists()) {
                AbstractC5876b.m4147a("TinyData no ready file to get data.");
                return;
            }
            m2581a(context, interfaceC6236hu, file, m1413a);
            C6231hq.m2584a(false);
            m2580b(context);
            f21909a = false;
        } catch (Throwable th2) {
            th = th2;
            if (fileLock != null && fileLock.isValid()) {
                fileLock.release();
            }
            C5968aa.m3810a(randomAccessFile);
            throw th;
        }
    }
}
