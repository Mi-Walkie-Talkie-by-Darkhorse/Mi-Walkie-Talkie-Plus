package com.shenma.speechrecognition;

import java.util.UUID;
import java.util.concurrent.PriorityBlockingQueue;

class q implements b, y {
    private final UUID a;
    private final l b;
    private final ae c;
    private final PriorityBlockingQueue d = new PriorityBlockingQueue();
    private r e;
    private boolean f;

    public q(UUID uuid, l lVar, ae aeVar) {
        this.a = uuid;
        this.b = lVar;
        this.c = aeVar;
        this.f = lVar.d();
    }

    public void a() {
        if (this.f) {
            this.d.clear();
            this.e = new r(this.a, this.b, this.c, this.d);
            this.e.start();
        }
    }

    public void a(byte[] bArr, int i, int i2) {
        aa.a("The %d-th length %d.", Integer.valueOf(i2), Integer.valueOf(i));
        if (this.f && this.e != null) {
            this.d.add(new f(i2, bArr, i));
        }
        if (i2 == 1) {
            a.a().a(this);
        }
        if (i2 <= 0) {
            a.a().b();
        }
    }

    public void b() {
        if (this.e != null) {
            this.e.a();
            this.e = null;
        }
    }
}
