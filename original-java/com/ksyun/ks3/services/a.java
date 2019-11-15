package com.ksyun.ks3.services;

import com.loopj.android.http.b;

/* compiled from: AsyncHttpClientFactory */
public class a {
    private static b a;

    static b a() {
        if (a == null) {
            a = new b();
        }
        return a;
    }

    static b a(f fVar) {
        if (a == null) {
            a = new b();
            a.c(fVar.l());
            a.b(fVar.k());
            a.a(fVar.f());
            a.a(fVar.e());
            a.a(fVar.m());
            a.a(fVar.c(), fVar.d());
            if (fVar.i() != null && fVar.h() > 0) {
                a.a(fVar.g(), fVar.h(), fVar.i(), fVar.j());
            }
        }
        return a;
    }
}
