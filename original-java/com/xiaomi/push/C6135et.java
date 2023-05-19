package com.xiaomi.push;

import android.content.Context;
import android.net.NetworkInfo;

/* renamed from: com.xiaomi.push.et */
/* loaded from: classes2.dex */
public class C6135et {

    /* renamed from: a */
    private static volatile C6135et f21466a;

    /* renamed from: a */
    private AbstractC6136eu f21467a;

    private C6135et(Context context) {
        this.f21467a = C6131ep.m3072a(context);
    }

    /* renamed from: a */
    public static C6135et m3055a(Context context) {
        if (f21466a == null) {
            synchronized (C6135et.class) {
                if (f21466a == null) {
                    f21466a = new C6135et(context);
                }
            }
        }
        return f21466a;
    }

    /* renamed from: a */
    public long m3059a() {
        return this.f21467a.mo2992a();
    }

    /* renamed from: a */
    public AbstractC6136eu m3058a() {
        return this.f21467a;
    }

    /* renamed from: a */
    public void m3057a() {
    }

    /* renamed from: a */
    public void m3056a(long j) {
        this.f21467a.mo2989a(j);
    }

    /* renamed from: a */
    public void m3054a(NetworkInfo networkInfo) {
        this.f21467a.mo2986a(networkInfo);
    }

    /* renamed from: a */
    public void m3053a(String str) {
        this.f21467a.mo2985a(str);
    }

    /* renamed from: b */
    public void m3052b() {
        this.f21467a.mo2982b();
    }

    /* renamed from: c */
    public void m3051c() {
        this.f21467a.mo2979c();
    }

    /* renamed from: d */
    public void m3050d() {
        this.f21467a.mo2978d();
    }

    /* renamed from: e */
    public void m3049e() {
        this.f21467a.mo2991a();
    }
}
