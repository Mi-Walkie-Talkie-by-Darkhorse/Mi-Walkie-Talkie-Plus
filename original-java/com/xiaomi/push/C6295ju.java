package com.xiaomi.push;

/* renamed from: com.xiaomi.push.ju */
/* loaded from: classes2.dex */
public class C6295ju {

    /* renamed from: a */
    private static int f22808a = Integer.MAX_VALUE;

    /* renamed from: a */
    public static void m1874a(AbstractC6292jr abstractC6292jr, byte b) {
        m1873a(abstractC6292jr, b, f22808a);
    }

    /* renamed from: a */
    public static void m1873a(AbstractC6292jr abstractC6292jr, byte b, int i) {
        if (i <= 0) {
            throw new C6285jl("Maximum skip depth exceeded");
        }
        int i2 = 0;
        switch (b) {
            case 2:
                abstractC6292jr.mo1896a();
                return;
            case 3:
                abstractC6292jr.mo1904a();
                return;
            case 4:
                abstractC6292jr.mo1903a();
                return;
            case 5:
            case 7:
            case 9:
            default:
                return;
            case 6:
                abstractC6292jr.mo1898a();
                return;
            case 8:
                abstractC6292jr.mo1902a();
                return;
            case 10:
                abstractC6292jr.mo1901a();
                return;
            case 11:
                abstractC6292jr.mo1868a();
                return;
            case 12:
                abstractC6292jr.mo1899a();
                while (true) {
                    byte b2 = abstractC6292jr.mo1900a().f22798a;
                    if (b2 == 0) {
                        abstractC6292jr.mo1880f();
                        return;
                    } else {
                        m1873a(abstractC6292jr, b2, i - 1);
                        abstractC6292jr.mo1879g();
                    }
                }
            case 13:
                C6291jq mo1871a = abstractC6292jr.mo1871a();
                while (i2 < mo1871a.f22804a) {
                    int i3 = i - 1;
                    m1873a(abstractC6292jr, mo1871a.f22803a, i3);
                    m1873a(abstractC6292jr, mo1871a.f22805b, i3);
                    i2++;
                }
                abstractC6292jr.mo1878h();
                return;
            case 14:
                C6296jv mo1870a = abstractC6292jr.mo1870a();
                while (i2 < mo1870a.f22810a) {
                    m1873a(abstractC6292jr, mo1870a.f22809a, i - 1);
                    i2++;
                }
                abstractC6292jr.mo1876j();
                return;
            case 15:
                C6290jp mo1872a = abstractC6292jr.mo1872a();
                while (i2 < mo1872a.f22802a) {
                    m1873a(abstractC6292jr, mo1872a.f22801a, i - 1);
                    i2++;
                }
                abstractC6292jr.mo1877i();
                return;
        }
    }
}
