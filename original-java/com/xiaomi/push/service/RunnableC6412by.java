package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5968aa;
import com.xiaomi.push.C6241hz;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.by */
/* loaded from: classes2.dex */
public class RunnableC6412by implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f23144a;

    /* renamed from: a */
    final /* synthetic */ C6241hz f23145a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6412by(Context context, C6241hz c6241hz) {
        this.f23144a = context;
        this.f23145a = c6241hz;
    }

    @Override // java.lang.Runnable
    public void run() {
        RandomAccessFile randomAccessFile;
        synchronized (C6411bx.f23143a) {
            FileLock fileLock = null;
            try {
                try {
                    File file = new File(this.f23144a.getFilesDir(), "tiny_data.lock");
                    C5968aa.m3808a(file);
                    randomAccessFile = new RandomAccessFile(file, "rw");
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
                    try {
                        fileLock = randomAccessFile.getChannel().lock();
                        C6411bx.m1409c(this.f23144a, this.f23145a);
                        if (fileLock != null && fileLock.isValid()) {
                            try {
                                fileLock.release();
                            } catch (IOException e3) {
                                AbstractC5876b.m4143a(e3);
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileLock != null && fileLock.isValid()) {
                            fileLock.release();
                        }
                        C5968aa.m3810a(randomAccessFile);
                        throw th;
                    }
                } catch (Exception e4) {
                    e = e4;
                    AbstractC5876b.m4143a(e);
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException e5) {
                            AbstractC5876b.m4143a(e5);
                        }
                    }
                    C5968aa.m3810a(randomAccessFile);
                }
                C5968aa.m3810a(randomAccessFile);
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
