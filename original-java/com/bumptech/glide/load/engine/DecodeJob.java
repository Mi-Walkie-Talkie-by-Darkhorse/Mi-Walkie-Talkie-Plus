package com.bumptech.glide.load.engine;

import android.os.Build.VERSION;
import android.support.v4.os.TraceCompat;
import android.support.v4.util.Pools.Pool;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry.NoResultEncoderAvailableException;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.resource.bitmap.k;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

class DecodeJob<R> implements com.bumptech.glide.load.engine.d.a, com.bumptech.glide.util.a.a.c, Comparable<DecodeJob<?>>, Runnable {
    private com.bumptech.glide.load.a.b<?> A;
    private volatile d B;
    private volatile boolean C;
    private volatile boolean D;
    final e<R> a = new e<>();
    final c<?> b = new c<>();
    com.bumptech.glide.load.c c;
    int d;
    int e;
    g f;
    com.bumptech.glide.load.e g;
    com.bumptech.glide.load.c h;
    private final List<Exception> i = new ArrayList();
    private final com.bumptech.glide.util.a.b j = com.bumptech.glide.util.a.b.a();
    private final d k;
    private final Pool<DecodeJob<?>> l;
    private final e m = new e();
    /* access modifiers changed from: private */
    public com.bumptech.glide.e n;
    private Priority o;
    private k p;
    private a<R> q;
    private int r;
    private Stage s;
    private RunReason t;
    private long u;
    private boolean v;
    private Thread w;
    private com.bumptech.glide.load.c x;
    private Object y;
    private DataSource z;

    private enum RunReason {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    private enum Stage {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    interface a<R> {
        void a(DecodeJob<?> decodeJob);

        void a(GlideException glideException);

        void a(q<R> qVar, DataSource dataSource);
    }

    private final class b<Z> implements a<Z> {
        private final DataSource b;

        b(DataSource dataSource) {
            this.b = dataSource;
        }

        public q<Z> a(q<Z> qVar) {
            q<Z> qVar2;
            h hVar;
            EncodeStrategy encodeStrategy;
            g gVar;
            com.bumptech.glide.load.c sVar;
            Class b2 = b(qVar);
            if (this.b != DataSource.RESOURCE_DISK_CACHE) {
                hVar = DecodeJob.this.a.c(b2);
                qVar2 = hVar.a(DecodeJob.this.n, qVar, DecodeJob.this.d, DecodeJob.this.e);
            } else {
                qVar2 = qVar;
                hVar = null;
            }
            if (!qVar.equals(qVar2)) {
                qVar.e();
            }
            if (DecodeJob.this.a.a(qVar2)) {
                g b3 = DecodeJob.this.a.b(qVar2);
                encodeStrategy = b3.a(DecodeJob.this.g);
                gVar = b3;
            } else {
                encodeStrategy = EncodeStrategy.NONE;
                gVar = null;
            }
            if (!DecodeJob.this.f.a(!DecodeJob.this.a.a(DecodeJob.this.h), this.b, encodeStrategy)) {
                return qVar2;
            }
            if (gVar == null) {
                throw new NoResultEncoderAvailableException(qVar2.c().getClass());
            }
            if (encodeStrategy == EncodeStrategy.SOURCE) {
                sVar = new b(DecodeJob.this.h, DecodeJob.this.c);
            } else if (encodeStrategy == EncodeStrategy.TRANSFORMED) {
                sVar = new s(DecodeJob.this.h, DecodeJob.this.c, DecodeJob.this.d, DecodeJob.this.e, hVar, b2, DecodeJob.this.g);
            } else {
                throw new IllegalArgumentException("Unknown strategy: " + encodeStrategy);
            }
            p a2 = p.a(qVar2);
            DecodeJob.this.b.a(sVar, gVar, a2);
            return a2;
        }

        private Class<Z> b(q<Z> qVar) {
            return qVar.c().getClass();
        }
    }

    private static class c<Z> {
        private com.bumptech.glide.load.c a;
        private g<Z> b;
        private p<Z> c;

        c() {
        }

        /* access modifiers changed from: 0000 */
        public <X> void a(com.bumptech.glide.load.c cVar, g<X> gVar, p<X> pVar) {
            this.a = cVar;
            this.b = gVar;
            this.c = pVar;
        }

        /* access modifiers changed from: 0000 */
        public void a(d dVar, com.bumptech.glide.load.e eVar) {
            TraceCompat.beginSection("DecodeJob.encode");
            try {
                dVar.a().a(this.a, new c(this.b, this.c, eVar));
            } finally {
                this.c.a();
                TraceCompat.endSection();
            }
        }

