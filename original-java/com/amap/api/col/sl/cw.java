package com.amap.api.col.sl;

import android.content.Context;
import android.os.Build.VERSION;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.List;

/* compiled from: DexDownLoad */
public final class cw implements com.amap.api.col.sl.dp.a {
    /* access modifiers changed from: private */
    public cx a;
    /* access modifiers changed from: private */
    public dp b;
    /* access modifiers changed from: private */
    public bz c;
    /* access modifiers changed from: private */
    public String d;
    private RandomAccessFile e;
    /* access modifiers changed from: private */
    public Context f;

    /* compiled from: DexDownLoad */
    class a implements Runnable {
        private int b;
        private cq c;
        private String d;

        a(int i) {
            this.b = i;
        }

        a(cq cqVar) {
            this.b = 2;
            this.c = cqVar;
        }

        a(cq cqVar, String str) {
            this.b = 3;
            this.d = str;
            this.c = cqVar;
        }

        public final void run() {
            switch (this.b) {
                case 0:
                    try {
                        if (cw.this.e()) {
                            eb ebVar = new eb(cw.this.f, cw.this.c.a(), cw.this.c.b(), "O008");
                            ebVar.a("{\"param_int_first\":0}");
                            ec.a(ebVar, cw.this.f);
                            cw.this.b.a(cw.this);
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        cj.a(th, "dDownLoad", "run()");
                        return;
                    }
                case 1:
                    try {
                        db.a(cw.this.f, cw.this.c);
                        return;
                    } catch (Throwable th2) {
                        return;
                    }
                case 2:
                    try {
                        db.a(cw.this.f, this.c, cw.this.c, cw.this.d, cw.this.a.d);
                        db.a(cw.this.f, cw.this.c);
                        return;
                    } catch (Throwable th3) {
                        cj.a(th3, "dDownLoad", "onFinish2");
                        return;
                    }
                case 3:
                    try {
                        db.a(cw.this.f, this.c, cw.this.c, cw.this.d, this.d);
                        db.a(cw.this.f, cw.this.c);
                        return;
                    } catch (Throwable th4) {
                        cj.a(th4, "dDownLoad", "processDownloadedFile()");
                        return;
                    }
                default:
                    return;
            }
        }
    }

    public cw(Context context, cx cxVar, bz bzVar) {
        try {
            this.f = context.getApplicationContext();
            this.c = bzVar;
            if (cxVar != null) {
                this.a = cxVar;
                this.b = new dp(new da(this.a));
                this.d = db.a(context, this.a.a);
            }
        } catch (Throwable th) {
            cj.a(th, "dDownLoad", "DexDownLoad()");
        }
    }

