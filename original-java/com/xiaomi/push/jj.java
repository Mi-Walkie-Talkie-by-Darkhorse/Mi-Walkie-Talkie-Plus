package com.xiaomi.push;

import java.io.ByteArrayOutputStream;

/* loaded from: classes2.dex */
public class jj extends ByteArrayOutputStream {
    public jj() {
    }

    public jj(int i) {
        super(i);
    }

    public int a() {
        return ((ByteArrayOutputStream) this).count;
    }

    /* renamed from: a  reason: collision with other method in class */
    public byte[] m497a() {
        return ((ByteArrayOutputStream) this).buf;
    }
}
