package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.service.C6372ax;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;

/* renamed from: com.xiaomi.push.ds */
/* loaded from: classes2.dex */
public abstract class AbstractC6094ds extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    protected int f21288a;

    /* renamed from: a */
    protected Context f21289a;

    public AbstractC6094ds(Context context, int i) {
        this.f21288a = i;
        this.f21289a = context;
    }

    /* renamed from: a */
    public static void m3352a(Context context, C6246id c6246id) {
        InterfaceC6086dl m3369a = C6087dm.m3368a().m3369a();
        String mo3371a = m3369a == null ? "" : m3369a.mo3371a();
        if (TextUtils.isEmpty(mo3371a) || TextUtils.isEmpty(c6246id.m2477a())) {
            return;
        }
        m3351a(context, c6246id, mo3371a);
    }

    /* renamed from: a */
    private static void m3351a(Context context, C6246id c6246id, String str) {
        BufferedOutputStream bufferedOutputStream;
        RandomAccessFile randomAccessFile;
        byte[] m3362b = C6089do.m3362b(str, C6278jf.m1933a(c6246id));
        if (m3362b == null || m3362b.length == 0) {
            return;
        }
        synchronized (C6090dp.f21281a) {
            FileLock fileLock = null;
            try {
                try {
                    File file = new File(context.getExternalFilesDir(null), "push_cdata.lock");
                    C5968aa.m3808a(file);
                    randomAccessFile = new RandomAccessFile(file, "rw");
                    try {
                        FileLock lock = randomAccessFile.getChannel().lock();
                        try {
                            File file2 = new File(context.getExternalFilesDir(null), "push_cdata.data");
                            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2, true));
                            try {
                                bufferedOutputStream.write(C5972ae.m3793a(m3362b.length));
                                bufferedOutputStream.write(m3362b);
                                bufferedOutputStream.flush();
                                file2.setLastModified(0L);
                                if (lock != null && lock.isValid()) {
                                    try {
                                        lock.release();
                                    } catch (IOException unused) {
                                    }
                                }
                                C5968aa.m3810a(bufferedOutputStream);
                            } catch (IOException e) {
                                e = e;
                                fileLock = lock;
                                try {
                                    e.printStackTrace();
                                    if (fileLock != null && fileLock.isValid()) {
                                        try {
                                            fileLock.release();
                                        } catch (IOException unused2) {
                                        }
                                    }
                                    C5968aa.m3810a(bufferedOutputStream);
                                    C5968aa.m3810a(randomAccessFile);
                                } catch (Throwable th) {
                                    th = th;
                                    if (fileLock != null && fileLock.isValid()) {
                                        try {
                                            fileLock.release();
                                        } catch (IOException unused3) {
                                        }
                                    }
                                    C5968aa.m3810a(bufferedOutputStream);
                                    C5968aa.m3810a(randomAccessFile);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                fileLock = lock;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                C5968aa.m3810a(bufferedOutputStream);
                                C5968aa.m3810a(randomAccessFile);
                                throw th;
                            }
                        } catch (IOException e2) {
                            e = e2;
                            bufferedOutputStream = null;
                        } catch (Throwable th3) {
                            th = th3;
                            bufferedOutputStream = null;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        bufferedOutputStream = null;
                    } catch (Throwable th4) {
                        th = th4;
                        bufferedOutputStream = null;
                    }
                } catch (IOException e4) {
                    e = e4;
                    bufferedOutputStream = null;
                    randomAccessFile = null;
                } catch (Throwable th5) {
                    th = th5;
                    bufferedOutputStream = null;
                    randomAccessFile = null;
                }
                C5968aa.m3810a(randomAccessFile);
            } catch (Throwable th6) {
                throw th6;
            }
        }
    }

    /* renamed from: c */
    private String m3349c() {
        return "dc_job_result_time_" + mo1397a();
    }

    /* renamed from: d */
    private String m3347d() {
        return "dc_job_result_" + mo1397a();
    }

    /* renamed from: a */
    public abstract EnumC6239hx mo3346a();

    /* renamed from: a */
    protected boolean m3353a() {
        return C6089do.m3365a(this.f21289a, String.valueOf(mo1397a()), this.f21288a);
    }

    /* renamed from: b */
    public abstract String mo3345b();

    /* renamed from: b */
    protected boolean m3350b() {
        return true;
    }

    /* renamed from: c */
    protected boolean m3348c() {
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        String mo3345b = mo3345b();
        if (TextUtils.isEmpty(mo3345b)) {
            return;
        }
        if (m3353a()) {
            AbstractC5876b.m4147a("DC run job mutual: " + mo1397a());
            return;
        }
        InterfaceC6086dl m3369a = C6087dm.m3368a().m3369a();
        String mo3371a = m3369a == null ? "" : m3369a.mo3371a();
        if (!TextUtils.isEmpty(mo3371a) && m3350b()) {
            if (m3348c()) {
                SharedPreferences sharedPreferences = this.f21289a.getSharedPreferences("mipush_extra", 0);
                if (C6023bo.m3620a(mo3345b).equals(sharedPreferences.getString(m3347d(), null))) {
                    long j = sharedPreferences.getLong(m3349c(), 0L);
                    int m1534a = C6372ax.m1530a(this.f21289a).m1534a(EnumC6243ia.DCJobUploadRepeatedInterval.m2484a(), 604800);
                    if ((System.currentTimeMillis() - j) / 1000 < this.f21288a) {
                        return;
                    }
                    if ((System.currentTimeMillis() - j) / 1000 < m1534a) {
                        mo3345b = "same_" + j;
                    }
                }
            }
            C6246id c6246id = new C6246id();
            c6246id.m2470a(mo3345b);
            c6246id.m2474a(System.currentTimeMillis());
            c6246id.m2473a(mo3346a());
            m3351a(this.f21289a, c6246id, mo3371a);
        }
    }
}
