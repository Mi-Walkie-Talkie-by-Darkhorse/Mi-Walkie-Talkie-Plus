package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.amap.api.mapcore.util.hr.a;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.List;

/* compiled from: DexDownLoad */
public class gy extends Thread implements a {
    private gz a;
    private hr b;
    private fx c;
    private String d;
    private RandomAccessFile e;
    private Context f;

    public gy(Context context, gz gzVar, fx fxVar) {
        try {
            this.f = context.getApplicationContext();
            this.c = fxVar;
            if (gzVar != null) {
                this.a = gzVar;
                this.b = new hr(new hc(this.a));
                this.d = hd.a(context, this.a.a);
            }
        } catch (Throwable th) {
            hj.a(th, "dDownLoad", "DexDownLoad()");
        }
    }

    public void a() {
        try {
            start();
        } catch (Throwable th) {
            hj.a(th, "dDownLoad", "startDownload()");
        }
    }

    public void run() {
        try {
            if (c()) {
                ib ibVar = new ib(this.f, this.c.a(), this.c.b(), "O008");
                ibVar.a("{\"param_int_first\":0}");
                ic.a(ibVar, this.f);
                this.b.a(this);
            }
        } catch (Throwable th) {
            hj.a(th, "dDownLoad", "run()");
        }
    }

    private boolean a(gl glVar, hh hhVar, gz gzVar) {
        String str = gzVar.b;
        String str2 = gzVar.c;
        String str3 = gzVar.d;
        String str4 = gzVar.e;
        if ("errorstatus".equals(hhVar.f())) {
            b(glVar);
            return true;
        } else if (!new File(this.d).exists()) {
            return false;
        } else {
            List b2 = glVar.b(hh.a(hd.a(this.f, str, str2), str, str2, str3), hh.class);
            if (b2 != null && b2.size() > 0) {
                return true;
            }
            try {
                hd.a(this.f, str, this.c.b());
                hd.a(this.f, glVar, this.c, this.d, str3);
                hd.a(this.f, this.c);
                return true;
            } catch (Throwable th) {
                hj.a(th, "dDownLoad", "processDownloadedFile()");
                return true;
            }
        }
    }

    private boolean a(gl glVar) {
        try {
            List a2 = hd.a.a(glVar, this.a.b, "used");
            if (a2 != null && a2.size() > 0 && hj.a(((hh) a2.get(0)).e(), this.a.d) > 0) {
                return true;
            }
        } catch (Throwable th) {
            hj.a(th, "dDownLoad", "isUsed()");
        }
        return false;
    }