        /* access modifiers changed from: 0000 */
        public boolean a() {
            return this.c != null;
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            this.a = null;
            this.b = null;
            this.c = null;
        }
    }

    interface d {
        com.bumptech.glide.load.engine.b.a a();
    }

    private static class e {
        private boolean a;
        private boolean b;
        private boolean c;

        e() {
        }

        /* access modifiers changed from: 0000 */
        public synchronized boolean a(boolean z) {
            this.a = true;
            return b(z);
        }

        /* access modifiers changed from: 0000 */
        public synchronized boolean a() {
            this.b = true;
            return b(false);
        }

        /* access modifiers changed from: 0000 */
        public synchronized boolean b() {
            this.c = true;
            return b(false);
        }

        /* access modifiers changed from: 0000 */
        public synchronized void c() {
            this.b = false;
            this.a = false;
            this.c = false;
        }

        private boolean b(boolean z) {
            return (this.c || z || this.b) && this.a;
        }
    }

    DecodeJob(d dVar, Pool<DecodeJob<?>> pool) {
        this.k = dVar;
        this.l = pool;
    }

    /* access modifiers changed from: 0000 */
    public DecodeJob<R> a(com.bumptech.glide.e eVar, Object obj, k kVar, com.bumptech.glide.load.c cVar, int i2, int i3, Class<?> cls, Class<R> cls2, Priority priority, g gVar, Map<Class<?>, h<?>> map, boolean z2, boolean z3, boolean z4, com.bumptech.glide.load.e eVar2, a<R> aVar, int i4) {
        this.a.a(eVar, obj, cVar, i2, i3, gVar, cls, cls2, priority, eVar2, map, z2, z3, this.k);
        this.n = eVar;
        this.c = cVar;
        this.o = priority;
        this.p = kVar;
        this.d = i2;
        this.e = i3;
        this.f = gVar;
        this.v = z4;
        this.g = eVar2;
        this.q = aVar;
        this.r = i4;
        this.t = RunReason.INITIALIZE;
        return this;
    }

    /* access modifiers changed from: 0000 */
    public boolean a() {
        Stage a2 = a(Stage.INITIALIZE);
        return a2 == Stage.RESOURCE_CACHE || a2 == Stage.DATA_CACHE;
    }

    /* access modifiers changed from: 0000 */
    public void a(boolean z2) {
        if (this.m.a(z2)) {
            g();
        }
    }

    private void e() {
        if (this.m.a()) {
            g();
        }
    }

    private void f() {
        if (this.m.b()) {
            g();
        }
    }

    private void g() {
        this.m.c();
        this.b.b();
        this.a.a();
        this.C = false;
        this.n = null;
        this.c = null;
        this.g = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.s = null;
        this.B = null;
        this.w = null;
        this.h = null;
        this.y = null;
        this.z = null;
        this.A = null;
        this.u = 0;
        this.D = false;
        this.i.clear();
        this.l.release(this);
    }

    /* renamed from: a */
    public int compareTo(DecodeJob<?> decodeJob) {
        int h2 = h() - decodeJob.h();
        if (h2 == 0) {
            return this.r - decodeJob.r;
        }
        return h2;
    }

    private int h() {
        return this.o.ordinal();
    }

    public void b() {
        this.D = true;
        d dVar = this.B;
        if (dVar != null) {
            dVar.b();
        }
    }

    public void run() {
        boolean z2 = false;
        TraceCompat.beginSection("DecodeJob#run");
        com.bumptech.glide.load.a.b<?> bVar = this.A;
        try {
            if (this.D) {
                l();
                if (bVar == null || this.A == null || bVar.equals(this.A)) {
                    z2 = true;
                }
                com.bumptech.glide.util.h.a(z2, "Fetchers don't match!, old: " + bVar + " new: " + this.A);
                if (bVar != null) {
                    bVar.a();
                }
                TraceCompat.endSection();
                return;
            }
            i();
            if (bVar == null || this.A == null || bVar.equals(this.A)) {
                z2 = true;
            }
            com.bumptech.glide.util.h.a(z2, "Fetchers don't match!, old: " + bVar + " new: " + this.A);
            if (bVar != null) {
                bVar.a();
            }
            TraceCompat.endSection();
        } catch (RuntimeException e2) {
            if (Log.isLoggable("DecodeJob", 3)) {
                Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.D + ", stage: " + this.s, e2);
            }
            if (this.s != Stage.ENCODE) {
                l();
            }
            if (!this.D) {
                throw e2;
            }
            if (bVar == null || this.A == null || bVar.equals(this.A)) {
                z2 = true;
            }
            com.bumptech.glide.util.h.a(z2, "Fetchers don't match!, old: " + bVar + " new: " + this.A);
            if (bVar != null) {
                bVar.a();
            }
            TraceCompat.endSection();
        } catch (Throwable th) {
            if (bVar == null || this.A == null || bVar.equals(this.A)) {
                z2 = true;
            }
            com.bumptech.glide.util.h.a(z2, "Fetchers don't match!, old: " + bVar + " new: " + this.A);
            if (bVar != null) {
                bVar.a();
            }
            TraceCompat.endSection();
            throw th;
        }
    }

