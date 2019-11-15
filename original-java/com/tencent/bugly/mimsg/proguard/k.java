package com.tencent.bugly.mimsg.proguard;

import java.io.Serializable;

/* compiled from: BUGLY */
public abstract class k implements Serializable {
    public abstract void a(i iVar);

    public abstract void a(j jVar);

    public abstract void a(StringBuilder sb, int i);

    public String toString() {
        StringBuilder sb = new StringBuilder();
        a(sb, 0);
        return sb.toString();
    }
}
