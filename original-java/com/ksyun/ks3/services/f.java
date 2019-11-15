package com.ksyun.ks3.services;

import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: Ks3ClientConfiguration */
public class f {
    private static f q = null;
    private ExecutorService a;
    private String b = null;
    private String c = null;
    private String d = null;
    private String e = null;
    private String f = null;
    private String g = null;
    private int h = -1;
    private int i = 0;
    private int j = 0;
    private int k = 0;
    private int l = 0;
    private int m = 0;
    private boolean n = true;
    private int o;
    private int p;
    private Boolean r = Boolean.valueOf(false);

    public Boolean a() {
        return this.r;
    }

    private f() {
    }

    public static f b() {
        if (q == null) {
            q = new f();
            q.f(BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT);
            q.e(50000);
            q.c(10);
            q.b((String) null);
            q.c((String) null);
            q.d((String) null);
            q.d(-1);
            q.a(0);
            q.b(5000);
            q.a("ks3-android-sdk");
            q.a(Executors.newCachedThreadPool());
        }
        return q;
    }

    public int c() {
        return this.o;
    }

    public void a(int i2) {
        this.o = i2;
    }

    public int d() {
        return this.p;
    }

    public void b(int i2) {
        this.p = i2;
    }

    public int e() {
        return this.i;
    }

    public void c(int i2) {
        this.i = i2;
    }

    public String f() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public String g() {
        return this.c;
    }

    public void b(String str) {
        this.c = str;
    }

    public int h() {
        return this.h;
    }

    public void d(int i2) {
        this.h = i2;
    }

    public String i() {
        return this.d;
    }

    public void c(String str) {
        this.d = str;
    }

    public String j() {
        return this.e;
    }

    public void d(String str) {
        this.e = str;
    }

    public int k() {
        return this.j;
    }

    public void e(int i2) {
        this.j = i2;
    }

    public int l() {
        return this.k;
    }

    public void f(int i2) {
        this.k = i2;
    }

    public ExecutorService m() {
        return this.a;
    }

    public void a(ExecutorService executorService) {
        this.a = executorService;
    }
}