    private void i() {
        switch (this.t) {
            case INITIALIZE:
                this.s = a(Stage.INITIALIZE);
                this.B = j();
                k();
                return;
            case SWITCH_TO_SOURCE_SERVICE:
                k();
                return;
            case DECODE_DATA:
                n();
                return;
            default:
                throw new IllegalStateException("Unrecognized run reason: " + this.t);
        }
    }

    private d j() {
        switch (this.s) {
            case RESOURCE_CACHE:
                return new r(this.a, this);
            case DATA_CACHE:
                return new a(this.a, this);
            case SOURCE:
                return new u(this.a, this);
            case FINISHED:
                return null;
            default:
                throw new IllegalStateException("Unrecognized stage: " + this.s);
        }
    }

    private void k() {
        this.w = Thread.currentThread();
        this.u = com.bumptech.glide.util.d.a();
        boolean z2 = false;
        while (!this.D && this.B != null) {
            z2 = this.B.a();
            if (z2) {
                break;
            }
            this.s = a(this.s);
            this.B = j();
            if (this.s == Stage.SOURCE) {
                c();
                return;
            }
        }
        if ((this.s == Stage.FINISHED || this.D) && !z2) {
            l();
        }
    }

    private void l() {
        m();
        this.q.a(new GlideException("Failed to load resource", (List<Exception>) new ArrayList<Exception>(this.i)));
        f();
    }

    private void a(q<R> qVar, DataSource dataSource) {
        m();
        this.q.a(qVar, dataSource);
    }

    private void m() {
        this.j.b();
        if (this.C) {
            throw new IllegalStateException("Already notified");
        }
        this.C = true;
    }

    private Stage a(Stage stage) {
        switch (stage) {
            case RESOURCE_CACHE:
                if (this.f.b()) {
                    return Stage.DATA_CACHE;
                }
                return a(Stage.DATA_CACHE);
            case DATA_CACHE:
                return this.v ? Stage.FINISHED : Stage.SOURCE;
            case SOURCE:
            case FINISHED:
                return Stage.FINISHED;
            case INITIALIZE:
                if (this.f.a()) {
                    return Stage.RESOURCE_CACHE;
                }
                return a(Stage.RESOURCE_CACHE);
            default:
                throw new IllegalArgumentException("Unrecognized stage: " + stage);
        }
    }

    public void c() {
        this.t = RunReason.SWITCH_TO_SOURCE_SERVICE;
        this.q.a(this);
    }

    public void a(com.bumptech.glide.load.c cVar, Object obj, com.bumptech.glide.load.a.b<?> bVar, DataSource dataSource, com.bumptech.glide.load.c cVar2) {
        this.h = cVar;
        this.y = obj;
        this.A = bVar;
        this.z = dataSource;
        this.x = cVar2;
        if (Thread.currentThread() != this.w) {
            this.t = RunReason.DECODE_DATA;
            this.q.a(this);
            return;
        }
        TraceCompat.beginSection("DecodeJob.decodeFromRetrievedData");
        try {
            n();
        } finally {
            TraceCompat.endSection();
        }
    }

    public void a(com.bumptech.glide.load.c cVar, Exception exc, com.bumptech.glide.load.a.b<?> bVar, DataSource dataSource) {
        bVar.a();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        glideException.a(cVar, dataSource, bVar.d());
        this.i.add(glideException);
        if (Thread.currentThread() != this.w) {
            this.t = RunReason.SWITCH_TO_SOURCE_SERVICE;
            this.q.a(this);
            return;
        }
        k();
    }

