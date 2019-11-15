package com.liulishuo.filedownloader;

import android.text.TextUtils;
import com.liulishuo.filedownloader.a.C0042a;
import com.liulishuo.filedownloader.a.b;
import com.liulishuo.filedownloader.e.d;
import com.liulishuo.filedownloader.e.g;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import java.io.File;
import java.util.ArrayList;

/* compiled from: DownloadTask */
public class c implements a, b, a {
    volatile int a = 0;
    private final x b;
    private final com.liulishuo.filedownloader.x.a c;
    private int d;
    private ArrayList<C0042a> e;
    private final String f;
    private String g;
    private String h;
    private boolean i;
    private FileDownloadHeader j;
    private i k;
    private Object l;
    private int m = 0;
    private boolean n = false;
    private boolean o = false;
    private int p = 100;
    private int q = 10;
    private boolean r = false;
    /* access modifiers changed from: private */
    public boolean s = false;
    private final Object t;
    private final Object u = new Object();
    private volatile boolean v = false;

    /* compiled from: DownloadTask */
    private static final class a implements com.liulishuo.filedownloader.a.c {
        private final c a;

        private a(c cVar) {
            this.a = cVar;
            this.a.s = true;
        }

        public int a() {
            int d = this.a.d();
            if (d.a) {
                d.c(this, "add the task[%d] to the queue", Integer.valueOf(d));
            }
            h.a().c(this.a);
            return d;
        }
    }

    c(String str) {
        this.f = str;
        this.t = new Object();
        d dVar = new d(this, this.t);
        this.b = dVar;
        this.c = dVar;
    }

    public a a(String str) {
        return a(str, false);
    }

    public a a(String str, boolean z) {
        this.g = str;
        if (d.a) {
            d.c(this, "setPath %s", str);
        }
        this.i = z;
        if (z) {
            this.h = null;
        } else {
            this.h = new File(str).getName();
        }
        return this;
    }

    public a a(i iVar) {
        this.k = iVar;
        if (d.a) {
            d.c(this, "setListener %s", iVar);
        }
        return this;
    }

    public a a(Object obj) {
        this.l = obj;
        if (d.a) {
            d.c(this, "setTag %s", obj);
        }
        return this;
    }

    public a a(C0042a aVar) {
        if (this.e == null) {
            this.e = new ArrayList<>();
        }
        if (!this.e.contains(aVar)) {
            this.e.add(aVar);
        }
        return this;
    }

    public boolean b(C0042a aVar) {
        return this.e != null && this.e.remove(aVar);
    }

    public com.liulishuo.filedownloader.a.c a() {
        return new a();
    }

    public boolean J() {
        return this.b.f() != 0;
    }

    public boolean K() {
        if (r.a().e().a(this)) {
            return true;
        }
        return com.liulishuo.filedownloader.model.b.b(q());
    }

    public boolean b() {
        return this.a != 0;
    }

    public int c() {
        if (!this.s) {
            return O();
        }
        throw new IllegalStateException("If you start the task manually, it means this task doesn't belong to a queue, so you must not invoke BaseDownloadTask#ready() or InQueueTask#enqueue() before you start() this method. For detail: If this task doesn't belong to a queue, what is just an isolated task, you just need to invoke BaseDownloadTask#start() to start this task, that's all. In other words, If this task doesn't belong to a queue, you must not invoke BaseDownloadTask#ready() method or InQueueTask#enqueue() method before invoke BaseDownloadTask#start(), If you do that and if there is the same listener object to start a queue in another thread, this task may be assembled by the queue, in that case, when you invoke BaseDownloadTask#start() manually to start this task or this task is started by the queue, there is an exception buried in there, because this task object is started two times without declare BaseDownloadTask#reuse() : 1. you invoke BaseDownloadTask#start() manually;  2. the queue start this task automatically.");
    }

    private int O() {
        if (!J()) {
            if (!b()) {
                C();
            }
            this.b.e();
            return d();
        } else if (K()) {
            throw new IllegalStateException(g.a("This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create", Integer.valueOf(d())));
        } else {
            throw new IllegalStateException("This task is dirty to restart, If you want to reuse this task, please invoke #reuse method manually and retry to restart again." + this.b.toString());
        }
    }

    public int d() {
        if (this.d != 0) {
            return this.d;
        }
        if (TextUtils.isEmpty(this.g) || TextUtils.isEmpty(this.f)) {
            return 0;
        }
        int a2 = g.a(this.f, this.g, this.i);
        this.d = a2;
        return a2;
    }

    public String e() {
        return this.f;
    }

    public int f() {
        return this.p;
    }

    public int g() {
        return this.q;
    }

    public String h() {
        return this.g;
    }

    public boolean i() {
        return this.i;
    }

    public String j() {
        return this.h;
    }

    public String k() {
        return g.a(h(), i(), j());
    }

    public i l() {
        return this.k;
    }

    public int m() {
        if (this.b.g() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) this.b.g();
    }

    public long n() {
        return this.b.g();
    }

    public int o() {
        if (this.b.h() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) this.b.h();
    }

    public long p() {
        return this.b.h();
    }

    public byte q() {
        return this.b.f();
    }

    public boolean r() {
        return this.r;
    }

    public Throwable s() {
        return this.b.i();
    }

    public Object t() {
        return this.l;
    }

    public int u() {
        return this.m;
    }

    public int v() {
        return this.b.j();
    }

    public boolean w() {
        return this.n;
    }

    public boolean x() {
        return this.o;
    }

    public FileDownloadHeader L() {
        return this.j;
    }

    public void E() {
        this.v = true;
    }

    public void F() {
        this.b.k();
        if (h.a().a((b) this)) {
            this.v = false;
        }
    }

    public void G() {
        O();
    }

    public Object H() {
        return this.t;
    }

    public boolean I() {
        return this.e != null && this.e.size() > 0;
    }

    public boolean D() {
        return this.v;
    }

    public b M() {
        return this;
    }

    public void b(String str) {
        this.h = str;
    }

    public ArrayList<C0042a> N() {
        return this.e;
    }

    public a y() {
        return this;
    }

    public com.liulishuo.filedownloader.x.a z() {
        return this.c;
    }

    public boolean a(int i2) {
        return d() == i2;
    }

    public boolean A() {
        return com.liulishuo.filedownloader.model.b.a((int) q());
    }

    public int B() {
        return this.a;
    }

    public void C() {
        int hashCode;
        if (l() != null) {
            hashCode = l().hashCode();
        } else {
            hashCode = hashCode();
        }
        this.a = hashCode;
    }

    public String toString() {
        return g.a("%d@%s", Integer.valueOf(d()), super.toString());
    }
}
