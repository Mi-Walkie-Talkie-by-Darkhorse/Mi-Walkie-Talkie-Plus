package com.loopj.android.http;

import java.lang.ref.WeakReference;

/* compiled from: RequestHandle */
public class h {
    private final WeakReference<c> a;

    public h(c cVar) {
        this.a = new WeakReference<>(cVar);
    }

    public boolean a(boolean z) {
        c cVar = (c) this.a.get();
        return cVar == null || cVar.a(z);
    }

    public boolean a() {
        c cVar = (c) this.a.get();
        return cVar == null || cVar.b();
    }

    public boolean b() {
        c cVar = (c) this.a.get();
        return cVar == null || cVar.a();
    }

    public boolean c() {
        boolean z = b() || a();
        if (z) {
            this.a.clear();
        }
        return z;
    }
}
