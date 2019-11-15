package com.tencent.open.a;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.tencent.open.a.d.C0055d;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* compiled from: ProGuard */
public class b {
    private static SimpleDateFormat a = C0055d.a("yy.MM.dd.HH");
    private String b = FileTracerConfig.DEF_THREAD_NAME;
    private int c = Integer.MAX_VALUE;
    private int d = Integer.MAX_VALUE;
    private int e = 4096;
    private long f = FileTracerConfig.DEF_FLUSH_INTERVAL;
    private File g;
    private int h = 10;
    private String i = FileTracerConfig.DEF_TRACE_FILEEXT;
    private long j = FileTracerConfig.FOREVER;

    public b(File file, int i2, int i3, int i4, String str, long j2, int i5, String str2, long j3) {
        a(file);
        b(i2);
        a(i3);
        c(i4);
        a(str);
        a(j2);
        d(i5);
        b(str2);
        b(j3);
    }

    public File a() {
        return c(System.currentTimeMillis());
    }

    private File c(long j2) {
        File b2 = b();
        String str = "";
        try {
            return new File(b2, c(d(j2)));
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return b2;
        }
    }

    private String d(long j2) {
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(j2);
        return new SimpleDateFormat("yy.MM.dd.HH").format(instance.getTime());
    }

    private String c(String str) {
        return "com.tencent.mobileqq_connectSdk." + str + FileTracerConfig.DEF_TRACE_FILEEXT;
    }

    public File b() {
        File e2 = e();
        e2.mkdirs();
        return e2;
    }

    public String c() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public void a(int i2) {
        this.c = i2;
    }

    public void b(int i2) {
        this.d = i2;
    }

    public int d() {
        return this.e;
    }

    public void c(int i2) {
        this.e = i2;
    }

    public void a(long j2) {
        this.f = j2;
    }

    public File e() {
        return this.g;
    }

    public void a(File file) {
        this.g = file;
    }

    public int f() {
        return this.h;
    }

    public void d(int i2) {
        this.h = i2;
    }

    public void b(String str) {
        this.i = str;
    }

    public void b(long j2) {
        this.j = j2;
    }
}
