package org.greenrobot.greendao.identityscope;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.ReentrantLock;
import org.greenrobot.greendao.b.c;

/* compiled from: IdentityScopeLong */
public class b<T> implements a<Long, T> {
    private final c<Reference<T>> a = new c<>();
    private final ReentrantLock b = new ReentrantLock();

    public T a(Long l) {
        return a(l.longValue());
    }

    public T b(Long l) {
        return b(l.longValue());
    }

    public T a(long j) {
        this.b.lock();
        try {
            Reference reference = (Reference) this.a.a(j);
            if (reference != null) {
                return reference.get();
            }
            return null;
        } finally {
            this.b.unlock();
        }
    }

    public T b(long j) {
        Reference reference = (Reference) this.a.a(j);
        if (reference != null) {
            return reference.get();
        }
        return null;
    }

    public void a(Long l, T t) {
        a(l.longValue(), t);
    }

    public void b(Long l, T t) {
        b(l.longValue(), t);
    }

    public void a(long j, T t) {
        this.b.lock();
        try {
            this.a.a(j, new WeakReference(t));
        } finally {
            this.b.unlock();
        }
    }

    public void b(long j, T t) {
        this.a.a(j, new WeakReference(t));
    }

    public boolean c(Long l, T t) {
        this.b.lock();
        try {
            if (a(l) != t || t == null) {
                this.b.unlock();
                return false;
            }
            c(l);
            return true;
        } finally {
            this.b.unlock();
        }
    }

    public void c(Long l) {
        this.b.lock();
        try {
            this.a.b(l.longValue());
        } finally {
            this.b.unlock();
        }
    }

    public void a(Iterable<Long> iterable) {
        this.b.lock();
        try {
            for (Long longValue : iterable) {
                this.a.b(longValue.longValue());
            }
        } finally {
            this.b.unlock();
        }
    }

    public void a() {
        this.b.lock();
        try {
            this.a.a();
        } finally {
            this.b.unlock();
        }
    }

    public void b() {
        this.b.lock();
    }

    public void c() {
        this.b.unlock();
    }

    public void a(int i) {
        this.a.b(i);
    }
}
