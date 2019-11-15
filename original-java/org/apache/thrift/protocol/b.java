package org.apache.thrift.protocol;

public class b {
    public final String a;
    public final byte b;
    public final short c;

    public b() {
        this("", 0, 0);
    }

    public b(String str, byte b2, short s) {
        this.a = str;
        this.b = b2;
        this.c = s;
    }

    public String toString() {
        return "<TField name:'" + this.a + "' type:" + this.b + " field-id:" + this.c + ">";
    }
}
