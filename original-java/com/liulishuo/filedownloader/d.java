package com.liulishuo.filedownloader;

import com.liulishuo.filedownloader.a.C0042a;
import com.liulishuo.filedownloader.e.g;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.x.b;
import java.io.File;
import java.io.IOException;
import java.security.InvalidParameterException;
import java.util.ArrayList;

/* compiled from: DownloadTaskHunter */
public class d implements com.liulishuo.filedownloader.a.d, x, com.liulishuo.filedownloader.x.a, b {
    private t a;
    private final Object b;
    private final a c;
    private volatile byte d = 0;
    private Throwable e = null;
    private final s.b f;
    private final com.liulishuo.filedownloader.s.a g;
    private long h;
    private long i;
    private int j;
    private boolean k;
    private boolean l;
    private String m;
    private boolean n = false;

    /* compiled from: DownloadTaskHunter */
    interface a {
        FileDownloadHeader L();

        a.b M();

        ArrayList<C0042a> N();

        void b(String str);
    }

    public boolean a(MessageSnapshot messageSnapshot) {
        if (com.liulishuo.filedownloader.model.b.a(f(), messageSnapshot.b())) {
            e(messageSnapshot);
            return true;
        } else if (!com.liulishuo.filedownloader.e.d.a) {
            return false;
        } else {
            com.liulishuo.filedownloader.e.d.c(this, "can't update mStatus change by keep ahead, %d, but the current mStatus is %d, %d", Byte.valueOf(this.d), Byte.valueOf(f()), Integer.valueOf(n()));
            return false;
        }
    }

    public boolean b(MessageSnapshot messageSnapshot) {
        byte f2 = f();
        byte b2 = messageSnapshot.b();
        if (-2 != f2 || !com.liulishuo.filedownloader.model.b.b(b2)) {
            if (!com.liulishuo.filedownloader.model.b.b(f2, b2)) {
                if (com.liulishuo.filedownloader.e.d.a) {
                    com.liulishuo.filedownloader.e.d.c(this, "can't update mStatus change by keep flow, %d, but the current mStatus is %d, %d", Byte.valueOf(this.d), Byte.valueOf(f()), Integer.valueOf(n()));
                }
                return false;
            }
            e(messageSnapshot);
            return true;
        } else if (!com.liulishuo.filedownloader.e.d.a) {
            return true;
        } else {
            com.liulishuo.filedownloader.e.d.c(this, "High concurrent cause, callback pending, but has already be paused %d", Integer.valueOf(n()));
            return true;
        }
    }

    public boolean c(MessageSnapshot messageSnapshot) {
        if (!com.liulishuo.filedownloader.model.b.a(this.c.M().y())) {
            return false;
        }
        e(messageSnapshot);
        return true;
    }

    public boolean d(MessageSnapshot messageSnapshot) {
        if (!this.c.M().y().i() || messageSnapshot.b() != -4 || f() != 2) {
            return false;
        }
        e(messageSnapshot);
        return true;
    }

    public t d() {
        return this.a;
    }

    public MessageSnapshot a(Throwable th) {
        this.d = -1;
        this.e = th;
        return com.liulishuo.filedownloader.message.d.a(n(), g(), th);
    }

