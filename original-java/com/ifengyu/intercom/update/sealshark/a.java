package com.ifengyu.intercom.update.sealshark;

import com.ifengyu.intercom.b.n;

/* compiled from: AbsDataSplitManager */
public abstract class a<T> implements c<T> {
    protected byte[] a = null;
    protected int b;
    protected int c;
    protected int d;

    protected a() {
    }

    public void a(String str) {
        byte[] a2 = n.a(str);
        if (a2 == null) {
            this.a = null;
            this.b = 0;
            return;
        }
        this.a = new byte[a2.length];
        System.arraycopy(a2, 0, this.a, 0, a2.length);
        this.b = c();
    }

    public byte[] a() {
        return this.a;
    }

    public int b() {
        if (this.a != null) {
            return this.a.length;
        }
        return 0;
    }

    private int c() {
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
