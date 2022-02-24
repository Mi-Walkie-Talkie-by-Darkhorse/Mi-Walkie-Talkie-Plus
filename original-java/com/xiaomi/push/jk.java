package com.xiaomi.push;

import com.xiaomi.push.jn;

/* loaded from: classes2.dex */
public class jk {

    /* renamed from: a  reason: collision with root package name */
    private final jr f9158a;

    /* renamed from: a  reason: collision with other field name */
    private final ka f818a;

    public jk() {
        this(new jn.a());
    }

    public jk(jt jtVar) {
        ka kaVar = new ka();
        this.f818a = kaVar;
        this.f9158a = jtVar.a(kaVar);
    }

    public void a(jg jgVar, byte[] bArr) {
        try {
            this.f818a.a(bArr);
            jgVar.a(this.f9158a);
        } finally {
            this.f9158a.k();
        }
    }
}
