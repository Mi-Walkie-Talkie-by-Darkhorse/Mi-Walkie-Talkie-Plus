package com.tencent.bugly.mimsg.proguard;

import java.util.ArrayList;
import java.util.Collection;

/* compiled from: BUGLY */
public final class ai extends k implements Cloneable {
    private static ArrayList<String> c;
    private String a = "";
    private ArrayList<String> b = null;

    public final void a(j jVar) {
        jVar.a(this.a, 0);
        if (this.b != null) {
            jVar.a((Collection<T>) this.b, 1);
        }
    }

    public final void a(i iVar) {
        this.a = iVar.b(0, true);
        if (c == null) {
            c = new ArrayList<>();
            c.add("");
        }
        this.b = (ArrayList) iVar.a(c, 1, false);
    }

    public final void a(StringBuilder sb, int i) {
    }
}
