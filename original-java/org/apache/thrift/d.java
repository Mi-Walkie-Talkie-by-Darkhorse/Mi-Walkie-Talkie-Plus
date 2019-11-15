package org.apache.thrift;

import java.io.ByteArrayOutputStream;

public class d extends ByteArrayOutputStream {
    public d() {
    }

    public d(int i) {
        super(i);
    }

    public byte[] a() {
        return this.buf;
    }

    public int b() {
        return this.count;
    }
}
