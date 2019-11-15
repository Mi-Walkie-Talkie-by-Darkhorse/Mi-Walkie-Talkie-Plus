package com.bumptech.glide.load.engine.b;

import com.bumptech.glide.util.h;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: DiskCacheWriteLocker */
final class c {
    private final Map<String, a> a = new HashMap();
    private final b b = new b();

    /* compiled from: DiskCacheWriteLocker */
    private static class a {
        final Lock a = new ReentrantLock();
        int b;

        a() {
        }
    }

    /* compiled from: DiskCacheWriteLocker */
    private static class b {
        private final Queue<a> a = new ArrayDeque();

        b() {
        }

        /* access modifiers changed from: 0000 */
        public a a() {
            a aVar;
            synchronized (this.a) {
                aVar = (a) this.a.poll();
            }
            if (aVar == null) {
                return new a();
            }
            return aVar;
        }

        /* access modifiers changed from: 0000 */
        public void a(a aVar) {
            synchronized (this.a) {
                if (this.a.size() < 10) {
                    this.a.offer(aVar);
                }
            }
        }
    }

    c() {
    }

    /* access modifiers changed from: 0000 */
    public void a(String str) {
        a aVar;
        synchronized (this) {
            aVar = (a) this.a.get(str);
            if (aVar == null) {
                aVar = this.b.a();
                this.a.put(str, aVar);
            }
            aVar.b++;
        }
        aVar.a.lock();
    }

    /* access modifiers changed from: 0000 */
    public void b(String str) {
        a aVar;
        synchronized (this) {
            aVar = (a) h.a(this.a.get(str));
            if (aVar.b < 1) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.b);
            }
            aVar.b--;
            if (aVar.b == 0) {
                a aVar2 = (a) this.a.remove(str);
                if (!aVar2.equals(aVar)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + aVar2 + ", safeKey: " + str);
                }
                this.b.a(aVar2);
            }
        }
        aVar.a.unlock();
    }
}
