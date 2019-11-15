package com.bumptech.glide.load.engine;

import android.os.Looper;
import android.os.MessageQueue.IdleHandler;
import android.support.v4.util.Pools.Pool;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.b.a.C0016a;
import com.bumptech.glide.util.a.a.C0023a;
import com.bumptech.glide.util.i;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.crypto.tls.CipherSuite;

/* compiled from: Engine */
public class h implements com.bumptech.glide.load.engine.b.h.a, j, a {
    private final Map<com.bumptech.glide.load.c, i<?>> a;
    private final l b;
    private final com.bumptech.glide.load.engine.b.h c;
    private final b d;
    private final Map<com.bumptech.glide.load.c, WeakReference<m<?>>> e;
    private final t f;
    private final c g;
    private final a h;
    private ReferenceQueue<m<?>> i;

    /* compiled from: Engine */
    static class a {
        final d a;
        final Pool<DecodeJob<?>> b = com.bumptech.glide.util.a.a.a((int) CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, (C0023a<T>) new C0023a<DecodeJob<?>>() {
            /* renamed from: a */
            public DecodeJob<?> b() {
                return new DecodeJob<>(a.this.a, a.this.b);
            }
        });
        private int c;

        a(d dVar) {
            this.a = dVar;
        }

        /* access modifiers changed from: 0000 */
        public <R> DecodeJob<R> a(com.bumptech.glide.e eVar, Object obj, k kVar, com.bumptech.glide.load.c cVar, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, g gVar, Map<Class<?>, com.bumptech.glide.load.h<?>> map, boolean z, boolean z2, boolean z3, com.bumptech.glide.load.e eVar2, a<R> aVar) {
            DecodeJob decodeJob = (DecodeJob) this.b.acquire();
            int i3 = this.c;
            this.c = i3 + 1;
            return decodeJob.a(eVar, obj, kVar, cVar, i, i2, cls, cls2, priority, gVar, map, z, z2, z3, eVar2, aVar, i3);
        }
    }

    /* compiled from: Engine */
    static class b {
        final com.bumptech.glide.load.engine.c.a a;
        final com.bumptech.glide.load.engine.c.a b;
        final com.bumptech.glide.load.engine.c.a c;
        final j d;
        final Pool<i<?>> e = com.bumptech.glide.util.a.a.a((int) CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, (C0023a<T>) new C0023a<i<?>>() {
            /* renamed from: a */
            public i<?> b() {
                return new i<>(b.this.a, b.this.b, b.this.c, b.this.d, b.this.e);
            }
        });

        b(com.bumptech.glide.load.engine.c.a aVar, com.bumptech.glide.load.engine.c.a aVar2, com.bumptech.glide.load.engine.c.a aVar3, j jVar) {
            this.a = aVar;
            this.b = aVar2;
            this.c = aVar3;
            this.d = jVar;
        }

        /* access modifiers changed from: 0000 */
        public <R> i<R> a(com.bumptech.glide.load.c cVar, boolean z, boolean z2) {
            return ((i) this.e.acquire()).a(cVar, z, z2);
        }
    }

    /* compiled from: Engine */
    private static class c implements d {
        private final C0016a a;
        private volatile com.bumptech.glide.load.engine.b.a b;

        public c(C0016a aVar) {
            this.a = aVar;
        }

        public com.bumptech.glide.load.engine.b.a a() {
            if (this.b == null) {
                synchronized (this) {
                    if (this.b == null) {
                        this.b = this.a.a();
                    }
                    if (this.b == null) {
                        this.b = new com.bumptech.glide.load.engine.b.b();
                    }
                }
            }
            return this.b;
        }
    }

    /* compiled from: Engine */
    public static class d {
        private final i<?> a;
        private final com.bumptech.glide.request.e b;

        public d(com.bumptech.glide.request.e eVar, i<?> iVar) {
            this.b = eVar;
            this.a = iVar;
        }

        public void a() {
            this.a.b(this.b);
        }
    }

    /* compiled from: Engine */
    private static class e implements IdleHandler {
        private final Map<com.bumptech.glide.load.c, WeakReference<m<?>>> a;
        private final ReferenceQueue<m<?>> b;

        public e(Map<com.bumptech.glide.load.c, WeakReference<m<?>>> map, ReferenceQueue<m<?>> referenceQueue) {
            this.a = map;
            this.b = referenceQueue;
        }

        public boolean queueIdle() {
            f fVar = (f) this.b.poll();
            if (fVar != null) {
                this.a.remove(fVar.a);
            }
            return true;
        }
    }

    /* compiled from: Engine */
    private static class f extends WeakReference<m<?>> {
        final com.bumptech.glide.load.c a;

        public f(com.bumptech.glide.load.c cVar, m<?> mVar, ReferenceQueue<? super m<?>> referenceQueue) {
            super(mVar, referenceQueue);
            this.a = cVar;
        }
    }

    public h(com.bumptech.glide.load.engine.b.h hVar, C0016a aVar, com.bumptech.glide.load.engine.c.a aVar2, com.bumptech.glide.load.engine.c.a aVar3, com.bumptech.glide.load.engine.c.a aVar4) {
        this(hVar, aVar, aVar2, aVar3, aVar4, null, null, null, null, null, null);
    }

