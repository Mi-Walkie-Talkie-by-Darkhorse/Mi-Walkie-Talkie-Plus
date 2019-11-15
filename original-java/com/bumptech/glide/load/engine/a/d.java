package com.bumptech.glide.load.engine.a;

import com.bumptech.glide.load.engine.a.m;
import com.bumptech.glide.util.i;
import java.util.Queue;

/* compiled from: BaseKeyPool */
abstract class d<T extends m> {
    private final Queue<T> a = i.a(20);

    /* access modifiers changed from: protected */
    public abstract T b();

    d() {
    }

    /* access modifiers changed from: protected */
    public T c() {
        T t = (m) this.a.poll();
        if (t == null) {
            return b();
        }
        return t;
    }

    public void a(T t) {
        if (this.a.size() < 20) {
            this.a.offer(t);
        }
    }
}
