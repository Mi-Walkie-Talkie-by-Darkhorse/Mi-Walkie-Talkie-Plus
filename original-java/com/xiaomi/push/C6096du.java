package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.service.C6372ax;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.xiaomi.push.du */
/* loaded from: classes2.dex */
public class C6096du extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    private Context f21290a;

    /* renamed from: a */
    private SharedPreferences f21291a;

    /* renamed from: a */
    private C6372ax f21292a;

    public C6096du(Context context) {
        this.f21290a = context;
        this.f21291a = context.getSharedPreferences("mipush_extra", 0);
        this.f21292a = C6372ax.m1530a(context);
    }

    /* renamed from: a */
    private List<C6246id> m3341a(File file) {
        RandomAccessFile randomAccessFile;
        FileInputStream fileInputStream;
        InterfaceC6086dl m3369a = C6087dm.m3368a().m3369a();
        String mo3371a = m3369a == null ? "" : m3369a.mo3371a();
        FileLock fileLock = null;
        if (TextUtils.isEmpty(mo3371a)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        byte[] bArr = new byte[4];
        synchronized (C6090dp.f21281a) {
            try {
                File file2 = new File(this.f21290a.getExternalFilesDir(null), "push_cdata.lock");
                C5968aa.m3808a(file2);
                randomAccessFile = new RandomAccessFile(file2, "rw");
                try {
                    FileLock lock = randomAccessFile.getChannel().lock();
                    try {
                        fileInputStream = new FileInputStream(file);
                        while (fileInputStream.read(bArr) == 4) {
                            try {
                                int m3792a = C5972ae.m3792a(bArr);
                                byte[] bArr2 = new byte[m3792a];
                                if (fileInputStream.read(bArr2) != m3792a) {
                                    break;
                                }
                                byte[] m3364a = C6089do.m3364a(mo3371a, bArr2);
                                if (m3364a != null && m3364a.length != 0) {
                                    C6246id c6246id = new C6246id();
                                    C6278jf.m1932a(c6246id, m3364a);
                                    arrayList.add(c6246id);
                                    m3342a(c6246id);
                                }
                            } catch (Exception unused) {
                                fileLock = lock;
                                if (fileLock != null && fileLock.isValid()) {
                                    try {
                                        fileLock.release();
                                    } catch (IOException unused2) {
                                    }
                                }
                                C5968aa.m3810a(fileInputStream);
                                C5968aa.m3810a(randomAccessFile);
                                return arrayList;
                            } catch (Throwable th) {
                                th = th;
                                fileLock = lock;
                                if (fileLock != null && fileLock.isValid()) {
                                    try {
                                        fileLock.release();
                                    } catch (IOException unused3) {
                                    }
                                }
                                C5968aa.m3810a(fileInputStream);
                                C5968aa.m3810a(randomAccessFile);
                                throw th;
                            }
                        }
                        if (lock != null && lock.isValid()) {
                            try {
                                lock.release();
                            } catch (IOException unused4) {
                            }
                        }
                        C5968aa.m3810a(fileInputStream);
                    } catch (Exception unused5) {
                        fileInputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = null;
                    }
                } catch (Exception unused6) {
                    fileInputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = null;
                }
            } catch (Exception unused7) {
                randomAccessFile = null;
                fileInputStream = null;
            } catch (Throwable th4) {
                th = th4;
                randomAccessFile = null;
                fileInputStream = null;
            }
            C5968aa.m3810a(randomAccessFile);
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m3344a() {
        SharedPreferences.Editor edit = this.f21291a.edit();
        edit.putLong("last_upload_data_timestamp", System.currentTimeMillis() / 1000);
        edit.commit();
    }

    /* renamed from: a */
    private void m3342a(C6246id c6246id) {
        if (c6246id.f22165a != EnumC6239hx.AppInstallList || c6246id.f22166a.startsWith("same_")) {
            return;
        }
        SharedPreferences.Editor edit = this.f21291a.edit();
        edit.putLong("dc_job_result_time_4", c6246id.f22164a);
        edit.putString("dc_job_result_4", C6023bo.m3620a(c6246id.f22166a));
        edit.commit();
    }

    /* renamed from: a */
    private boolean m3343a() {
        if (C6013bi.m3659e(this.f21290a)) {
            return false;
        }
        if ((C6013bi.m3657g(this.f21290a) || C6013bi.m3658f(this.f21290a)) && !m3339c()) {
            return true;
        }
        return (C6013bi.m3656h(this.f21290a) && !m3340b()) || C6013bi.m3655i(this.f21290a);
    }

    /* renamed from: b */
    private boolean m3340b() {
        if (this.f21292a.m1531a(EnumC6243ia.Upload3GSwitch.m2484a(), true)) {
            return Math.abs((System.currentTimeMillis() / 1000) - this.f21291a.getLong("last_upload_data_timestamp", -1L)) > ((long) Math.max(86400, this.f21292a.m1534a(EnumC6243ia.Upload3GFrequency.m2484a(), 432000)));
        }
        return false;
    }

    /* renamed from: c */
    private boolean m3339c() {
        if (this.f21292a.m1531a(EnumC6243ia.Upload4GSwitch.m2484a(), true)) {
            return Math.abs((System.currentTimeMillis() / 1000) - this.f21291a.getLong("last_upload_data_timestamp", -1L)) > ((long) Math.max(86400, this.f21292a.m1534a(EnumC6243ia.Upload4GFrequency.m2484a(), 259200)));
        }
        return false;
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return "1";
    }

    @Override // java.lang.Runnable
    public void run() {
        File file = new File(this.f21290a.getExternalFilesDir(null), "push_cdata.data");
        if (!C6013bi.m3660d(this.f21290a)) {
            if (file.length() > 1863680) {
                file.delete();
            }
        } else if (!m3343a() && file.exists()) {
            List<C6246id> m3341a = m3341a(file);
            if (!C5973af.m3791a(m3341a)) {
                int size = m3341a.size();
                if (size > 4000) {
                    m3341a = m3341a.subList(size - 4000, size);
                }
                C6257io c6257io = new C6257io();
                c6257io.m2277a(m3341a);
                byte[] m3804a = C5968aa.m3804a(C6278jf.m1933a(c6257io));
                C6263iu c6263iu = new C6263iu("-1", false);
                c6263iu.m2176c(EnumC6248if.DataCollection.f22236a);
                c6263iu.m2183a(m3804a);
                InterfaceC6086dl m3369a = C6087dm.m3368a().m3369a();
                if (m3369a != null) {
                    m3369a.mo3370a(c6263iu, EnumC6237hv.Notification, null);
                }
                m3344a();
            }
            file.delete();
        }
    }
}
