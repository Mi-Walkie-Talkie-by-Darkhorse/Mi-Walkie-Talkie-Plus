package com.xiaomi.push;

/* loaded from: classes2.dex */
public class jo {

    /* renamed from: a  reason: collision with root package name */
    public final byte f9165a;

    /* renamed from: a  reason: collision with other field name */
    public final String f827a;

    /* renamed from: a  reason: collision with other field name */
    public final short f828a;

    public jo() {
        this("", (byte) 0, (short) 0);
    }

    public jo(String str, byte b2, short s) {
        this.f827a = str;
        this.f9165a = b2;
        this.f828a = s;
    }

    public String toString() {
        return "<TField name:'" + this.f827a + "' type:" + ((int) this.f9165a) + " field-id:" + ((int) this.f828a) + ">";
    }
}
