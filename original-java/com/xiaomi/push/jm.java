package com.xiaomi.push;

import com.xiaomi.push.jn;
import java.io.ByteArrayOutputStream;

/* loaded from: classes2.dex */
public class jm {

    /* renamed from: a  reason: collision with root package name */
    private jr f9159a;

    /* renamed from: a  reason: collision with other field name */
    private final jy f819a;

    /* renamed from: a  reason: collision with other field name */
    private final ByteArrayOutputStream f820a;

    public jm() {
        this(new jn.a());
    }

    public jm(jt jtVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f820a = byteArrayOutputStream;
        jy jyVar = new jy(byteArrayOutputStream);
        this.f819a = jyVar;
        this.f9159a = jtVar.a(jyVar);
    }

    public byte[] a(jg jgVar) {
        this.f820a.reset();
        jgVar.b(this.f9159a);
        return this.f820a.toByteArray();
    }
}
