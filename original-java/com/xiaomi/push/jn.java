package com.xiaomi.push;

import com.google.common.primitives.UnsignedBytes;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class jn extends jr {

    /* renamed from: a  reason: collision with root package name */
    private static final jw f9160a = new jw();

    /* renamed from: a  reason: collision with other field name */
    protected int f821a;

    /* renamed from: a  reason: collision with other field name */
    protected boolean f822a;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f9161b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f9162c = false;

    /* renamed from: a  reason: collision with other field name */
    private byte[] f823a = new byte[1];

    /* renamed from: b  reason: collision with other field name */
    private byte[] f824b = new byte[2];

    /* renamed from: c  reason: collision with other field name */
    private byte[] f825c = new byte[4];
    private byte[] d = new byte[8];
    private byte[] e = new byte[1];
    private byte[] f = new byte[2];
    private byte[] g = new byte[4];
    private byte[] h = new byte[8];

    /* loaded from: classes2.dex */
    public static class a implements jt {

        /* renamed from: a  reason: collision with root package name */
        protected int f9163a;

        /* renamed from: a  reason: collision with other field name */
        protected boolean f826a;

        /* renamed from: b  reason: collision with root package name */
        protected boolean f9164b;

        public a() {
            this(false, true);
        }

        public a(boolean z, boolean z2) {
            this(z, z2, 0);
        }

        public a(boolean z, boolean z2, int i) {
            this.f826a = false;
            this.f9164b = true;
            this.f826a = z;
            this.f9164b = z2;
            this.f9163a = i;
        }

        @Override // com.xiaomi.push.jt
        public jr a(kb kbVar) {
            jn jnVar = new jn(kbVar, this.f826a, this.f9164b);
            int i = this.f9163a;
            if (i != 0) {
                jnVar.b(i);
            }
            return jnVar;
        }
    }

    public jn(kb kbVar, boolean z, boolean z2) {
        super(kbVar);
        this.f822a = false;
        this.f9161b = true;
        this.f822a = z;
        this.f9161b = z2;
    }

    private int a(byte[] bArr, int i, int i2) {
        c(i2);
        return ((jr) this).f9169a.b(bArr, i, i2);
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a */
    public byte mo519a() {
        if (((jr) this).f9169a.b() >= 1) {
            byte b2 = ((jr) this).f9169a.a()[((jr) this).f9169a.mo523a()];
            ((jr) this).f9169a.a(1);
            return b2;
        }
        a(this.e, 0, 1);
        return this.e[0];
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a  reason: collision with other method in class */
    public double mo519a() {
        return Double.longBitsToDouble(mo519a());
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a */
    public int mo519a() {
        byte[] bArr = this.g;
        int i = 0;
        if (((jr) this).f9169a.b() >= 4) {
            bArr = ((jr) this).f9169a.a();
            i = ((jr) this).f9169a.mo523a();
            ((jr) this).f9169a.a(4);
        } else {
            a(this.g, 0, 4);
        }
        return (bArr[i + 3] & UnsignedBytes.MAX_VALUE) | ((bArr[i] & UnsignedBytes.MAX_VALUE) << 24) | ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) << 16) | ((bArr[i + 2] & UnsignedBytes.MAX_VALUE) << 8);
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a  reason: collision with other method in class */
    public long mo519a() {
        byte[] bArr = this.h;
        int i = 0;
        if (((jr) this).f9169a.b() >= 8) {
            bArr = ((jr) this).f9169a.a();
            i = ((jr) this).f9169a.mo523a();
            ((jr) this).f9169a.a(8);
        } else {
            a(this.h, 0, 8);
        }
        return (bArr[i + 7] & UnsignedBytes.MAX_VALUE) | ((bArr[i] & UnsignedBytes.MAX_VALUE) << 56) | ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) << 48) | ((bArr[i + 2] & UnsignedBytes.MAX_VALUE) << 40) | ((bArr[i + 3] & UnsignedBytes.MAX_VALUE) << 32) | ((bArr[i + 4] & UnsignedBytes.MAX_VALUE) << 24) | ((bArr[i + 5] & UnsignedBytes.MAX_VALUE) << 16) | ((bArr[i + 6] & UnsignedBytes.MAX_VALUE) << 8);
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a */
    public jo mo519a() {
        byte a2 = mo519a();
        return new jo("", a2, a2 == 0 ? (short) 0 : mo519a());
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a  reason: collision with other method in class */
    public jp mo519a() {
        return new jp(mo519a(), mo519a());
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a */
    public jq mo519a() {
        return new jq(mo519a(), mo519a(), mo519a());
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a  reason: collision with other method in class */
    public jv mo519a() {
        return new jv(mo519a(), mo519a());
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a */
    public jw mo519a() {
        return f9160a;
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a  reason: collision with other method in class */
    public String mo519a() {
        int a2 = mo519a();
        if (((jr) this).f9169a.b() < a2) {
            return mo504a(a2);
        }
        try {
            String str = new String(((jr) this).f9169a.a(), ((jr) this).f9169a.mo523a(), a2, "UTF-8");
            ((jr) this).f9169a.a(a2);
            return str;
        } catch (UnsupportedEncodingException unused) {
            throw new jl("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a */
    public String mo504a(int i) {
        try {
            c(i);
            byte[] bArr = new byte[i];
            ((jr) this).f9169a.b(bArr, 0, i);
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new jl("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a */
    public ByteBuffer mo519a() {
        int a2 = mo519a();
        c(a2);
        if (((jr) this).f9169a.b() >= a2) {
            ByteBuffer wrap = ByteBuffer.wrap(((jr) this).f9169a.a(), ((jr) this).f9169a.mo523a(), a2);
            ((jr) this).f9169a.a(a2);
            return wrap;
        }
        byte[] bArr = new byte[a2];
        ((jr) this).f9169a.b(bArr, 0, a2);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a  reason: collision with other method in class */
    public short mo519a() {
        byte[] bArr = this.f;
        int i = 0;
        if (((jr) this).f9169a.b() >= 2) {
            bArr = ((jr) this).f9169a.a();
            i = ((jr) this).f9169a.mo523a();
            ((jr) this).f9169a.a(2);
        } else {
            a(this.f, 0, 2);
        }
        return (short) ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) | ((bArr[i] & UnsignedBytes.MAX_VALUE) << 8));
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a */
    public void mo519a() {
    }

    @Override // com.xiaomi.push.jr
    public void a(byte b2) {
        byte[] bArr = this.f823a;
        bArr[0] = b2;
        ((jr) this).f9169a.a(bArr, 0, 1);
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a  reason: collision with other method in class */
    public void mo504a(int i) {
        byte[] bArr = this.f825c;
        bArr[0] = (byte) ((i >> 24) & 255);
        bArr[1] = (byte) ((i >> 16) & 255);
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[3] = (byte) (i & 255);
        ((jr) this).f9169a.a(bArr, 0, 4);
    }

    @Override // com.xiaomi.push.jr
    public void a(long j) {
        byte[] bArr = this.d;
        bArr[0] = (byte) ((j >> 56) & 255);
        bArr[1] = (byte) ((j >> 48) & 255);
        bArr[2] = (byte) ((j >> 40) & 255);
        bArr[3] = (byte) ((j >> 32) & 255);
        bArr[4] = (byte) ((j >> 24) & 255);
        bArr[5] = (byte) ((j >> 16) & 255);
        bArr[6] = (byte) ((j >> 8) & 255);
        bArr[7] = (byte) (j & 255);
        ((jr) this).f9169a.a(bArr, 0, 8);
    }

    @Override // com.xiaomi.push.jr
    public void a(jo joVar) {
        a(joVar.f9165a);
        a(joVar.f828a);
    }

    @Override // com.xiaomi.push.jr
    public void a(jp jpVar) {
        a(jpVar.f9166a);
        mo504a(jpVar.f829a);
    }

    @Override // com.xiaomi.push.jr
    public void a(jq jqVar) {
        a(jqVar.f9167a);
        a(jqVar.f9168b);
        mo504a(jqVar.f830a);
    }

    @Override // com.xiaomi.push.jr
    public void a(jw jwVar) {
    }

    @Override // com.xiaomi.push.jr
    public void a(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            mo504a(bytes.length);
            ((jr) this).f9169a.a(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new jl("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.xiaomi.push.jr
    public void a(ByteBuffer byteBuffer) {
        int limit = (byteBuffer.limit() - byteBuffer.position()) - byteBuffer.arrayOffset();
        mo504a(limit);
        ((jr) this).f9169a.a(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), limit);
    }

    @Override // com.xiaomi.push.jr
    public void a(short s) {
        byte[] bArr = this.f824b;
        bArr[0] = (byte) ((s >> 8) & 255);
        bArr[1] = (byte) (s & 255);
        ((jr) this).f9169a.a(bArr, 0, 2);
    }

    @Override // com.xiaomi.push.jr
    public void a(boolean z) {
        a(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.xiaomi.push.jr
    /* renamed from: a  reason: collision with other method in class */
    public boolean mo519a() {
        return mo519a() == 1;
    }

    @Override // com.xiaomi.push.jr
    public void b() {
    }

    public void b(int i) {
        this.f821a = i;
        this.f9162c = true;
    }

    @Override // com.xiaomi.push.jr
    public void c() {
        a((byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(int i) {
        if (i < 0) {
            throw new jl("Negative length: " + i);
        } else if (this.f9162c) {
            int i2 = this.f821a - i;
            this.f821a = i2;
            if (i2 < 0) {
                throw new jl("Message length exceeded: " + i);
            }
        }
    }

    @Override // com.xiaomi.push.jr
    public void d() {
    }

    @Override // com.xiaomi.push.jr
    public void e() {
    }

    @Override // com.xiaomi.push.jr
    public void f() {
    }

    @Override // com.xiaomi.push.jr
    public void g() {
    }

    @Override // com.xiaomi.push.jr
    public void h() {
    }

    @Override // com.xiaomi.push.jr
    public void i() {
    }

    @Override // com.xiaomi.push.jr
    public void j() {
    }
}
