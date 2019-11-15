package com.ifengyu.intercom.node.btle;

import android.support.annotation.NonNull;
import com.ifengyu.intercom.b.s;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* compiled from: BtleOutputStream */
public class e extends OutputStream {
    private static final String a = e.class.getSimpleName();
    private final int b;
    private i c;
    private volatile boolean d = false;

    public e(int i, i iVar) {
        this.b = a(i);
        this.c = iVar;
    }

    private int a(int i) {
        return i - 3;
    }

    public void a(i iVar) {
        this.c = iVar;
        this.d = false;
    }

    public void write(int i) throws IOException {
        throw new UnsupportedOperationException("Operation unsupported");
    }

    public void close() throws IOException {
        s.b(a, "closing BtleOutputStream");
        this.d = true;
    }

    public void flush() throws IOException {
        s.d(a, "Ignoring flush()");
    }

    public void write(@NonNull byte[] bArr) throws IOException {
        s.c(a, "write byte");
        int length = bArr.length;
        int i = 0;
        while (length > 0) {
            int i2 = this.b;
            if (length < this.b) {
                i2 = length;
            }
            ByteBuffer allocate = ByteBuffer.allocate(i2);
            allocate.put(bArr, i, i2);
            this.c.a(allocate.array());
            i += i2;
            length -= i2;
        }
    }

    public void write(@NonNull byte[] bArr, int i, int i2) throws IOException {
        if (this.d) {
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
                this.c.a(allocate.array(), i2, z);
                i += a2;
                i3 -= a2;
            }
        }
    }

    private int a(int i, boolean z) {
        if (!z) {
            return i >= this.b ? this.b : i;
        }
        if (i >= this.b || (i + 8) - 4 >= this.b) {
            return (this.b - 8) + 4;
        }
        return i;
    }
}
