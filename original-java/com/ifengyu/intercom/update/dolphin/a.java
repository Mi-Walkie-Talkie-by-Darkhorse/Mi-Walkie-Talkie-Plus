package com.ifengyu.intercom.update.dolphin;

import com.ifengyu.intercom.b.n;

/* compiled from: AbsDataSplitManager */
public abstract class a<T> implements e<T> {
    protected byte[] a = null;
    protected int b = 0;
    protected int c = 0;
    protected int d;
    protected int e;

    protected a() {
    }

    public void a(String str) {
        byte[] a2 = n.a(str);
        if (a2 == null) {
            this.a = null;
            this.c = 0;
            this.b = 0;
            this.d = 0;
            this.e = 0;
            return;
        }
        this.a = new byte[a2.length];
        System.arraycopy(a2, 0, this.a, 0, a2.length);
        this.c = a2.length;
        this.b = 0;
        this.d = 0;
        this.e = e();
    }

    public byte[] a() {
        return this.a;
    }

    public int b() {
        return this.e;
    }

    public int c() {
        if (this.a != null) {
            return this.a.length;
        }
        return 0;
    }

    public int d() {
        return this.d;
    }

    private int e() {
        if (this.a == null) {
            return 0;
        }
        int length = this.a.length / 128;
        if (this.a.length % 128 != 0) {
            return length + 1;
        }
        return length;
    }
}
