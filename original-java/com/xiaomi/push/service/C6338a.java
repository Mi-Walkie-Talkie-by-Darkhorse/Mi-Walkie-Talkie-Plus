package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5968aa;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;

/* renamed from: com.xiaomi.push.service.a */
/* loaded from: classes2.dex */
public class C6338a {

    /* renamed from: a */
    private static volatile C6338a f22927a;

    /* renamed from: a */
    private Context f22928a;

    /* renamed from: e */
    private volatile String f22935e;

    /* renamed from: f */
    private volatile String f22936f;

    /* renamed from: a */
    private final Object f22929a = new Object();

    /* renamed from: b */
    private final Object f22931b = new Object();

    /* renamed from: a */
    private final String f22930a = "mipush_region";

    /* renamed from: b */
    private final String f22932b = "mipush_country_code";

    /* renamed from: c */
    private final String f22933c = "mipush_region.lock";

    /* renamed from: d */
    private final String f22934d = "mipush_country_code.lock";

    public C6338a(Context context) {
        this.f22928a = context;
    }

    /* renamed from: a */
    public static C6338a m1718a(Context context) {
        if (f22927a == null) {
            synchronized (C6338a.class) {
                if (f22927a == null) {
                    f22927a = new C6338a(context);
                }
            }
        }
        return f22927a;
    }

    /* renamed from: a */
    private String m1717a(Context context, String str, String str2, Object obj) {
        RandomAccessFile randomAccessFile;
        FileLock fileLock;
        File file = new File(context.getFilesDir(), str);
        FileLock fileLock2 = null;
        if (!file.exists()) {
            AbstractC5876b.m4147a("No ready file to get data from " + str);
            return null;
        }
        synchronized (obj) {
            try {
                File file2 = new File(context.getFilesDir(), str2);
                C5968aa.m3808a(file2);
                randomAccessFile = new RandomAccessFile(file2, "rw");
                try {
                    fileLock = randomAccessFile.getChannel().lock();
                } catch (Exception e) {
                    e = e;
                    fileLock = null;
                } catch (Throwable th) {
                    th = th;
                    if (fileLock2 != null) {
                        try {
                            fileLock2.release();
                        } catch (IOException e2) {
                            AbstractC5876b.m4143a(e2);
                        }
                    }
                    C5968aa.m3810a(randomAccessFile);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                randomAccessFile = null;
                fileLock = null;
            } catch (Throwable th2) {
                th = th2;
                randomAccessFile = null;
            }
            try {
                try {
                    String m3809a = C5968aa.m3809a(file);
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException e4) {
                            AbstractC5876b.m4143a(e4);
                        }
                    }
                    C5968aa.m3810a(randomAccessFile);
                    return m3809a;
                } catch (Throwable th3) {
                    th = th3;
                    fileLock2 = fileLock;
                    if (fileLock2 != null && fileLock2.isValid()) {
                        fileLock2.release();
                    }
                    C5968aa.m3810a(randomAccessFile);
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
                AbstractC5876b.m4143a(e);
                if (fileLock != null && fileLock.isValid()) {
                    try {
                        fileLock.release();
                    } catch (IOException e6) {
                        AbstractC5876b.m4143a(e6);
                    }
                }
                C5968aa.m3810a(randomAccessFile);
                return null;
            }
        }
    }

    /* renamed from: a */
    private void m1716a(Context context, String str, String str2, String str3, Object obj) {
        RandomAccessFile randomAccessFile;
        synchronized (obj) {
            FileLock fileLock = null;
            try {
                try {
                    File file = new File(context.getFilesDir(), str3);
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
                        C5968aa.m3806a(new File(context.getFilesDir(), str2), str);
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

    /* renamed from: a */
    public String m1719a() {
        if (TextUtils.isEmpty(this.f22935e)) {
            this.f22935e = m1717a(this.f22928a, "mipush_region", "mipush_region.lock", this.f22929a);
        }
        return this.f22935e;
    }

    /* renamed from: a */
    public void m1715a(String str) {
        if (TextUtils.equals(str, this.f22935e)) {
            return;
        }
        this.f22935e = str;
        m1716a(this.f22928a, this.f22935e, "mipush_region", "mipush_region.lock", this.f22929a);
    }

    /* renamed from: b */
    public String m1714b() {
        if (TextUtils.isEmpty(this.f22936f)) {
            this.f22936f = m1717a(this.f22928a, "mipush_country_code", "mipush_country_code.lock", this.f22931b);
        }
        return this.f22936f;
    }

    /* renamed from: b */
    public void m1713b(String str) {
        if (TextUtils.equals(str, this.f22936f)) {
            return;
        }
        this.f22936f = str;
        m1716a(this.f22928a, this.f22936f, "mipush_country_code", "mipush_country_code.lock", this.f22931b);
    }
}
