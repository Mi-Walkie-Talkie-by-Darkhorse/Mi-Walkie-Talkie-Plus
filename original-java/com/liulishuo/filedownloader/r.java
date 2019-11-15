package com.liulishuo.filedownloader;

import android.content.Context;
import com.liulishuo.filedownloader.e.c;

/* compiled from: FileDownloader */
public class r {
    private static final Object a = new Object();
    private static final Object c = new Object();
    private w b;
    private v d;

    /* compiled from: FileDownloader */
    private static final class a {
        /* access modifiers changed from: private */
        public static final r a = new r();
    }

    public static void a(Context context) {
        c.a(context.getApplicationContext());
    }

    public static r a() {
        return a.a;
    }

    public a a(String str) {
        return new c(str);
    }

    public void b() {
        if (!c()) {
            n.a().a(c.a());
        }
    }

    public boolean c() {
        return n.a().c();
    }

    public void a(e eVar) {
        f.a().a("event.service.connect.changed", (com.liulishuo.filedownloader.event.c) eVar);
    }

    /* access modifiers changed from: 0000 */
    public w d() {
        if (this.b == null) {
            synchronized (a) {
                if (this.b == null) {
                    this.b = new ab();
                }
            }
        }
        return this.b;
    }

    /* access modifiers changed from: 0000 */
    public v e() {
        if (this.d == null) {
            synchronized (c) {
                if (this.d == null) {
                    this.d = new z();
                    a((e) this.d);
                }
            }
        }
        return this.d;
    }
}
