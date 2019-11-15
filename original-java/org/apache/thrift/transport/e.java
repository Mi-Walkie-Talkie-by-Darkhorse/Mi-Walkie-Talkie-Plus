package org.apache.thrift.transport;

import org.apache.thrift.f;

public class e extends f {
    protected int a = 0;

    public e() {
    }

    public e(int i) {
        this.a = i;
    }

    public e(int i, String str) {
        super(str);
        this.a = i;
    }

    public e(int i, Throwable th) {
        super(th);
        this.a = i;
    }

    public e(String str) {
        super(str);
    }
}