    private void n() {
        q qVar;
        if (Log.isLoggable("DecodeJob", 2)) {
            a("Retrieved data", this.u, "data: " + this.y + ", cache key: " + this.h + ", fetcher: " + this.A);
        }
        try {
            qVar = a(this.A, (Data) this.y, this.z);
        } catch (GlideException e2) {
            e2.a(this.x, this.z);
            this.i.add(e2);
            qVar = null;
        }
        if (qVar != null) {
            b(qVar, this.z);
        } else {
            k();
        }
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: type inference failed for: r5v1, types: [com.bumptech.glide.load.engine.q] */
    /* JADX WARNING: type inference failed for: r0v3, types: [com.bumptech.glide.load.engine.p] */
    /* JADX WARNING: type inference failed for: r5v2 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b(com.bumptech.glide.load.engine.q<R> r5, com.bumptech.glide.load.DataSource r6) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.bumptech.glide.load.engine.n
            if (r0 == 0) goto L_0x000a
            r0 = r5
            com.bumptech.glide.load.engine.n r0 = (com.bumptech.glide.load.engine.n) r0
            r0.a()
        L_0x000a:
            r0 = 0
            com.bumptech.glide.load.engine.DecodeJob$c<?> r1 = r4.b
            boolean r1 = r1.a()
            if (r1 == 0) goto L_0x0018
            com.bumptech.glide.load.engine.p r0 = com.bumptech.glide.load.engine.p.a(r5)
            r5 = r0
        L_0x0018:
            r4.a(r5, r6)
            com.bumptech.glide.load.engine.DecodeJob$Stage r1 = com.bumptech.glide.load.engine.DecodeJob.Stage.ENCODE
            r4.s = r1
            com.bumptech.glide.load.engine.DecodeJob$c<?> r1 = r4.b     // Catch:{ all -> 0x0039 }
            boolean r1 = r1.a()     // Catch:{ all -> 0x0039 }
            if (r1 == 0) goto L_0x0030
            com.bumptech.glide.load.engine.DecodeJob$c<?> r1 = r4.b     // Catch:{ all -> 0x0039 }
            com.bumptech.glide.load.engine.DecodeJob$d r2 = r4.k     // Catch:{ all -> 0x0039 }
            com.bumptech.glide.load.e r3 = r4.g     // Catch:{ all -> 0x0039 }
            r1.a(r2, r3)     // Catch:{ all -> 0x0039 }
        L_0x0030:
            if (r0 == 0) goto L_0x0035
            r0.a()
        L_0x0035:
            r4.e()
            return
        L_0x0039:
            r1 = move-exception
            if (r0 == 0) goto L_0x003f
            r0.a()
        L_0x003f:
            r4.e()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.DecodeJob.b(com.bumptech.glide.load.engine.q, com.bumptech.glide.load.DataSource):void");
    }

    private <Data> q<R> a(com.bumptech.glide.load.a.b<?> bVar, Data data, DataSource dataSource) throws GlideException {
        if (data == null) {
            bVar.a();
            return null;
        }
        try {
            long a2 = com.bumptech.glide.util.d.a();
            q<R> a3 = a(data, dataSource);
            if (Log.isLoggable("DecodeJob", 2)) {
                a("Decoded result " + a3, a2);
            }
            return a3;
        } finally {
            bVar.a();
        }
    }

    private <Data> q<R> a(Data data, DataSource dataSource) throws GlideException {
        return a(data, dataSource, this.a.b(data.getClass()));
    }

    private com.bumptech.glide.load.e a(DataSource dataSource) {
        com.bumptech.glide.load.e eVar = this.g;
        if (VERSION.SDK_INT < 26 || eVar.a(k.d) != null) {
            return eVar;
        }
        if (dataSource != DataSource.RESOURCE_DISK_CACHE && !this.a.j()) {
            return eVar;
        }
        com.bumptech.glide.load.e eVar2 = new com.bumptech.glide.load.e();
        eVar2.a(this.g);
        eVar2.a(k.d, Boolean.valueOf(true));
        return eVar2;
    }

    private <Data, ResourceType> q<R> a(Data data, DataSource dataSource, o<Data, ResourceType, R> oVar) throws GlideException {
        com.bumptech.glide.load.e a2 = a(dataSource);
        com.bumptech.glide.load.a.c b2 = this.n.c().b(data);
        try {
            return oVar.a(b2, a2, this.d, this.e, new b(dataSource));
        } finally {
            b2.b();
        }
    }

    private void a(String str, long j2) {
        a(str, j2, (String) null);
    }

    private void a(String str, long j2, String str2) {
        Log.v("DecodeJob", str + " in " + com.bumptech.glide.util.d.a(j2) + ", load key: " + this.p + (str2 != null ? ", " + str2 : "") + ", thread: " + Thread.currentThread().getName());
    }

    public com.bumptech.glide.util.a.b b_() {
        return this.j;
    }
}