    private boolean f() {
        gl glVar = new gl(this.f, hf.a());
        if (a(glVar)) {
            return true;
        }
        hh a2 = hd.a.a(glVar, this.a.a);
        if (a2 != null) {
            return a(glVar, a2, this.a);
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public boolean b() {
        if (this.c != null && this.c.a().equals(this.a.b) && this.c.b().equals(this.a.c)) {
            return true;
        }
        return false;
    }

    private boolean g() {
        return VERSION.SDK_INT >= this.a.g && VERSION.SDK_INT <= this.a.f;
    }

    private boolean a(Context context) {
        return fs.p(context) == 1;
    }

    /* access modifiers changed from: 0000 */
    public boolean c() {
        try {
            if (!b() || !g() || !a(this.f) || f()) {
                return false;
            }
            hd.b(this.f, this.c.a());
            return true;
        } catch (Throwable th) {
            hj.a(th, "dDownLoad", "isNeedDownload()");
            return false;
        }
    }

    public void a(byte[] bArr, long j) {
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
            hj.a(th, "dDownLoad", "onDownload()");
        }
    }

    public void a(Throwable th) {
        try {
            hj.a((Closeable) this.e);
        } catch (Throwable th2) {
            ThrowableExtension.printStackTrace(th2);
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void e() {
        /*
            r5 = this;
            java.io.RandomAccessFile r0 = r5.e     // Catch:{ Throwable -> 0x003b }
            if (r0 != 0) goto L_0x0005
        L_0x0004:
            return
        L_0x0005:
            java.io.RandomAccessFile r0 = r5.e     // Catch:{ Throwable -> 0x003b }
            com.amap.api.mapcore.util.hj.a(r0)     // Catch:{ Throwable -> 0x003b }
            com.amap.api.mapcore.util.gz r0 = r5.a     // Catch:{ Throwable -> 0x003b }
            java.lang.String r0 = r0.b()     // Catch:{ Throwable -> 0x003b }
            java.lang.String r1 = r5.d     // Catch:{ Throwable -> 0x003b }
            boolean r1 = com.amap.api.mapcore.util.hj.b(r1, r0)     // Catch:{ Throwable -> 0x003b }
            if (r1 == 0) goto L_0x0044
            r5.a(r0)     // Catch:{ Throwable -> 0x003b }
            com.amap.api.mapcore.util.ib r0 = new com.amap.api.mapcore.util.ib     // Catch:{ Throwable -> 0x003b }
            android.content.Context r1 = r5.f     // Catch:{ Throwable -> 0x003b }
            com.amap.api.mapcore.util.fx r2 = r5.c     // Catch:{ Throwable -> 0x003b }
            java.lang.String r2 = r2.a()     // Catch:{ Throwable -> 0x003b }
            com.amap.api.mapcore.util.fx r3 = r5.c     // Catch:{ Throwable -> 0x003b }
            java.lang.String r3 = r3.b()     // Catch:{ Throwable -> 0x003b }
            java.lang.String r4 = "O008"
            r0.<init>(r1, r2, r3, r4)     // Catch:{ Throwable -> 0x003b }
            java.lang.String r1 = "{\"param_int_first\":1}"
            r0.a(r1)     // Catch:{ Throwable -> 0x003b }
            android.content.Context r1 = r5.f     // Catch:{ Throwable -> 0x003b }
            com.amap.api.mapcore.util.ic.a(r0, r1)     // Catch:{ Throwable -> 0x003b }
            goto L_0x0004
        L_0x003b:
            r0 = move-exception
            java.lang.String r1 = "dDownLoad"
            java.lang.String r2 = "onFinish()"
            com.amap.api.mapcore.util.hj.a(r0, r1, r2)
            goto L_0x0004
        L_0x0044:
            java.io.File r0 = new java.io.File     // Catch:{ Throwable -> 0x004f }
            java.lang.String r1 = r5.d     // Catch:{ Throwable -> 0x004f }
            r0.<init>(r1)     // Catch:{ Throwable -> 0x004f }
            r0.delete()     // Catch:{ Throwable -> 0x004f }
            goto L_0x0004
        L_0x004f:
            r0 = move-exception
            java.lang.String r1 = "dDownLoad"
            java.lang.String r2 = "onFinish"
            com.amap.api.mapcore.util.hj.a(r0, r1, r2)     // Catch:{ Throwable -> 0x003b }
            goto L_0x0004
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.gy.e():void");
    }

    public void d() {
    }

    private void b(gl glVar) {
        if (!new File(hd.b(this.f, this.c.a(), this.c.b())).exists() && !TextUtils.isEmpty(hd.a(this.f, glVar, this.c))) {
            try {
                hd.a(this.f, this.c);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    private void a(String str) {
        String c2 = this.a.c();
        gl glVar = new gl(this.f, hf.a());
        hd.a.a(glVar, new hh.a(this.a.a, str, this.a.b, c2, this.a.d).a("copy").a(), hh.a(this.a.a, this.a.b, c2, this.a.d));
        a(this.f, this.a.b);
        try {
            hd.a(this.f, glVar, this.c, this.d, this.a.d);
            hd.a(this.f, this.c);
        } catch (Throwable th) {
            hj.a(th, "dDownLoad", "onFinish1");
        }
    }

    private void a(Context context, String str) {
        try {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.clear();
            edit.commit();
        } catch (Throwable th) {
            hj.a(th, "dDownLoad", "clearMarker()");
        }
    }
}
