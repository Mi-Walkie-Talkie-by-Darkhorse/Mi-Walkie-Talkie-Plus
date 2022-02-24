package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.ak;
import com.xiaomi.push.service.ax;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;

/* loaded from: classes2.dex */
public abstract class ds extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    protected int f8858a;

    /* renamed from: a  reason: collision with other field name */
    protected Context f222a;

    public ds(Context context, int i) {
        this.f8858a = i;
        this.f222a = context;
    }

    public static void a(Context context, id idVar) {
        dl a2 = dm.a().m163a();
        String a3 = a2 == null ? "" : a2.a();
        if (!TextUtils.isEmpty(a3) && !TextUtils.isEmpty(idVar.a())) {
            a(context, idVar, a3);
        }
    }

    private static void a(Context context, id idVar, String str) {
        IOException e;
        BufferedOutputStream bufferedOutputStream;
        RandomAccessFile randomAccessFile;
        FileLock lock;
        File file;
        byte[] b2 = Cdo.b(str, jf.a(idVar));
        if (b2 != null && b2.length != 0) {
            synchronized (dp.f8854a) {
                FileLock fileLock = null;
                try {
                    try {
                        File file2 = new File(context.getExternalFilesDir(null), "push_cdata.lock");
                        aa.m65a(file2);
                        randomAccessFile = new RandomAccessFile(file2, "rw");
                        try {
                            lock = randomAccessFile.getChannel().lock();
                            try {
                                file = new File(context.getExternalFilesDir(null), "push_cdata.data");
                                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file, true));
                            } catch (IOException e2) {
                                e = e2;
                                bufferedOutputStream = null;
                            } catch (Throwable th) {
                                th = th;
                                bufferedOutputStream = null;
                            }
                        } catch (IOException e3) {
                            e = e3;
                            bufferedOutputStream = null;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedOutputStream = null;
                        }
                        try {
                            bufferedOutputStream.write(ae.a(b2.length));
                            bufferedOutputStream.write(b2);
                            bufferedOutputStream.flush();
                            file.setLastModified(0L);
                            if (lock != null && lock.isValid()) {
                                try {
                                    lock.release();
                                } catch (IOException unused) {
                                }
                            }
                            aa.a(bufferedOutputStream);
                        } catch (IOException e4) {
                            e = e4;
                            fileLock = lock;
                            try {
                                e.printStackTrace();
                                if (fileLock != null && fileLock.isValid()) {
                                    try {
                                        fileLock.release();
                                    } catch (IOException unused2) {
                                    }
                                }
                                aa.a(bufferedOutputStream);
                                aa.a(randomAccessFile);
                            } catch (Throwable th3) {
                                th = th3;
                                if (fileLock != null && fileLock.isValid()) {
                                    try {
                                        fileLock.release();
                                    } catch (IOException unused3) {
                                    }
                                }
                                aa.a(bufferedOutputStream);
                                aa.a(randomAccessFile);
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            fileLock = lock;
                            if (fileLock != null) {
                                fileLock.release();
                            }
                            aa.a(bufferedOutputStream);
                            aa.a(randomAccessFile);
                            throw th;
                        }
                    } catch (Throwable th5) {
                        throw th5;
                    }
                } catch (IOException e5) {
                    e = e5;
                    bufferedOutputStream = null;
                    randomAccessFile = null;
                } catch (Throwable th6) {
                    th = th6;
                    bufferedOutputStream = null;
                    randomAccessFile = null;
                }
                aa.a(randomAccessFile);
            }
        }
    }

    private String c() {
        return "dc_job_result_time_" + mo168a();
    }

    private String d() {
        return "dc_job_result_" + mo168a();
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public abstract hx mo168a();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.ak.a
    /* renamed from: a  reason: collision with other method in class */
    public boolean mo168a() {
        return Cdo.a(this.f222a, String.valueOf(mo168a()), this.f8858a);
    }

    public abstract String b();

    /* renamed from: b  reason: collision with other method in class */
    protected boolean m166b() {
        return true;
    }

    /* renamed from: c  reason: collision with other method in class */
    protected boolean m167c() {
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        String b2 = b();
        if (!TextUtils.isEmpty(b2)) {
            if (mo168a()) {
                b.m1a("DC run job mutual: " + mo168a());
                return;
            }
            dl a2 = dm.a().m163a();
            String a3 = a2 == null ? "" : a2.a();
            if (!TextUtils.isEmpty(a3) && m166b()) {
                if (m167c()) {
                    SharedPreferences sharedPreferences = this.f222a.getSharedPreferences("mipush_extra", 0);
                    if (bo.a(b2).equals(sharedPreferences.getString(d(), null))) {
                        long j = sharedPreferences.getLong(c(), 0L);
                        int a4 = ax.a(this.f222a).a(ia.DCJobUploadRepeatedInterval.a(), 604800);
                        if ((System.currentTimeMillis() - j) / 1000 >= this.f8858a) {
                            if ((System.currentTimeMillis() - j) / 1000 < a4) {
                                b2 = "same_" + j;
                            }
                        } else {
                            return;
                        }
                    }
                }
                id idVar = new id();
                idVar.a(b2);
                idVar.a(System.currentTimeMillis());
                idVar.a(mo168a());
                a(this.f222a, idVar, a3);
            }
        }
    }
}
