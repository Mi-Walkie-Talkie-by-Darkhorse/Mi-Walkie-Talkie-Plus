package com.xiaomi.push;

import java.util.LinkedList;

/* renamed from: com.xiaomi.push.bk */
/* loaded from: classes2.dex */
public class C6018bk {

    /* renamed from: a */
    private LinkedList<C6019a> f21110a = new LinkedList<>();

    /* renamed from: com.xiaomi.push.bk$a */
    /* loaded from: classes2.dex */
    public static class C6019a {

        /* renamed from: a */
        private static final C6018bk f21111a = new C6018bk();

        /* renamed from: a */
        public int f21112a;

        /* renamed from: a */
        public Object f21113a;

        /* renamed from: a */
        public String f21114a;

        C6019a(int i, Object obj) {
            this.f21112a = i;
            this.f21113a = obj;
        }
    }

    /* renamed from: a */
    public static C6018bk m3638a() {
        return C6019a.f21111a;
    }

    /* renamed from: a */
    private void m3636a() {
        if (this.f21110a.size() > 100) {
            this.f21110a.removeFirst();
        }
    }

    /* renamed from: a */
    public synchronized int m3639a() {
        return this.f21110a.size();
    }

    /* renamed from: a */
    public synchronized LinkedList<C6019a> m3637a() {
        LinkedList<C6019a> linkedList;
        linkedList = this.f21110a;
        this.f21110a = new LinkedList<>();
        return linkedList;
    }

    /* renamed from: a */
    public synchronized void m3635a(Object obj) {
        this.f21110a.add(new C6019a(0, obj));
        m3636a();
    }
}
