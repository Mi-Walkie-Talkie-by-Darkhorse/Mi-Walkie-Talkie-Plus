package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.lang.ref.WeakReference;

/* compiled from: ImageWorker */
public abstract class ei {
    /* access modifiers changed from: private */
    public ef a;
    private com.amap.api.mapcore.util.ef.a b;
    protected boolean c = false;
    protected Resources d;
    /* access modifiers changed from: private */
    public boolean e = false;
    /* access modifiers changed from: private */
    public final Object f = new Object();
    /* access modifiers changed from: private */
    public c g = null;

    /* compiled from: ImageWorker */
    public class a extends dj<Boolean, Void, Bitmap> {
        private final WeakReference<com.amap.api.mapcore.util.cv.a> e;

        public a(com.amap.api.mapcore.util.cv.a aVar) {
            this.e = new WeakReference<>(aVar);
        }

        /* access modifiers changed from: protected */
        /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public android.graphics.Bitmap a(java.lang.Boolean... r7) {
            /*
                r6 = this;
                r1 = 0
                r0 = 0
                r0 = r7[r0]     // Catch:{ Throwable -> 0x0056 }
                boolean r3 = r0.booleanValue()     // Catch:{ Throwable -> 0x0056 }
                java.lang.ref.WeakReference<com.amap.api.mapcore.util.cv$a> r0 = r6.e     // Catch:{ Throwable -> 0x0056 }
                java.lang.Object r0 = r0.get()     // Catch:{ Throwable -> 0x0056 }
                com.amap.api.mapcore.util.cv$a r0 = (com.amap.api.mapcore.util.cv.a) r0     // Catch:{ Throwable -> 0x0056 }
                if (r0 != 0) goto L_0x0014
                r0 = r1
            L_0x0013:
                return r0
            L_0x0014:
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0056 }
                r2.<init>()     // Catch:{ Throwable -> 0x0056 }
                int r4 = r0.a     // Catch:{ Throwable -> 0x0056 }
                r2.append(r4)     // Catch:{ Throwable -> 0x0056 }
                java.lang.String r4 = "-"
                r2.append(r4)     // Catch:{ Throwable -> 0x0056 }
                int r4 = r0.b     // Catch:{ Throwable -> 0x0056 }
                r2.append(r4)     // Catch:{ Throwable -> 0x0056 }
                java.lang.String r4 = "-"
                r2.append(r4)     // Catch:{ Throwable -> 0x0056 }
                int r4 = r0.c     // Catch:{ Throwable -> 0x0056 }
                r2.append(r4)     // Catch:{ Throwable -> 0x0056 }
                java.lang.String r4 = r2.toString()     // Catch:{ Throwable -> 0x0056 }
                com.amap.api.mapcore.util.ei r2 = com.amap.api.mapcore.util.ei.this     // Catch:{ Throwable -> 0x0056 }
                java.lang.Object r2 = r2.f     // Catch:{ Throwable -> 0x0056 }
                monitor-enter(r2)     // Catch:{ Throwable -> 0x0056 }
            L_0x003d:
                com.amap.api.mapcore.util.ei r5 = com.amap.api.mapcore.util.ei.this     // Catch:{ all -> 0x0053 }
                boolean r5 = r5.c     // Catch:{ all -> 0x0053 }
                if (r5 == 0) goto L_0x005c
                boolean r5 = r6.d()     // Catch:{ all -> 0x0053 }
                if (r5 != 0) goto L_0x005c
                com.amap.api.mapcore.util.ei r5 = com.amap.api.mapcore.util.ei.this     // Catch:{ all -> 0x0053 }
                java.lang.Object r5 = r5.f     // Catch:{ all -> 0x0053 }
                r5.wait()     // Catch:{ all -> 0x0053 }
                goto L_0x003d
            L_0x0053:
                r0 = move-exception
                monitor-exit(r2)     // Catch:{ all -> 0x0053 }
                throw r0     // Catch:{ Throwable -> 0x0056 }
            L_0x0056:
                r0 = move-exception
                com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                r0 = r1
                goto L_0x0013
            L_0x005c:
                monitor-exit(r2)     // Catch:{ all -> 0x0053 }
                com.amap.api.mapcore.util.ei r2 = com.amap.api.mapcore.util.ei.this     // Catch:{ Throwable -> 0x0056 }
                com.amap.api.mapcore.util.ef r2 = r2.a     // Catch:{ Throwable -> 0x0056 }
                if (r2 == 0) goto L_0x00bf
                boolean r2 = r6.d()     // Catch:{ Throwable -> 0x0056 }
                if (r2 != 0) goto L_0x00bf
                com.amap.api.mapcore.util.cv$a r2 = r6.e()     // Catch:{ Throwable -> 0x0056 }
                if (r2 == 0) goto L_0x00bf
                com.amap.api.mapcore.util.ei r2 = com.amap.api.mapcore.util.ei.this     // Catch:{ Throwable -> 0x0056 }
                boolean r2 = r2.e     // Catch:{ Throwable -> 0x0056 }
                if (r2 != 0) goto L_0x00bf
                com.amap.api.mapcore.util.ei r2 = com.amap.api.mapcore.util.ei.this     // Catch:{ Throwable -> 0x0056 }
                com.amap.api.mapcore.util.ef r2 = r2.a     // Catch:{ Throwable -> 0x0056 }
                android.graphics.Bitmap r2 = r2.b(r4)     // Catch:{ Throwable -> 0x0056 }
            L_0x0083:
                if (r3 == 0) goto L_0x00bd
                if (r2 != 0) goto L_0x00bd
                boolean r3 = r6.d()     // Catch:{ Throwable -> 0x0056 }
                if (r3 != 0) goto L_0x00bd
                com.amap.api.mapcore.util.cv$a r3 = r6.e()     // Catch:{ Throwable -> 0x0056 }
                if (r3 == 0) goto L_0x00bd
                com.amap.api.mapcore.util.ei r3 = com.amap.api.mapcore.util.ei.this     // Catch:{ Throwable -> 0x0056 }
                boolean r3 = r3.e     // Catch:{ Throwable -> 0x0056 }
                if (r3 != 0) goto L_0x00bd
                java.lang.Class<com.amap.api.mapcore.util.ei> r2 = com.amap.api.mapcore.util.ei.class
                monitor-enter(r2)     // Catch:{ Throwable -> 0x0056 }
                com.amap.api.mapcore.util.ei r3 = com.amap.api.mapcore.util.ei.this     // Catch:{ all -> 0x00ba }
                android.graphics.Bitmap r0 = r3.a(r0)     // Catch:{ all -> 0x00ba }
                monitor-exit(r2)     // Catch:{ all -> 0x00ba }
            L_0x00a5:
                if (r0 == 0) goto L_0x0013
                com.amap.api.mapcore.util.ei r2 = com.amap.api.mapcore.util.ei.this     // Catch:{ Throwable -> 0x0056 }
                com.amap.api.mapcore.util.ef r2 = r2.a     // Catch:{ Throwable -> 0x0056 }
                if (r2 == 0) goto L_0x0013
                com.amap.api.mapcore.util.ei r2 = com.amap.api.mapcore.util.ei.this     // Catch:{ Throwable -> 0x0056 }
                com.amap.api.mapcore.util.ef r2 = r2.a     // Catch:{ Throwable -> 0x0056 }
                r2.a(r4, r0)     // Catch:{ Throwable -> 0x0056 }
                goto L_0x0013
            L_0x00ba:
                r0 = move-exception
                monitor-exit(r2)     // Catch:{ all -> 0x00ba }
                throw r0     // Catch:{ Throwable -> 0x0056 }
            L_0x00bd:
                r0 = r2
                goto L_0x00a5
            L_0x00bf:
                r2 = r1
                goto L_0x0083
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ei.a.a(java.lang.Boolean[]):android.graphics.Bitmap");
        }

        /* access modifiers changed from: protected */
        public void a(Bitmap bitmap) {
            try {
                if (d() || ei.this.e) {
                    bitmap = null;
                }
                com.amap.api.mapcore.util.cv.a e2 = e();
                if (bitmap != null && !bitmap.isRecycled() && e2 != null) {
                    e2.a(bitmap);
                    if (ei.this.g != null) {
                        ei.this.g.a();
                    }
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }

        /* access modifiers changed from: protected */
        public void b(Bitmap bitmap) {
            super.b(bitmap);
            synchronized (ei.this.f) {
                try {
                    ei.this.f.notifyAll();
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        }

        private com.amap.api.mapcore.util.cv.a e() {
            com.amap.api.mapcore.util.cv.a aVar = (com.amap.api.mapcore.util.cv.a) this.e.get();
            if (this == ei.c(aVar)) {
                return aVar;
            }
            return null;
        }
    }

    /* compiled from: ImageWorker */
    protected class b extends dj<Object, Void, Void> {
        protected b() {
        }

        /* access modifiers changed from: protected */
        /* renamed from: d */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public java.lang.Void a(java.lang.Object... r2) {
            /*
                r1 = this;
                r0 = 0
                r0 = r2[r0]     // Catch:{ Throwable -> 0x0014 }
                java.lang.Integer r0 = (java.lang.Integer) r0     // Catch:{ Throwable -> 0x0014 }
                int r0 = r0.intValue()     // Catch:{ Throwable -> 0x0014 }
                switch(r0) {
                    case 0: goto L_0x000e;
                    case 1: goto L_0x0019;
                    case 2: goto L_0x001f;
                    case 3: goto L_0x0025;
                    case 4: goto L_0x002b;
                    default: goto L_0x000c;
                }     // Catch:{ Throwable -> 0x0014 }
            L_0x000c:
                r0 = 0
                return r0
            L_0x000e:
                com.amap.api.mapcore.util.ei r0 = com.amap.api.mapcore.util.ei.this     // Catch:{ Throwable -> 0x0014 }
                r0.c()     // Catch:{ Throwable -> 0x0014 }
                goto L_0x000c
            L_0x0014:
                r0 = move-exception
                com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                goto L_0x000c
            L_0x0019:
                com.amap.api.mapcore.util.ei r0 = com.amap.api.mapcore.util.ei.this     // Catch:{ Throwable -> 0x0014 }
                r0.b()     // Catch:{ Throwable -> 0x0014 }
                goto L_0x000c
            L_0x001f:
                com.amap.api.mapcore.util.ei r0 = com.amap.api.mapcore.util.ei.this     // Catch:{ Throwable -> 0x0014 }
                r0.d()     // Catch:{ Throwable -> 0x0014 }
                goto L_0x000c
            L_0x0025:
                com.amap.api.mapcore.util.ei r0 = com.amap.api.mapcore.util.ei.this     // Catch:{ Throwable -> 0x0014 }
                r0.e()     // Catch:{ Throwable -> 0x0014 }
                goto L_0x000c
            L_0x002b:
                com.amap.api.mapcore.util.ei r0 = com.amap.api.mapcore.util.ei.this     // Catch:{ Throwable -> 0x0014 }
                r0.f()     // Catch:{ Throwable -> 0x0014 }
                goto L_0x000c
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ei.b.a(java.lang.Object[]):java.lang.Void");
        }
    }

    /* compiled from: ImageWorker */
    public interface c {
        void a();
    }

    /* access modifiers changed from: protected */
    public abstract Bitmap a(Object obj);

    protected ei(Context context) {
        this.d = context.getResources();
    }

    public void a(boolean z, com.amap.api.mapcore.util.cv.a aVar) {
        if (aVar != null) {
            Bitmap bitmap = null;
            try {
                if (this.a != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(aVar.a);
                    sb.append("-");
                    sb.append(aVar.b);
                    sb.append("-");
                    sb.append(aVar.c);
                    bitmap = this.a.a(sb.toString());
                }
                if (bitmap != null) {
                    aVar.a(bitmap);
                    return;
                }
                a aVar2 = new a(aVar);
                aVar.j = aVar2;
                aVar2.a(dj.c, (Params[]) new Boolean[]{Boolean.valueOf(z)});
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public void a(com.amap.api.mapcore.util.ef.a aVar) {
        this.b = aVar;
        this.a = ef.a(this.b);
        new b().c((Params[]) new Object[]{Integer.valueOf(1)});
    }

    /* access modifiers changed from: protected */
    public ef a() {
        return this.a;
    }

    public static void a(com.amap.api.mapcore.util.cv.a aVar) {
        a c2 = c(aVar);
        if (c2 != null) {
            c2.a(true);
        }
    }

    /* access modifiers changed from: private */
    public static a c(com.amap.api.mapcore.util.cv.a aVar) {
        if (aVar != null) {
            return aVar.j;
        }
        return null;
    }

    public void a(boolean z) {
        synchronized (this.f) {
            this.c = z;
            if (!this.c) {
                try {
                    this.f.notifyAll();
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b() {
        if (this.a != null) {
            this.a.a();
        }
    }

    /* access modifiers changed from: protected */
    public void c() {
        if (this.a != null) {
            this.a.b();
        }
    }

    /* access modifiers changed from: protected */
    public void d() {
        if (this.a != null) {
            this.a.c();
        }
    }

    /* access modifiers changed from: protected */
    public void e() {
        if (this.a != null) {
            this.a.a(true);
            this.a = null;
        }
    }

    /* access modifiers changed from: protected */
    public void f() {
        if (this.a != null) {
            this.a.a(false);
            this.a.a();
        }
    }

    public void g() {
        new b().c((Params[]) new Object[]{Integer.valueOf(0)});
    }

    public void h() {
        new b().c((Params[]) new Object[]{Integer.valueOf(3)});
    }

    public void a(c cVar) {
        this.g = cVar;
    }

    public void a(String str) {
        this.b.b(str);
        new b().c((Params[]) new Object[]{Integer.valueOf(4)});
    }
}
