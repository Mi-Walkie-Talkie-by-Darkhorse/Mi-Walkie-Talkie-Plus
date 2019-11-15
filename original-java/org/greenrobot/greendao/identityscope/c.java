package org.greenrobot.greendao.identityscope;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: IdentityScopeObject */
public class c<K, T> implements a<K, T> {
    private final HashMap<K, Reference<T>> a = new HashMap<>();
    private final ReentrantLock b = new ReentrantLock();

    public T a(K k) {
        this.b.lock();
        try {
            Reference reference = (Reference) this.a.get(k);
            if (reference != null) {
                return reference.get();
            }
            return null;
        } finally {
            this.b.unlock();
        }
    }

    public T b(K k) {
        Reference reference = (Reference) this.a.get(k);
        if (reference != null) {
            return reference.get();
        }
        return null;
    }

    public void a(K k, T t) {
        this.b.lock();
        try {
            this.a.put(k, new WeakReference(t));
        } finally {
            this.b.unlock();
        }
    }

    public void b(K k, T t) {
        this.a.put(k, new WeakReference(t));
    }

    public boolean c(K k, T t) {
        this.b.lock();
        try {
            if (a(k) != t || t == null) {
                this.b.unlock();
                return false;
            }
            c(k);
            return true;
        } finally {
            this.b.unlock();
        }
    }

    public void c(K k) {
        this.b.lock();
        try {
            this.a.remove(k);
        } finally {
            this.b.unlock();
        }
    }

    public void a(Iterable<K> iterable) {
        this.b.lock();
        try {
            for (K remove : iterable) {
                this.a.remove(remove);
            }
        } finally {
            this.b.unlock();
        }
    }

    public void a() {
        this.b.lock();
        try {
            this.a.clear();
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
    }
}
