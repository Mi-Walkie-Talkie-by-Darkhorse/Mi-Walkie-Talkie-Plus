package com.bumptech.glide.load.engine.b;

import android.annotation.SuppressLint;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.c;
import com.bumptech.glide.load.engine.b.h.a;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.util.e;

/* compiled from: LruResourceCache */
public class g extends e<c, q<?>> implements h {
    private a a;

    @Nullable
    public /* synthetic */ q a(c cVar) {
        return (q) super.c(cVar);
    }

    public /* bridge */ /* synthetic */ q b(c cVar, q qVar) {
        return (q) super.b(cVar, qVar);
    }

    public g(int i) {
        super(i);
    }

    public void a(a aVar) {
        this.a = aVar;
    }

    /* access modifiers changed from: protected */
    public void a(c cVar, q<?> qVar) {
        if (this.a != null) {
            this.a.b(qVar);
        }
    }

    /* access modifiers changed from: protected */
    public int a(q<?> qVar) {
        return qVar.d();
    }

    @SuppressLint({"InlinedApi"})
    public void a(int i) {
        if (i >= 40) {
            a();
        } else if (i >= 20) {
            b(b() / 2);
        }
    }
}
