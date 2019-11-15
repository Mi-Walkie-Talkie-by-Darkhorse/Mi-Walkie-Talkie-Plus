package com.shenma.speechrecognition;

import java.util.UUID;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;

class o implements y {
    private final j a;
    private final p[] b;
    private final BlockingQueue c = new PriorityBlockingQueue();
    private final BlockingQueue d = new PriorityBlockingQueue();

    public o(UUID uuid, l lVar, v vVar, ae aeVar) {
        this.a = new j(uuid, lVar, this.c, this.d);
        this.b = new p[lVar.e()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < lVar.e()) {
                this.b[i2] = new p(uuid, lVar, vVar, this.d, aeVar);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void a() {
        if (this.a != null) {
            this.a.start();
        }
        if (this.b != null) {
            for (p start : this.b) {
                start.start();
            }
        }
    }

    public void a(byte[] bArr, int i, int i2) {
        aa.a("The %d-th length %d.", Integer.valueOf(i2), Integer.valueOf(i));
        this.c.add(new f(i2, bArr, i));
    }

    public void b() {
        this.c.clear();
        this.d.clear();
        if (this.a != null) {
            this.a.a();
        }
        if (this.b != null) {
            for (p a2 : this.b) {
                a2.a();
            }
        }
    }
}
