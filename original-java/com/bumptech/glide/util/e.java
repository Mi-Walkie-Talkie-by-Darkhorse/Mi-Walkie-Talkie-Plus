package com.bumptech.glide.util;

import android.support.annotation.Nullable;
import java.util.LinkedHashMap;
import java.util.Map.Entry;

/* compiled from: LruCache */
public class e<T, Y> {
    private final LinkedHashMap<T, Y> a = new LinkedHashMap<>(100, 0.75f, true);
    private final int b;
    private int c;
    private int d = 0;

    public e(int i) {
        this.b = i;
        this.c = i;
    }

    /* access modifiers changed from: protected */
    public int a(Y y) {
        return 1;
    }

    /* access modifiers changed from: protected */
    public void a(T t, Y y) {
    }

    public synchronized int b() {
        return this.d;
    }

    @Nullable
    public synchronized Y b(T t) {
        return this.a.get(t);
    }

    public synchronized Y b(T t, Y y) {
        Y put;
        if (a(y) >= this.c) {
            a(t, y);
            put = null;
        } else {
            put = this.a.put(t, y);
            if (y != null) {
                this.d += a(y);
            }
            if (put != null) {
                this.d -= a(put);
            }
            c();
        }
        return put;
    }

    @Nullable
    public synchronized Y c(T t) {
        Y remove;
        remove = this.a.remove(t);
        if (remove != null) {
            this.d -= a(remove);
        }
        return remove;
    }

    public void a() {
        b(0);
    }

    /* access modifiers changed from: protected */
    public synchronized void b(int i) {
        while (this.d > i) {
            Entry entry = (Entry) this.a.entrySet().iterator().next();
            Object value = entry.getValue();
            this.d -= a(value);
            Object key = entry.getKey();
            this.a.remove(key);
            a(key, value);
        }
    }

    private void c() {
        b(this.c);
    }
}
