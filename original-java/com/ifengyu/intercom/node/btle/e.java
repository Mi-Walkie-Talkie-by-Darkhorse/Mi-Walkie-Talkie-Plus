package com.ifengyu.intercom.node.btle;

import androidx.annotation.NonNull;
import com.ifengyu.intercom.i.z;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* compiled from: BtleOutputStream.java */
/* loaded from: classes2.dex */
public class e extends OutputStream {
    private static final String d = e.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final int f5887a;

    /* renamed from: b  reason: collision with root package name */
    private i f5888b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f5889c = false;

    public e(int i, i iVar) {
        this.f5887a = a(i);
        this.f5888b = iVar;
    }

    private int a(int i) {
        return i - 3;
    }

    public void a(i iVar) {
        this.f5888b = iVar;
        this.f5889c = false;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        z.a(d, "closing BtleOutputStream");
        this.f5889c = true;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        z.e(d, "Ignoring flush()");
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        throw new UnsupportedOperationException("Operation unsupported");
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr) throws IOException {
        z.c(d, "write byte");
        int length = bArr.length;
        int i = 0;
        while (length > 0) {
            int i2 = this.f5887a;
            if (length < i2) {
                i2 = length;
            }
            ByteBuffer allocate = ByteBuffer.allocate(i2);
            allocate.put(bArr, i, i2);
            this.f5888b.a(allocate.array());
            i += i2;
            length -= i2;
        }
    }

    private int a(int i, boolean z) {
        if (z) {
            int i2 = this.f5887a;
            return (i >= i2 || (i + 8) + (-4) >= i2) ? (this.f5887a - 8) + 4 : i;
        }
        int i3 = this.f5887a;
        return i < i3 ? i : i3;
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i, int i2) throws IOException {
        if (this.f5889c) {
            throw new IOException("Cannot write to BtleOutputStream as it is closed");
        } else if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new IllegalArgumentException();
        } else {
            int i3 = i2;
            while (i3 > 0) {
                boolean z = i3 == i2;
                int a2 = a(i3, z);
                ByteBuffer allocate = ByteBuffer.allocate(a2);
                allocate.put(bArr, i, a2);
                this.f5888b.a(allocate.array(), i2, z);
                i += a2;
                i3 -= a2;
            }
        }
    }
}
