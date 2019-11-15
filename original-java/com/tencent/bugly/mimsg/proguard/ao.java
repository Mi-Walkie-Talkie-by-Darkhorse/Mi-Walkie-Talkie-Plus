package com.tencent.bugly.mimsg.proguard;

/* compiled from: BUGLY */
public final class ao extends k implements Cloneable {
    public String a = "";
    private String b = "";

    public final void a(j jVar) {
        jVar.a(this.a, 0);
        jVar.a(this.b, 1);
    }

    public final void a(i iVar) {
        this.a = iVar.b(0, true);
        this.b = iVar.b(1, true);
    }

    public final void a(StringBuilder sb, int i) {
    }
}
