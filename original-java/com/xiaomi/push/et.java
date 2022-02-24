package com.xiaomi.push;

import android.content.Context;
import android.net.NetworkInfo;

/* loaded from: classes2.dex */
public class et {

    /* renamed from: a  reason: collision with root package name */
    private static volatile et f8914a;

    /* renamed from: a  reason: collision with other field name */
    private eu f312a;

    private et(Context context) {
        this.f312a = ep.a(context);
    }

    public static et a(Context context) {
        if (f8914a == null) {
            synchronized (et.class) {
                if (f8914a == null) {
                    f8914a = new et(context);
                }
            }
        }
        return f8914a;
    }

    public long a() {
        return this.f312a.m240a();
    }

    /* renamed from: a  reason: collision with other method in class */
    public eu m236a() {
        return this.f312a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m237a() {
    }

    public void a(long j) {
        this.f312a.mo260a(j);
    }

    public void a(NetworkInfo networkInfo) {
        this.f312a.a(networkInfo);
    }

    public void a(String str) {
        this.f312a.mo255a(str);
    }

    public void b() {
        this.f312a.mo242b();
    }

    public void c() {
        this.f312a.mo256c();
    }

    public void d() {
        this.f312a.mo257d();
    }

    public void e() {
        this.f312a.m241a();
    }
}