    private void e(MessageSnapshot messageSnapshot) {
        int i2;
        a y = this.c.M().y();
        byte b2 = messageSnapshot.b();
        this.d = b2;
        this.k = messageSnapshot.n();
        switch (b2) {
            case -4:
                this.f.a();
                int a2 = h.a().a(y.d());
                if (a2 > 1 || !y.i()) {
                    i2 = 0;
                } else {
                    i2 = h.a().a(g.b(y.e(), y.k()));
                }
                if (i2 + a2 <= 1) {
                    byte b3 = n.a().b(y.d());
                    com.liulishuo.filedownloader.e.d.d(this, "warn, but no mListener to receive, switch to pending %d %d", Integer.valueOf(y.d()), Integer.valueOf(b3));
                    if (com.liulishuo.filedownloader.model.b.b(b3)) {
                        this.d = 1;
                        this.i = messageSnapshot.d();
                        this.h = messageSnapshot.i();
                        this.f.a(this.h);
                        this.a.a(((com.liulishuo.filedownloader.message.MessageSnapshot.a) messageSnapshot).l());
                        return;
                    }
                }
                h.a().a(this.c.M(), messageSnapshot);
                return;
            case -3:
                this.n = messageSnapshot.e();
                this.h = messageSnapshot.d();
                this.i = messageSnapshot.d();
                h.a().a(this.c.M(), messageSnapshot);
                return;
            case -1:
                this.e = messageSnapshot.j();
                this.h = messageSnapshot.i();
                h.a().a(this.c.M(), messageSnapshot);
                return;
            case 1:
                this.h = messageSnapshot.i();
                this.i = messageSnapshot.d();
                this.a.a(messageSnapshot);
                return;
            case 2:
                this.i = messageSnapshot.d();
                this.l = messageSnapshot.g();
                this.m = messageSnapshot.h();
                String f2 = messageSnapshot.f();
                if (f2 != null) {
                    if (y.j() != null) {
                        com.liulishuo.filedownloader.e.d.d(this, "already has mFilename[%s], but assign mFilename[%s] again", y.j(), f2);
                    }
                    this.c.b(f2);
                }
                this.f.a(this.h);
                this.a.c(messageSnapshot);
                return;
            case 3:
                this.h = messageSnapshot.i();
                this.f.c(messageSnapshot.i());
                this.a.d(messageSnapshot);
                return;
            case 5:
                this.h = messageSnapshot.i();
                this.e = messageSnapshot.j();
                this.j = messageSnapshot.k();
                this.f.a();
                this.a.f(messageSnapshot);
                return;
            case 6:
                this.a.b(messageSnapshot);
                return;
            default:
                return;
        }
    }

