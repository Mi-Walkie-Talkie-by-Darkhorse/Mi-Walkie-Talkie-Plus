package com.ksyun.ks3.services;

import com.loopj.android.http.k;

/* compiled from: SyncHttpClientFactory */
public class i {
    private static k a;

    static k a() {
        if (a == null) {
            a = new k();
        }
        return a;
    }

    static k a(f fVar) {
        if (a == null) {
            a = new k();
            a.c(fVar.l());
            a.b(fVar.k());
            a.a(fVar.f());
            a.a(fVar.e());
            a.a(fVar.c(), fVar.d());
            if (fVar.i() != null && fVar.h() > 0) {
                a.a(fVar.g(), fVar.h(), fVar.i(), fVar.j());
            }
        }
        return a;
    }
}
