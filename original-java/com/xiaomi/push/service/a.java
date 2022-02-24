package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.aa;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f9223a;

    /* renamed from: a  reason: collision with other field name */
    private Context f893a;
    private volatile String e;
    private volatile String f;

    /* renamed from: a  reason: collision with other field name */
    private final Object f894a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final Object f9224b = new Object();

    /* renamed from: a  reason: collision with other field name */
    private final String f895a = "mipush_region";

    /* renamed from: b  reason: collision with other field name */
    private final String f896b = "mipush_country_code";

    /* renamed from: c  reason: collision with root package name */
    private final String f9225c = "mipush_region.lock";
    private final String d = "mipush_country_code.lock";

    public a(Context context) {
        this.f893a = context;
    }

    public static a a(Context context) {
        if (f9223a == null) {
            synchronized (a.class) {
                if (f9223a == null) {
                    f9223a = new a(context);
                }
            }
        }
        return f9223a;
    }

    private String a(Context context, String str, String str2, Object obj) {
        Throwable th;
        RandomAccessFile randomAccessFile;
        Exception e;
        FileLock fileLock;
        File file = new File(context.getFilesDir(), str);
        FileLock fileLock2 = null;
        if (!file.exists()) {
            b.m1a("No ready file to get data from " + str);
            return null;
        }
        synchronized (obj) {
            try {
                File file2 = new File(context.getFilesDir(), str2);
                aa.m65a(file2);
                randomAccessFile = new RandomAccessFile(file2, "rw");
            } catch (Exception e2) {
                e = e2;
                randomAccessFile = null;
                fileLock = null;
            } catch (Throwable th2) {
                th = th2;
                randomAccessFile = null;
            }
            try {
                fileLock = randomAccessFile.getChannel().lock();
                try {
                    try {
                        String a2 = aa.a(file);
                        if (fileLock != null && fileLock.isValid()) {
                            try {
                                fileLock.release();
                            } catch (IOException e3) {
                                b.a(e3);
                            }
                        }
                        aa.a(randomAccessFile);
                        return a2;
                    } catch (Exception e4) {
                        e = e4;
                        b.a(e);
                        if (fileLock != null && fileLock.isValid()) {
                            try {
                                fileLock.release();
                            } catch (IOException e5) {
                                b.a(e5);
                            }
                        }
                        aa.a(randomAccessFile);
                        return null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileLock2 = fileLock;
                    if (fileLock2 != null && fileLock2.isValid()) {
                        try {
                            fileLock2.release();
                        } catch (IOException e6) {
                            b.a(e6);
                        }
                    }
                    aa.a(randomAccessFile);
                    throw th;
                }
            } catch (Exception e7) {
                e = e7;
                fileLock = null;
            } catch (Throwable th4) {
                th = th4;
                if (fileLock2 != null) {
                    fileLock2.release();
                }
                aa.a(randomAccessFile);
                throw th;
            }
        }
    }

    private void a(Context context, String str, String str2, String str3, Object obj) {
        RandomAccessFile randomAccessFile;
        Throwable th;
        Exception e;
        synchronized (obj) {
            FileLock fileLock = null;
            try {
                try {
                    File file = new File(context.getFilesDir(), str3);
                    aa.m65a(file);
                    randomAccessFile = new RandomAccessFile(file, "rw");
                    try {
                        try {
                            fileLock = randomAccessFile.getChannel().lock();
                            aa.a(new File(context.getFilesDir(), str2), str);
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

    public String a() {
        if (TextUtils.isEmpty(this.e)) {
            this.e = a(this.f893a, "mipush_region", "mipush_region.lock", this.f894a);
        }
        return this.e;
    }

    public void a(String str) {
        if (!TextUtils.equals(str, this.e)) {
            this.e = str;
            a(this.f893a, this.e, "mipush_region", "mipush_region.lock", this.f894a);
        }
    }

    public String b() {
        if (TextUtils.isEmpty(this.f)) {
            this.f = a(this.f893a, "mipush_country_code", "mipush_country_code.lock", this.f9224b);
        }
        return this.f;
    }

    public void b(String str) {
        if (!TextUtils.equals(str, this.f)) {
            this.f = str;
            a(this.f893a, this.f, "mipush_country_code", "mipush_country_code.lock", this.f9224b);
        }
    }
}