    h(com.bumptech.glide.load.engine.b.h hVar, C0016a aVar, com.bumptech.glide.load.engine.c.a aVar2, com.bumptech.glide.load.engine.c.a aVar3, com.bumptech.glide.load.engine.c.a aVar4, Map<com.bumptech.glide.load.c, i<?>> map, l lVar, Map<com.bumptech.glide.load.c, WeakReference<m<?>>> map2, b bVar, a aVar5, t tVar) {
        this.c = hVar;
        this.g = new c(aVar);
        if (map2 == null) {
            map2 = new HashMap<>();
        }
        this.e = map2;
        if (lVar == null) {
            lVar = new l();
        }
        this.b = lVar;
        if (map == null) {
            map = new HashMap<>();
        }
        this.a = map;
        if (bVar == null) {
            bVar = new b(aVar2, aVar3, aVar4, this);
        }
        this.d = bVar;
        if (aVar5 == null) {
            aVar5 = new a(this.g);
        }
        this.h = aVar5;
        if (tVar == null) {
            tVar = new t();
        }
        this.f = tVar;
        hVar.a((com.bumptech.glide.load.engine.b.h.a) this);
    }

    public <R> d a(com.bumptech.glide.e eVar, Object obj, com.bumptech.glide.load.c cVar, int i2, int i3, Class<?> cls, Class<R> cls2, Priority priority, g gVar, Map<Class<?>, com.bumptech.glide.load.h<?>> map, boolean z, boolean z2, com.bumptech.glide.load.e eVar2, boolean z3, boolean z4, boolean z5, com.bumptech.glide.request.e eVar3) {
        i.a();
        long a2 = com.bumptech.glide.util.d.a();
        k a3 = this.b.a(obj, cVar, i2, i3, map, cls, cls2, eVar2);
        m b2 = b((com.bumptech.glide.load.c) a3, z3);
        if (b2 != null) {
            eVar3.a(b2, DataSource.MEMORY_CACHE);
            if (Log.isLoggable("Engine", 2)) {
                a("Loaded resource from cache", a2, a3);
            }
            return null;
        }
        m a4 = a((com.bumptech.glide.load.c) a3, z3);
        if (a4 != null) {
            eVar3.a(a4, DataSource.MEMORY_CACHE);
            if (Log.isLoggable("Engine", 2)) {
                a("Loaded resource from active resources", a2, a3);
            }
            return null;
        }
        i iVar = (i) this.a.get(a3);
        if (iVar != null) {
            iVar.a(eVar3);
            if (Log.isLoggable("Engine", 2)) {
                a("Added to existing load", a2, a3);
            }
            return new d(eVar3, iVar);
        }
        i a5 = this.d.a(a3, z3, z4);
        DecodeJob a6 = this.h.a(eVar, obj, a3, cVar, i2, i3, cls, cls2, priority, gVar, map, z, z2, z5, eVar2, a5);
        this.a.put(a3, a5);
        a5.a(eVar3);
        a5.b(a6);
        if (Log.isLoggable("Engine", 2)) {
            a("Started new load", a2, a3);
        }
        return new d(eVar3, a5);
    }

    private static void a(String str, long j, com.bumptech.glide.load.c cVar) {
        Log.v("Engine", str + " in " + com.bumptech.glide.util.d.a(j) + "ms, key: " + cVar);
    }

    private m<?> a(com.bumptech.glide.load.c cVar, boolean z) {
        m mVar;
        if (!z) {
            return null;
        }
        WeakReference weakReference = (WeakReference) this.e.get(cVar);
        if (weakReference != null) {
            mVar = (m) weakReference.get();
            if (mVar != null) {
                mVar.f();
            } else {
                this.e.remove(cVar);
            }
        } else {
            mVar = null;
        }
        return mVar;
    }

    private m<?> b(com.bumptech.glide.load.c cVar, boolean z) {
        if (!z) {
            return null;
        }
        m<?> a2 = a(cVar);
        if (a2 == null) {
            return a2;
        }
        a2.f();
        this.e.put(cVar, new f(cVar, a2, a()));
        return a2;
    }

    private m<?> a(com.bumptech.glide.load.c cVar) {
        q a2 = this.c.a(cVar);
        if (a2 == null) {
            return null;
        }
        if (a2 instanceof m) {
            return (m) a2;
        }
        return new m(a2, true);
    }

    public void a(q<?> qVar) {
        i.a();
        if (qVar instanceof m) {
            ((m) qVar).g();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    public void a(com.bumptech.glide.load.c cVar, m<?> mVar) {
        i.a();
        if (mVar != null) {
            mVar.a(cVar, this);
            if (mVar.a()) {
                this.e.put(cVar, new f(cVar, mVar, a()));
            }
        }
        this.a.remove(cVar);
    }

    public void a(i iVar, com.bumptech.glide.load.c cVar) {
        i.a();
        if (iVar.equals((i) this.a.get(cVar))) {
            this.a.remove(cVar);
        }
    }

    public void b(q<?> qVar) {
        i.a();
        this.f.a(qVar);
    }

    public void b(com.bumptech.glide.load.c cVar, m mVar) {
        i.a();
        this.e.remove(cVar);
        if (mVar.a()) {
            this.c.b(cVar, mVar);
        } else {
            this.f.a(mVar);
        }
    }

    private ReferenceQueue<m<?>> a() {
        if (this.i == null) {
            this.i = new ReferenceQueue<>();
            Looper.myQueue().addIdleHandler(new e(this.e, this.i));
        }
        return this.i;
    }
}
