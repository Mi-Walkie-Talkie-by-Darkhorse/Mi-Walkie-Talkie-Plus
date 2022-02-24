package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.push.ak;
import com.xiaomi.push.service.ax;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class du extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    private Context f8859a;

    /* renamed from: a  reason: collision with other field name */
    private SharedPreferences f223a;

    /* renamed from: a  reason: collision with other field name */
    private ax f224a;

    public du(Context context) {
        this.f8859a = context;
        this.f223a = context.getSharedPreferences("mipush_extra", 0);
        this.f224a = ax.a(context);
    }

    private List<id> a(File file) {
        FileInputStream fileInputStream;
        RandomAccessFile randomAccessFile;
        Throwable th;
        dl a2 = dm.a().m163a();
        String a3 = a2 == null ? "" : a2.a();
        FileLock fileLock = null;
        if (TextUtils.isEmpty(a3)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        byte[] bArr = new byte[4];
        synchronized (dp.f8854a) {
            try {
                File file2 = new File(this.f8859a.getExternalFilesDir(null), "push_cdata.lock");
                aa.m65a(file2);
                randomAccessFile = new RandomAccessFile(file2, "rw");
                try {
                    FileLock lock = randomAccessFile.getChannel().lock();
                    try {
                        fileInputStream = new FileInputStream(file);
                        while (fileInputStream.read(bArr) == 4) {
                            try {
                                int a4 = ae.a(bArr);
                                byte[] bArr2 = new byte[a4];
                                if (fileInputStream.read(bArr2) != a4) {
                                    break;
                                }
                                byte[] a5 = Cdo.a(a3, bArr2);
                                if (!(a5 == null || a5.length == 0)) {
                                    id idVar = new id();
                                    jf.a(idVar, a5);
                                    arrayList.add(idVar);
                                    a(idVar);
                                }
                            } catch (Exception unused) {
                                fileLock = lock;
                                if (fileLock != null && fileLock.isValid()) {
                                    try {
                                        fileLock.release();
                                    } catch (IOException unused2) {
                                    }
                                }
                                aa.a(fileInputStream);
                                aa.a(randomAccessFile);
                                return arrayList;
                            } catch (Throwable th2) {
                                th = th2;
                                fileLock = lock;
                                if (fileLock != null && fileLock.isValid()) {
                                    try {
                                        fileLock.release();
                                    } catch (IOException unused3) {
                                    }
                                }
                                aa.a(fileInputStream);
                                aa.a(randomAccessFile);
                                throw th;
                            }
                        }
                        if (lock != null && lock.isValid()) {
                            try {
                                lock.release();
                            } catch (IOException unused4) {
                            }
                        }
                        aa.a(fileInputStream);
                    } catch (Exception unused5) {
                        fileInputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        fileInputStream = null;
                    }
                } catch (Exception unused6) {
                    fileInputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    fileInputStream = null;
                }
            } catch (Exception unused7) {
                randomAccessFile = null;
                fileInputStream = null;
            } catch (Throwable th5) {
                th = th5;
                randomAccessFile = null;
                fileInputStream = null;
            }
            aa.a(randomAccessFile);
        }
        return arrayList;
    }

    private void a() {
        SharedPreferences.Editor edit = this.f223a.edit();
        edit.putLong("last_upload_data_timestamp", System.currentTimeMillis() / 1000);
        edit.commit();
    }

    private void a(id idVar) {
        if (idVar.f518a == hx.AppInstallList && !idVar.f519a.startsWith("same_")) {
            SharedPreferences.Editor edit = this.f223a.edit();
            edit.putLong("dc_job_result_time_4", idVar.f517a);
            edit.putString("dc_job_result_4", bo.a(idVar.f519a));
            edit.commit();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    private boolean m169a() {
        if (bi.e(this.f8859a)) {
            return false;
        }
        if ((bi.g(this.f8859a) || bi.f(this.f8859a)) && !c()) {
            return true;
        }
        return (bi.h(this.f8859a) && !b()) || bi.i(this.f8859a);
    }

    private boolean b() {
        if (!this.f224a.a(ia.Upload3GSwitch.a(), true)) {
            return false;
        }
        return Math.abs((System.currentTimeMillis() / 1000) - this.f223a.getLong("last_upload_data_timestamp", -1L)) > ((long) Math.max(86400, this.f224a.a(ia.Upload3GFrequency.a(), 432000)));
    }

    private boolean c() {
        if (!this.f224a.a(ia.Upload4GSwitch.a(), true)) {
            return false;
        }
        return Math.abs((System.currentTimeMillis() / 1000) - this.f223a.getLong("last_upload_data_timestamp", -1L)) > ((long) Math.max(86400, this.f224a.a(ia.Upload4GFrequency.a(), 259200)));
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public String mo168a() {
        return "1";
    }

    @Override // java.lang.Runnable
    public void run() {
        File file = new File(this.f8859a.getExternalFilesDir(null), "push_cdata.data");
        if (!bi.d(this.f8859a)) {
            if (file.length() > 1863680) {
                file.delete();
            }
        } else if (!m169a() && file.exists()) {
            List<id> a2 = a(file);
            if (!af.a(a2)) {
                int size = a2.size();
                if (size > 4000) {
                    a2 = a2.subList(size - 4000, size);
                }
                io ioVar = new io();
                ioVar.a(a2);
                byte[] a3 = aa.a(jf.a(ioVar));
                iu iuVar = new iu("-1", false);
                iuVar.c(Cif.DataCollection.f527a);
                iuVar.a(a3);
                dl a4 = dm.a().m163a();
                if (a4 != null) {
                    a4.a(iuVar, hv.Notification, null);
                }
                a();
            }
            file.delete();
        }
    }
}
