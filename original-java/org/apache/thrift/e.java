package org.apache.thrift;

import org.apache.thrift.protocol.a.C0094a;
import org.apache.thrift.protocol.g;
import org.apache.thrift.transport.c;

public class e {
    private final org.apache.thrift.protocol.e a;
    private final c b;

    public e() {
        this(new C0094a());
    }

    public e(g gVar) {
        this.b = new c();
        this.a = gVar.a(this.b);
    }

    public void a(a aVar, byte[] bArr) {
        try {
            this.b.a(bArr);
            aVar.a(this.a);
        } finally {
            this.a.y();
        }
    }
}
