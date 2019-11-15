package org.apache.thrift.protocol;

import org.apache.thrift.f;

public class h {
    private static int a = Integer.MAX_VALUE;

    public static void a(e eVar, byte b) {
        a(eVar, b, a);
    }

    public static void a(e eVar, byte b, int i) {
        int i2 = 0;
        if (i <= 0) {
            throw new f("Maximum skip depth exceeded");
        }
        switch (b) {
            case 2:
                eVar.q();
                return;
            case 3:
                eVar.r();
                return;
            case 4:
                eVar.v();
                return;
            case 6:
                eVar.s();
                return;
            case 8:
                eVar.t();
                return;
            case 10:
                eVar.u();
                return;
            case 11:
                eVar.x();
                return;
            case 12:
                eVar.g();
                while (true) {
                    b i3 = eVar.i();
                    if (i3.b == 0) {
                        eVar.h();
                        return;
                    } else {
                        a(eVar, i3.b, i - 1);
                        eVar.j();
                    }
                }
            case 13:
                d k = eVar.k();
                while (i2 < k.c) {
                    a(eVar, k.a, i - 1);
                    a(eVar, k.b, i - 1);
                    i2++;
                }
                eVar.l();
                return;
            case 14:
                i o = eVar.o();
                while (i2 < o.b) {
                    a(eVar, o.a, i - 1);
                    i2++;
                }
                eVar.p();
                return;
            case 15:
                c m = eVar.m();
                while (i2 < m.b) {
                    a(eVar, m.a, i - 1);
                    i2++;
                }
                eVar.n();
                return;
            default:
                return;
        }
    }
}
