package com.xiaomi.push;

/* loaded from: classes2.dex */
public class ju {

    /* renamed from: a  reason: collision with root package name */
    private static int f9171a = Integer.MAX_VALUE;

    public static void a(jr jrVar, byte b2) {
        a(jrVar, b2, f9171a);
    }

    public static void a(jr jrVar, byte b2, int i) {
        if (i > 0) {
            int i2 = 0;
            switch (b2) {
                case 2:
                    jrVar.m517a();
                    return;
                case 3:
                    jrVar.mo519a();
                    return;
                case 4:
                    jrVar.a();
                    return;
                case 5:
                case 7:
                case 9:
                default:
                    return;
                case 6:
                    jrVar.m515a();
                    return;
                case 8:
                    jrVar.m506a();
                    return;
                case 10:
                    jrVar.m507a();
                    return;
                case 11:
                    jrVar.m514a();
                    return;
                case 12:
                    jrVar.m512a();
                    while (true) {
                        byte b3 = jrVar.m508a().f9165a;
                        if (b3 == 0) {
                            jrVar.f();
                            return;
                        } else {
                            a(jrVar, b3, i - 1);
                            jrVar.g();
                        }
                    }
                case 13:
                    jq a2 = jrVar.m510a();
                    while (i2 < a2.f830a) {
                        int i3 = i - 1;
                        a(jrVar, a2.f9167a, i3);
                        a(jrVar, a2.f9168b, i3);
                        i2++;
                    }
                    jrVar.h();
                    return;
                case 14:
                    jv a3 = jrVar.m511a();
                    while (i2 < a3.f831a) {
                        a(jrVar, a3.f9172a, i - 1);
                        i2++;
                    }
                    jrVar.j();
                    return;
                case 15:
                    jp a4 = jrVar.m509a();
                    while (i2 < a4.f829a) {
                        a(jrVar, a4.f9166a, i - 1);
                        i2++;
                    }
                    jrVar.i();
                    return;
            }
        } else {
            throw new jl("Maximum skip depth exceeded");
        }
    }
}