    public final void a() {
        try {
            dg.b().a().submit(new a(0));
        } catch (Throwable th) {
            cj.a(th, "dDownLoad", "startDownload()");
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:?, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        return true;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:2:0x0015, B:17:0x0087] */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean a(com.amap.api.col.sl.cq r7, com.amap.api.col.sl.df r8, com.amap.api.col.sl.cx r9) {
        /*
            r6 = this;
            r0 = 1
            java.lang.String r1 = r9.b
            java.lang.String r2 = r9.c
            java.lang.String r3 = r9.d
            java.lang.String r4 = r9.e
            java.lang.String r4 = "errorstatus"
            java.lang.String r5 = r8.f()
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L_0x0055
            java.io.File r1 = new java.io.File     // Catch:{ Throwable -> 0x0053 }
            android.content.Context r2 = r6.f     // Catch:{ Throwable -> 0x0053 }
            com.amap.api.col.sl.bz r3 = r6.c     // Catch:{ Throwable -> 0x0053 }
            java.lang.String r3 = r3.a()     // Catch:{ Throwable -> 0x0053 }
            com.amap.api.col.sl.bz r4 = r6.c     // Catch:{ Throwable -> 0x0053 }
            java.lang.String r4 = r4.b()     // Catch:{ Throwable -> 0x0053 }
            java.lang.String r2 = com.amap.api.col.sl.db.b(r2, r3, r4)     // Catch:{ Throwable -> 0x0053 }
            r1.<init>(r2)     // Catch:{ Throwable -> 0x0053 }
            boolean r1 = r1.exists()     // Catch:{ Throwable -> 0x0053 }
            if (r1 != 0) goto L_0x0040
            android.content.Context r1 = r6.f     // Catch:{ Throwable -> 0x0053 }
            com.amap.api.col.sl.bz r2 = r6.c     // Catch:{ Throwable -> 0x0053 }
            java.lang.String r1 = com.amap.api.col.sl.db.a(r1, r7, r2)     // Catch:{ Throwable -> 0x0053 }
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch:{ Throwable -> 0x0053 }
            if (r1 == 0) goto L_0x0041
        L_0x0040:
            return r0
        L_0x0041:
            com.amap.api.col.sl.dg r1 = com.amap.api.col.sl.dg.b()     // Catch:{ Throwable -> 0x0053 }
            java.util.concurrent.ExecutorService r1 = r1.a()     // Catch:{ Throwable -> 0x0053 }
            com.amap.api.col.sl.cw$a r2 = new com.amap.api.col.sl.cw$a     // Catch:{ Throwable -> 0x0053 }
            r3 = 1
            r2.<init>(r3)     // Catch:{ Throwable -> 0x0053 }
            r1.submit(r2)     // Catch:{ Throwable -> 0x0053 }
            goto L_0x0040
        L_0x0053:
            r1 = move-exception
            goto L_0x0040
        L_0x0055:
            java.io.File r4 = new java.io.File
            java.lang.String r5 = r6.d
            r4.<init>(r5)
            boolean r4 = r4.exists()
            if (r4 != 0) goto L_0x0064
            r0 = 0
            goto L_0x0040
        L_0x0064:
            android.content.Context r4 = r6.f
            java.lang.String r4 = com.amap.api.col.sl.db.a(r4, r1, r2)
            java.lang.String r2 = com.amap.api.col.sl.df.a(r4, r1, r2, r3)
            java.lang.Class<com.amap.api.col.sl.df> r4 = com.amap.api.col.sl.df.class
            java.util.List r2 = r7.b(r2, r4)
            if (r2 == 0) goto L_0x007c
            int r2 = r2.size()
            if (r2 > 0) goto L_0x0040
        L_0x007c:
            android.content.Context r2 = r6.f
            com.amap.api.col.sl.bz r4 = r6.c
            java.lang.String r4 = r4.b()
            com.amap.api.col.sl.db.a(r2, r1, r4)
            com.amap.api.col.sl.dg r1 = com.amap.api.col.sl.dg.b()     // Catch:{ Throwable -> 0x0098 }
            java.util.concurrent.ExecutorService r1 = r1.a()     // Catch:{ Throwable -> 0x0098 }
            com.amap.api.col.sl.cw$a r2 = new com.amap.api.col.sl.cw$a     // Catch:{ Throwable -> 0x0098 }
            r2.<init>(r7, r3)     // Catch:{ Throwable -> 0x0098 }
            r1.submit(r2)     // Catch:{ Throwable -> 0x0098 }
            goto L_0x0040
        L_0x0098:
            r1 = move-exception
            goto L_0x0040
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.cw.a(com.amap.api.col.sl.cq, com.amap.api.col.sl.df, com.amap.api.col.sl.cx):boolean");
    }

    private boolean a(cq cqVar) {
        try {
            List a2 = com.amap.api.col.sl.db.a.a(cqVar, this.a.b, "used");
            if (a2 != null && a2.size() > 0 && dh.a(((df) a2.get(0)).e(), this.a.d) > 0) {
                return true;
            }
        } catch (Throwable th) {
            cj.a(th, "dDownLoad", "isUsed()");
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public final boolean e() {
        boolean z;
        try {
            if (this.c != null && this.c.a().equals(this.a.b) && this.c.b().equals(this.a.c)) {
                if (VERSION.SDK_INT >= this.a.g && VERSION.SDK_INT <= this.a.f) {
                    if (bu.p(this.f) == 1) {
                        cq cqVar = new cq(this.f, dd.b());
                        if (a(cqVar)) {
                            z = true;
                        } else {
                            df a2 = com.amap.api.col.sl.db.a.a(cqVar, this.a.a);
                            z = a2 != null ? a(cqVar, a2, this.a) : false;
                        }
                        if (!z) {
                            db.b(this.f, this.c.a());
                            return true;
                        }
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            cj.a(th, "dDownLoad", "isNeedDownload()");
            return false;
        }
    }

    public final void a(byte[] bArr, long j) {
        try {
            if (this.e == null) {
                File file = new File(this.d);
                File parentFile = file.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdirs();
                }
                this.e = new RandomAccessFile(file, "rw");
            }
            this.e.seek(j);
            this.e.write(bArr);
        } catch (Throwable th) {
            cj.a(th, "dDownLoad", "onDownload()");
        }
    }

    public final void d() {
        try {
            dh.a((Closeable) this.e);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b() {
        /*
            r7 = this;
            java.io.RandomAccessFile r0 = r7.e     // Catch:{ Throwable -> 0x009b }
            if (r0 != 0) goto L_0x0005
        L_0x0004:
            return
        L_0x0005:
            java.io.RandomAccessFile r0 = r7.e     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.dh.a(r0)     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.cx r0 = r7.a     // Catch:{ Throwable -> 0x009b }
            java.lang.String r2 = r0.b()     // Catch:{ Throwable -> 0x009b }
            java.lang.String r0 = r7.d     // Catch:{ Throwable -> 0x009b }
            boolean r0 = com.amap.api.col.sl.dh.b(r0, r2)     // Catch:{ Throwable -> 0x009b }
            if (r0 == 0) goto L_0x00b7
            com.amap.api.col.sl.cx r0 = r7.a     // Catch:{ Throwable -> 0x009b }
            java.lang.String r4 = r0.c     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.cq r6 = new com.amap.api.col.sl.cq     // Catch:{ Throwable -> 0x009b }
            android.content.Context r0 = r7.f     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.dd r1 = com.amap.api.col.sl.dd.b()     // Catch:{ Throwable -> 0x009b }
            r6.<init>(r0, r1)     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.df$a r0 = new com.amap.api.col.sl.df$a     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.cx r1 = r7.a     // Catch:{ Throwable -> 0x009b }
            java.lang.String r1 = r1.a     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.cx r3 = r7.a     // Catch:{ Throwable -> 0x009b }
            java.lang.String r3 = r3.b     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.cx r5 = r7.a     // Catch:{ Throwable -> 0x009b }
            java.lang.String r5 = r5.d     // Catch:{ Throwable -> 0x009b }
            r0.<init>(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x009b }
            java.lang.String r1 = "copy"
            com.amap.api.col.sl.df$a r0 = r0.a(r1)     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.df r0 = r0.a()     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.cx r1 = r7.a     // Catch:{ Throwable -> 0x009b }
            java.lang.String r1 = r1.a     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.cx r2 = r7.a     // Catch:{ Throwable -> 0x009b }
            java.lang.String r2 = r2.b     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.cx r3 = r7.a     // Catch:{ Throwable -> 0x009b }
            java.lang.String r3 = r3.d     // Catch:{ Throwable -> 0x009b }
            java.lang.String r1 = com.amap.api.col.sl.df.a(r1, r2, r4, r3)     // Catch:{ Throwable -> 0x009b }
            r6.a(r0, r1)     // Catch:{ Throwable -> 0x009b }
            android.content.Context r0 = r7.f     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.cx r1 = r7.a     // Catch:{ Throwable -> 0x009b }
            java.lang.String r1 = r1.b     // Catch:{ Throwable -> 0x009b }
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)     // Catch:{ Throwable -> 0x00a5 }
            android.content.SharedPreferences$Editor r0 = r0.edit()     // Catch:{ Throwable -> 0x00a5 }
            r0.clear()     // Catch:{ Throwable -> 0x00a5 }
            r0.commit()     // Catch:{ Throwable -> 0x00a5 }
        L_0x006a:
            com.amap.api.col.sl.dg r0 = com.amap.api.col.sl.dg.b()     // Catch:{ Throwable -> 0x00ae }
            java.util.concurrent.ExecutorService r0 = r0.a()     // Catch:{ Throwable -> 0x00ae }
            com.amap.api.col.sl.cw$a r1 = new com.amap.api.col.sl.cw$a     // Catch:{ Throwable -> 0x00ae }
            r1.<init>(r6)     // Catch:{ Throwable -> 0x00ae }
            r0.submit(r1)     // Catch:{ Throwable -> 0x00ae }
        L_0x007a:
            com.amap.api.col.sl.eb r0 = new com.amap.api.col.sl.eb     // Catch:{ Throwable -> 0x009b }
            android.content.Context r1 = r7.f     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.bz r2 = r7.c     // Catch:{ Throwable -> 0x009b }
            java.lang.String r2 = r2.a()     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.bz r3 = r7.c     // Catch:{ Throwable -> 0x009b }
            java.lang.String r3 = r3.b()     // Catch:{ Throwable -> 0x009b }
            java.lang.String r4 = "O008"
            r0.<init>(r1, r2, r3, r4)     // Catch:{ Throwable -> 0x009b }
            java.lang.String r1 = "{\"param_int_first\":1}"
            r0.a(r1)     // Catch:{ Throwable -> 0x009b }
            android.content.Context r1 = r7.f     // Catch:{ Throwable -> 0x009b }
            com.amap.api.col.sl.ec.a(r0, r1)     // Catch:{ Throwable -> 0x009b }
            goto L_0x0004
        L_0x009b:
            r0 = move-exception
            java.lang.String r1 = "dDownLoad"
            java.lang.String r2 = "onFinish()"
            com.amap.api.col.sl.cj.a(r0, r1, r2)
            goto L_0x0004
        L_0x00a5:
            r0 = move-exception
            java.lang.String r1 = "dDownLoad"
            java.lang.String r2 = "clearMarker()"
            com.amap.api.col.sl.cj.a(r0, r1, r2)     // Catch:{ Throwable -> 0x009b }
            goto L_0x006a
        L_0x00ae:
            r0 = move-exception
            java.lang.String r1 = "dDownLoad"
            java.lang.String r2 = "onFinish1"
            com.amap.api.col.sl.cj.a(r0, r1, r2)     // Catch:{ Throwable -> 0x009b }
            goto L_0x007a
        L_0x00b7:
            java.io.File r0 = new java.io.File     // Catch:{ Throwable -> 0x00c3 }
            java.lang.String r1 = r7.d     // Catch:{ Throwable -> 0x00c3 }
            r0.<init>(r1)     // Catch:{ Throwable -> 0x00c3 }
            r0.delete()     // Catch:{ Throwable -> 0x00c3 }
            goto L_0x0004
        L_0x00c3:
            r0 = move-exception
            java.lang.String r1 = "dDownLoad"
            java.lang.String r2 = "onFinish"
            com.amap.api.col.sl.cj.a(r0, r1, r2)     // Catch:{ Throwable -> 0x009b }
            goto L_0x0004
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.cw.b():void");
    }

    public final void c() {
    }
}
