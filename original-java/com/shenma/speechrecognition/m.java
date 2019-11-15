package com.shenma.speechrecognition;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

class m implements y {
    private final List a = new ArrayList();

    public m(UUID uuid, l lVar, v vVar, ae aeVar) {
        if (lVar.j() != null && lVar.j().length() > 0) {
            this.a.add(new ab(uuid, lVar, false));
        }
        this.a.add(new o(uuid, lVar, vVar, aeVar));
        this.a.add(new q(uuid, lVar, aeVar));
    }

    public void a() {
        for (y a2 : this.a) {
            a2.a();
        }
    }

    public synchronized void a(byte[] bArr, int i, int i2) {
        aa.a("The %d-th length %d.", Integer.valueOf(i2), Integer.valueOf(i));
        for (y a2 : this.a) {
            a2.a(bArr, i, i2);
        }
    }

    public void b() {
        for (y b : this.a) {
            b.b();
        }
    }
}
