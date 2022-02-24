package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.aa;
import com.xiaomi.push.hz;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class by implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f9305a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ hz f977a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public by(Context context, hz hzVar) {
        this.f9305a = context;
        this.f977a = hzVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        RandomAccessFile randomAccessFile;
        Throwable th;
        Exception e;
        synchronized (bx.f9304a) {
            FileLock fileLock = null;
            try {
                try {
                    File file = new File(this.f9305a.getFilesDir(), "tiny_data.lock");
                    aa.m65a(file);
                    randomAccessFile = new RandomAccessFile(file, "rw");
                    try {
                        try {
                            fileLock = randomAccessFile.getChannel().lock();
                            bx.c(this.f9305a, this.f977a);
                            if (fileLock != null && fileLock.isValid()) {
                                try {
                                    fileLock.release();
                                } catch (IOException e2) {
                                    b.a(e2);
                                }
                            }
                        } catch (Exception e3) {
                            e = e3;
                            b.a(e);
                            if (fileLock != null && fileLock.isValid()) {
                                try {
                                    fileLock.release();
                                } catch (IOException e4) {
                                    b.a(e4);
                                }
                            }
                            aa.a(randomAccessFile);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileLock != null && fileLock.isValid()) {
                            try {
                                fileLock.release();
                            } catch (IOException e5) {
                                b.a(e5);
                            }
                        }
                        aa.a(randomAccessFile);
                        throw th;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            } catch (Exception e6) {
                e = e6;
                randomAccessFile = null;
            } catch (Throwable th4) {
                th = th4;
                randomAccessFile = null;
                if (fileLock != null) {
                    fileLock.release();
                }
                aa.a(randomAccessFile);
                throw th;
            }
            aa.a(randomAccessFile);
        }
    }
}
