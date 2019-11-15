package com.tencent.bugly.mimsg.proguard;

/* compiled from: BUGLY */
public final class ah extends k implements Cloneable {
    public String a = "";
    public String b = "";
    public String c = "";
    public String d = "";
    private String e = "";

    public final void a(j jVar) {
        jVar.a(this.a, 0);
        if (this.b != null) {
            jVar.a(this.b, 1);
        }
        if (this.c != null) {
            jVar.a(this.c, 2);
        }
        if (this.e != null) {
            jVar.a(this.e, 3);
        }
        if (this.d != null) {
            jVar.a(this.d, 4);
        }
    }

    public final void a(i iVar) {
        this.a = iVar.b(0, true);
        this.b = iVar.b(1, false);
        this.c = iVar.b(2, false);
        this.e = iVar.b(3, false);
        this.d = iVar.b(4, false);
    }

    public final void a(StringBuilder sb, int i) {
    }
}