    public void a() {
        if (l.b()) {
            l.a().b(this.c.M().y());
        }
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.e(this, "filedownloader:lifecycle:start %s by %d ", toString(), Byte.valueOf(f()));
        }
    }

    public void b() {
        if (l.b() && f() == 6) {
            l.a().c(this.c.M().y());
        }
    }

    public void c() {
        a y = this.c.M().y();
        if (l.b()) {
            l.a().d(y);
        }
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.e(this, "filedownloader:lifecycle:over %s by %d ", toString(), Byte.valueOf(f()));
        }
        this.f.b(this.h);
        if (this.c.N() != null) {
            ArrayList arrayList = (ArrayList) this.c.N().clone();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((C0042a) arrayList.get(i2)).a(y);
            }
        }
        r.a().e().b(this.c.M());
    }

    d(a aVar, Object obj) {
        this.b = obj;
        this.c = aVar;
        b bVar = new b();
        this.f = bVar;
        this.g = bVar;
        this.a = new k(aVar.M(), this);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x003b, code lost:
        if (com.liulishuo.filedownloader.l.b() == false) goto L_0x0044;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x003d, code lost:
        com.liulishuo.filedownloader.l.a().a(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0046, code lost:
        if (com.liulishuo.filedownloader.e.d.a == false) goto L_0x0069;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0048, code lost:
        com.liulishuo.filedownloader.e.d.e(r8, "call start Url[%s], Path[%s] Listener[%s], Tag[%s]", r3.e(), r3.h(), r3.l(), r3.t());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        m();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x006c, code lost:
        r0 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x008f, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0090, code lost:
        com.liulishuo.filedownloader.h.a().b(r0);
        com.liulishuo.filedownloader.h.a().a(r0, a(r3));
        r0 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x002d, code lost:
        r0 = r8.c.M();
        r3 = r0.y();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void e() {
        /*
            r8 = this;
            r7 = 2
            r1 = 1
            r2 = 0
            java.lang.Object r3 = r8.b
            monitor-enter(r3)
            byte r0 = r8.d     // Catch:{ all -> 0x008c }
            if (r0 == 0) goto L_0x0028
            java.lang.String r0 = "High concurrent cause, this task %d will not input to launch pool, because of the status isn't idle : %d"
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ all -> 0x008c }
            r2 = 0
            int r4 = r8.n()     // Catch:{ all -> 0x008c }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ all -> 0x008c }
            r1[r2] = r4     // Catch:{ all -> 0x008c }
            r2 = 1
            byte r4 = r8.d     // Catch:{ all -> 0x008c }
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)     // Catch:{ all -> 0x008c }
            r1[r2] = r4     // Catch:{ all -> 0x008c }
            com.liulishuo.filedownloader.e.d.d(r8, r0, r1)     // Catch:{ all -> 0x008c }
            monitor-exit(r3)     // Catch:{ all -> 0x008c }
        L_0x0027:
            return
        L_0x0028:
            r0 = 10
            r8.d = r0     // Catch:{ all -> 0x008c }
            monitor-exit(r3)     // Catch:{ all -> 0x008c }
            com.liulishuo.filedownloader.d$a r0 = r8.c
            com.liulishuo.filedownloader.a$b r0 = r0.M()
            com.liulishuo.filedownloader.a r3 = r0.y()
            boolean r4 = com.liulishuo.filedownloader.l.b()
            if (r4 == 0) goto L_0x0044
            com.liulishuo.filedownloader.l$a r4 = com.liulishuo.filedownloader.l.a()
            r4.a(r3)
        L_0x0044:
            boolean r4 = com.liulishuo.filedownloader.e.d.a
            if (r4 == 0) goto L_0x0069
            java.lang.String r4 = "call start Url[%s], Path[%s] Listener[%s], Tag[%s]"
            r5 = 4
            java.lang.Object[] r5 = new java.lang.Object[r5]
            java.lang.String r6 = r3.e()
            r5[r2] = r6
            java.lang.String r6 = r3.h()
            r5[r1] = r6
            com.liulishuo.filedownloader.i r6 = r3.l()
            r5[r7] = r6
            r6 = 3
            java.lang.Object r3 = r3.t()
            r5[r6] = r3
            com.liulishuo.filedownloader.e.d.e(r8, r4, r5)
        L_0x0069:
            r8.m()     // Catch:{ Throwable -> 0x008f }
            r0 = r1
        L_0x006d:
            if (r0 == 0) goto L_0x0076
            com.liulishuo.filedownloader.q r0 = com.liulishuo.filedownloader.q.a()
            r0.a(r8)
        L_0x0076:
            boolean r0 = com.liulishuo.filedownloader.e.d.a
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = "the task[%d] has been into the launch pool."
            java.lang.Object[] r1 = new java.lang.Object[r1]
            int r3 = r8.n()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r1[r2] = r3
            com.liulishuo.filedownloader.e.d.e(r8, r0, r1)
            goto L_0x0027
        L_0x008c:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x008c }
            throw r0
        L_0x008f:
            r3 = move-exception
            com.liulishuo.filedownloader.h r4 = com.liulishuo.filedownloader.h.a()
            r4.b(r0)
            com.liulishuo.filedownloader.h r4 = com.liulishuo.filedownloader.h.a()
            com.liulishuo.filedownloader.message.MessageSnapshot r3 = r8.a(r3)
            r4.a(r0, r3)
            r0 = r2
            goto L_0x006d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.d.e():void");
    }

    public byte f() {
        return this.d;
    }

    public long g() {
        return this.h;
    }

    public long h() {
        return this.i;
    }

    public Throwable i() {
        return this.e;
    }

    public int j() {
        return this.j;
    }

    public void k() {
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.c(this, "free the task %d, when the status is %d", Integer.valueOf(n()), Byte.valueOf(this.d));
        }
        this.d = 0;
    }

    private void m() throws IOException {
        File file;
        a y = this.c.M().y();
        if (y.h() == null) {
            y.a(g.b(y.e()));
            if (com.liulishuo.filedownloader.e.d.a) {
                com.liulishuo.filedownloader.e.d.c(this, "save Path is null to %s", y.h());
            }
        }
        if (y.i()) {
            file = new File(y.h());
        } else {
            String i2 = g.i(y.h());
            if (i2 == null) {
                throw new InvalidParameterException(g.a("the provided mPath[%s] is invalid, can't find its directory", y.h()));
            }
            file = new File(i2);
        }
        if (!file.exists() && !file.mkdirs() && !file.exists()) {
            throw new IOException(g.a("Create parent directory failed, please make sure you have permission to create file or directory on the path: %s", file.getAbsolutePath()));
        }
    }

    private int n() {
        return this.c.M().y().d();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
        com.liulishuo.filedownloader.h.a().b(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0090, code lost:
        if (com.liulishuo.filedownloader.e.c.a(r9.d(), r9.k(), r9.r(), true) != false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0092, code lost:
        r0 = com.liulishuo.filedownloader.n.a().a(r9.e(), r9.h(), r9.i(), r9.f(), r9.g(), r9.u(), r9.r(), r12.c.L(), r9.x());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00c3, code lost:
        if (r12.d != -2) goto L_0x00e7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00c5, code lost:
        com.liulishuo.filedownloader.e.d.d(r12, "High concurrent cause, this task %d will be paused,because of the status is paused, so the pause action must be applied", java.lang.Integer.valueOf(n()));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00d8, code lost:
        if (r0 == false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00da, code lost:
        com.liulishuo.filedownloader.n.a().a(n());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00e7, code lost:
        if (r0 != false) goto L_0x0117;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00ed, code lost:
        if (r11.c(r10) != false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00ef, code lost:
        r0 = a((java.lang.Throwable) new java.lang.RuntimeException("Occur Unknown Error, when request to start maybe some problem in binder, maybe the process was killed in unexpected."));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0102, code lost:
        if (com.liulishuo.filedownloader.h.a().a(r10) == false) goto L_0x010e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0104, code lost:
        r11.b(r10);
        com.liulishuo.filedownloader.h.a().b(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x010e, code lost:
        com.liulishuo.filedownloader.h.a().a(r10, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0117, code lost:
        r11.b(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void l() {
        /*
            r12 = this;
            r2 = 10
            r1 = 2
            r4 = 0
            r3 = 1
            byte r0 = r12.d
            if (r0 == r2) goto L_0x0023
            java.lang.String r0 = "High concurrent cause, this task %d will not start, because the of status isn't toLaunchPool: %d"
            java.lang.Object[] r1 = new java.lang.Object[r1]
            int r2 = r12.n()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1[r4] = r2
            byte r2 = r12.d
            java.lang.Byte r2 = java.lang.Byte.valueOf(r2)
            r1[r3] = r2
            com.liulishuo.filedownloader.e.d.d(r12, r0, r1)
        L_0x0022:
            return
        L_0x0023:
            com.liulishuo.filedownloader.d$a r0 = r12.c
            com.liulishuo.filedownloader.a$b r10 = r0.M()
            com.liulishuo.filedownloader.a r9 = r10.y()
            com.liulishuo.filedownloader.r r0 = com.liulishuo.filedownloader.r.a()
            com.liulishuo.filedownloader.v r11 = r0.e()
            boolean r0 = r11.c(r10)     // Catch:{ Throwable -> 0x0063 }
            if (r0 != 0) goto L_0x0022
            java.lang.Object r1 = r12.b     // Catch:{ Throwable -> 0x0063 }
            monitor-enter(r1)     // Catch:{ Throwable -> 0x0063 }
            byte r0 = r12.d     // Catch:{ all -> 0x0060 }
            if (r0 == r2) goto L_0x0073
            java.lang.String r0 = "High concurrent cause, this task %d will not start, the status can't assign to toFileDownloadService, because the status isn't toLaunchPool: %d"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x0060 }
            r3 = 0
            int r4 = r12.n()     // Catch:{ all -> 0x0060 }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ all -> 0x0060 }
            r2[r3] = r4     // Catch:{ all -> 0x0060 }
            r3 = 1
            byte r4 = r12.d     // Catch:{ all -> 0x0060 }
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)     // Catch:{ all -> 0x0060 }
            r2[r3] = r4     // Catch:{ all -> 0x0060 }
            com.liulishuo.filedownloader.e.d.d(r12, r0, r2)     // Catch:{ all -> 0x0060 }
            monitor-exit(r1)     // Catch:{ all -> 0x0060 }
            goto L_0x0022
        L_0x0060:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0060 }
            throw r0     // Catch:{ Throwable -> 0x0063 }
        L_0x0063:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            com.liulishuo.filedownloader.h r1 = com.liulishuo.filedownloader.h.a()
            com.liulishuo.filedownloader.message.MessageSnapshot r0 = r12.a(r0)
            r1.a(r10, r0)
            goto L_0x0022
        L_0x0073:
            r0 = 11
            r12.d = r0     // Catch:{ all -> 0x0060 }
            monitor-exit(r1)     // Catch:{ all -> 0x0060 }
            com.liulishuo.filedownloader.h r0 = com.liulishuo.filedownloader.h.a()     // Catch:{ Throwable -> 0x0063 }
            r0.b(r10)     // Catch:{ Throwable -> 0x0063 }
            int r0 = r9.d()     // Catch:{ Throwable -> 0x0063 }
            java.lang.String r1 = r9.k()     // Catch:{ Throwable -> 0x0063 }
            boolean r2 = r9.r()     // Catch:{ Throwable -> 0x0063 }
            r3 = 1
            boolean r0 = com.liulishuo.filedownloader.e.c.a(r0, r1, r2, r3)     // Catch:{ Throwable -> 0x0063 }
            if (r0 != 0) goto L_0x0022
            com.liulishuo.filedownloader.n r0 = com.liulishuo.filedownloader.n.a()     // Catch:{ Throwable -> 0x0063 }
            java.lang.String r1 = r9.e()     // Catch:{ Throwable -> 0x0063 }
            java.lang.String r2 = r9.h()     // Catch:{ Throwable -> 0x0063 }
            boolean r3 = r9.i()     // Catch:{ Throwable -> 0x0063 }
            int r4 = r9.f()     // Catch:{ Throwable -> 0x0063 }
            int r5 = r9.g()     // Catch:{ Throwable -> 0x0063 }
            int r6 = r9.u()     // Catch:{ Throwable -> 0x0063 }
            boolean r7 = r9.r()     // Catch:{ Throwable -> 0x0063 }
            com.liulishuo.filedownloader.d$a r8 = r12.c     // Catch:{ Throwable -> 0x0063 }
            com.liulishuo.filedownloader.model.FileDownloadHeader r8 = r8.L()     // Catch:{ Throwable -> 0x0063 }
            boolean r9 = r9.x()     // Catch:{ Throwable -> 0x0063 }
            boolean r0 = r0.a(r1, r2, r3, r4, r5, r6, r7, r8, r9)     // Catch:{ Throwable -> 0x0063 }
            byte r1 = r12.d     // Catch:{ Throwable -> 0x0063 }
            r2 = -2
            if (r1 != r2) goto L_0x00e7
            java.lang.String r1 = "High concurrent cause, this task %d will be paused,because of the status is paused, so the pause action must be applied"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x0063 }
            r3 = 0
            int r4 = r12.n()     // Catch:{ Throwable -> 0x0063 }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ Throwable -> 0x0063 }
            r2[r3] = r4     // Catch:{ Throwable -> 0x0063 }
            com.liulishuo.filedownloader.e.d.d(r12, r1, r2)     // Catch:{ Throwable -> 0x0063 }
            if (r0 == 0) goto L_0x0022
            com.liulishuo.filedownloader.n r0 = com.liulishuo.filedownloader.n.a()     // Catch:{ Throwable -> 0x0063 }
            int r1 = r12.n()     // Catch:{ Throwable -> 0x0063 }
            r0.a(r1)     // Catch:{ Throwable -> 0x0063 }
            goto L_0x0022
        L_0x00e7:
            if (r0 != 0) goto L_0x0117
            boolean r0 = r11.c(r10)     // Catch:{ Throwable -> 0x0063 }
            if (r0 != 0) goto L_0x0022
            java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch:{ Throwable -> 0x0063 }
            java.lang.String r1 = "Occur Unknown Error, when request to start maybe some problem in binder, maybe the process was killed in unexpected."
            r0.<init>(r1)     // Catch:{ Throwable -> 0x0063 }
            com.liulishuo.filedownloader.message.MessageSnapshot r0 = r12.a(r0)     // Catch:{ Throwable -> 0x0063 }
            com.liulishuo.filedownloader.h r1 = com.liulishuo.filedownloader.h.a()     // Catch:{ Throwable -> 0x0063 }
            boolean r1 = r1.a(r10)     // Catch:{ Throwable -> 0x0063 }
            if (r1 == 0) goto L_0x010e
            r11.b(r10)     // Catch:{ Throwable -> 0x0063 }
            com.liulishuo.filedownloader.h r1 = com.liulishuo.filedownloader.h.a()     // Catch:{ Throwable -> 0x0063 }
            r1.b(r10)     // Catch:{ Throwable -> 0x0063 }
        L_0x010e:
            com.liulishuo.filedownloader.h r1 = com.liulishuo.filedownloader.h.a()     // Catch:{ Throwable -> 0x0063 }
            r1.a(r10, r0)     // Catch:{ Throwable -> 0x0063 }
            goto L_0x0022
        L_0x0117:
            r11.b(r10)     // Catch:{ Throwable -> 0x0063 }
            goto L_0x0022
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.d.l():void");
    }
}
