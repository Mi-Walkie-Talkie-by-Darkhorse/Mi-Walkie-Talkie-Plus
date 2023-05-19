package com.xiaomi.push;

import com.google.common.primitives.UnsignedBytes;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* renamed from: com.xiaomi.push.jn */
/* loaded from: classes2.dex */
public class C6287jn extends AbstractC6292jr {

    /* renamed from: a */
    private static final C6297jw f22782a = new C6297jw();

    /* renamed from: a */
    protected int f22783a;

    /* renamed from: a */
    protected boolean f22784a;

    /* renamed from: a */
    private byte[] f22785a;

    /* renamed from: b */
    protected boolean f22786b;

    /* renamed from: b */
    private byte[] f22787b;

    /* renamed from: c */
    protected boolean f22788c;

    /* renamed from: c */
    private byte[] f22789c;

    /* renamed from: d */
    private byte[] f22790d;

    /* renamed from: e */
    private byte[] f22791e;

    /* renamed from: f */
    private byte[] f22792f;

    /* renamed from: g */
    private byte[] f22793g;

    /* renamed from: h */
    private byte[] f22794h;

    /* renamed from: com.xiaomi.push.jn$a */
    /* loaded from: classes2.dex */
    public static class C6288a implements InterfaceC6294jt {

        /* renamed from: a */
        protected int f22795a;

        /* renamed from: a */
        protected boolean f22796a;

        /* renamed from: b */
        protected boolean f22797b;

        public C6288a() {
            this(false, true);
        }

        public C6288a(boolean z, boolean z2) {
            this(z, z2, 0);
        }

        public C6288a(boolean z, boolean z2, int i) {
            this.f22796a = false;
            this.f22797b = true;
            this.f22796a = z;
            this.f22797b = z2;
            this.f22795a = i;
        }

        @Override // com.xiaomi.push.InterfaceC6294jt
        /* renamed from: a */
        public AbstractC6292jr mo1867a(AbstractC6304kb abstractC6304kb) {
            C6287jn c6287jn = new C6287jn(abstractC6304kb, this.f22796a, this.f22797b);
            int i = this.f22795a;
            if (i != 0) {
                c6287jn.m1906b(i);
            }
            return c6287jn;
        }
    }

    public C6287jn(AbstractC6304kb abstractC6304kb, boolean z, boolean z2) {
        super(abstractC6304kb);
        this.f22784a = false;
        this.f22786b = true;
        this.f22788c = false;
        this.f22785a = new byte[1];
        this.f22787b = new byte[2];
        this.f22789c = new byte[4];
        this.f22790d = new byte[8];
        this.f22791e = new byte[1];
        this.f22792f = new byte[2];
        this.f22793g = new byte[4];
        this.f22794h = new byte[8];
        this.f22784a = z;
        this.f22786b = z2;
    }

    /* renamed from: a */
    private int m1907a(byte[] bArr, int i, int i2) {
        m1905c(i2);
        return ((AbstractC6292jr) this).f22806a.m1857b(bArr, i, i2);
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public byte mo1904a() {
        if (((AbstractC6292jr) this).f22806a.mo1858b() < 1) {
            m1907a(this.f22791e, 0, 1);
            return this.f22791e[0];
        }
        byte b = ((AbstractC6292jr) this).f22806a.mo1862a()[((AbstractC6292jr) this).f22806a.mo1863a()];
        ((AbstractC6292jr) this).f22806a.mo1861a(1);
        return b;
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public double mo1903a() {
        return Double.longBitsToDouble(mo1901a());
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public int mo1902a() {
        byte[] bArr = this.f22793g;
        int i = 0;
        if (((AbstractC6292jr) this).f22806a.mo1858b() >= 4) {
            bArr = ((AbstractC6292jr) this).f22806a.mo1862a();
            i = ((AbstractC6292jr) this).f22806a.mo1863a();
            ((AbstractC6292jr) this).f22806a.mo1861a(4);
        } else {
            m1907a(this.f22793g, 0, 4);
        }
        return (bArr[i + 3] & UnsignedBytes.MAX_VALUE) | ((bArr[i] & UnsignedBytes.MAX_VALUE) << 24) | ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) << 16) | ((bArr[i + 2] & UnsignedBytes.MAX_VALUE) << 8);
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public long mo1901a() {
        byte[] bArr = this.f22794h;
        int i = 0;
        if (((AbstractC6292jr) this).f22806a.mo1858b() >= 8) {
            bArr = ((AbstractC6292jr) this).f22806a.mo1862a();
            i = ((AbstractC6292jr) this).f22806a.mo1863a();
            ((AbstractC6292jr) this).f22806a.mo1861a(8);
        } else {
            m1907a(this.f22794h, 0, 8);
        }
        return (bArr[i + 7] & UnsignedBytes.MAX_VALUE) | ((bArr[i] & UnsignedBytes.MAX_VALUE) << 56) | ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) << 48) | ((bArr[i + 2] & UnsignedBytes.MAX_VALUE) << 40) | ((bArr[i + 3] & UnsignedBytes.MAX_VALUE) << 32) | ((bArr[i + 4] & UnsignedBytes.MAX_VALUE) << 24) | ((bArr[i + 5] & UnsignedBytes.MAX_VALUE) << 16) | ((bArr[i + 6] & UnsignedBytes.MAX_VALUE) << 8);
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public C6289jo mo1900a() {
        byte mo1904a = mo1904a();
        return new C6289jo("", mo1904a, mo1904a == 0 ? (short) 0 : mo1898a());
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public C6290jp mo1872a() {
        return new C6290jp(mo1904a(), mo1902a());
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public C6291jq mo1871a() {
        return new C6291jq(mo1904a(), mo1904a(), mo1902a());
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public C6296jv mo1870a() {
        return new C6296jv(mo1904a(), mo1902a());
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public C6297jw mo1899a() {
        return f22782a;
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public String mo1869a() {
        int mo1902a = mo1902a();
        if (((AbstractC6292jr) this).f22806a.mo1858b() >= mo1902a) {
            try {
                String str = new String(((AbstractC6292jr) this).f22806a.mo1862a(), ((AbstractC6292jr) this).f22806a.mo1863a(), mo1902a, "UTF-8");
                ((AbstractC6292jr) this).f22806a.mo1861a(mo1902a);
                return str;
            } catch (UnsupportedEncodingException unused) {
                throw new C6285jl("JVM DOES NOT SUPPORT UTF-8");
            }
        }
        return m1908a(mo1902a);
    }

    /* renamed from: a */
    public String m1908a(int i) {
        try {
            m1905c(i);
            byte[] bArr = new byte[i];
            ((AbstractC6292jr) this).f22806a.m1857b(bArr, 0, i);
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new C6285jl("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public ByteBuffer mo1868a() {
        int mo1902a = mo1902a();
        m1905c(mo1902a);
        if (((AbstractC6292jr) this).f22806a.mo1858b() >= mo1902a) {
            ByteBuffer wrap = ByteBuffer.wrap(((AbstractC6292jr) this).f22806a.mo1862a(), ((AbstractC6292jr) this).f22806a.mo1863a(), mo1902a);
            ((AbstractC6292jr) this).f22806a.mo1861a(mo1902a);
            return wrap;
        }
        byte[] bArr = new byte[mo1902a];
        ((AbstractC6292jr) this).f22806a.m1857b(bArr, 0, mo1902a);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public short mo1898a() {
        byte[] bArr = this.f22792f;
        int i = 0;
        if (((AbstractC6292jr) this).f22806a.mo1858b() >= 2) {
            bArr = ((AbstractC6292jr) this).f22806a.mo1862a();
            i = ((AbstractC6292jr) this).f22806a.mo1863a();
            ((AbstractC6292jr) this).f22806a.mo1861a(2);
        } else {
            m1907a(this.f22792f, 0, 2);
        }
        return (short) ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) | ((bArr[i] & UnsignedBytes.MAX_VALUE) << 8));
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public void mo1897a() {
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public void mo1895a(byte b) {
        byte[] bArr = this.f22785a;
        bArr[0] = b;
        ((AbstractC6292jr) this).f22806a.mo1859a(bArr, 0, 1);
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public void mo1894a(int i) {
        byte[] bArr = this.f22789c;
        bArr[0] = (byte) ((i >> 24) & 255);
        bArr[1] = (byte) ((i >> 16) & 255);
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[3] = (byte) (i & 255);
        ((AbstractC6292jr) this).f22806a.mo1859a(bArr, 0, 4);
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public void mo1893a(long j) {
        byte[] bArr = this.f22790d;
        bArr[0] = (byte) ((j >> 56) & 255);
        bArr[1] = (byte) ((j >> 48) & 255);
        bArr[2] = (byte) ((j >> 40) & 255);
        bArr[3] = (byte) ((j >> 32) & 255);
        bArr[4] = (byte) ((j >> 24) & 255);
        bArr[5] = (byte) ((j >> 16) & 255);
        bArr[6] = (byte) ((j >> 8) & 255);
        bArr[7] = (byte) (j & 255);
        ((AbstractC6292jr) this).f22806a.mo1859a(bArr, 0, 8);
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public void mo1892a(C6289jo c6289jo) {
        mo1895a(c6289jo.f22798a);
        mo1886a(c6289jo.f22800a);
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public void mo1891a(C6290jp c6290jp) {
        mo1895a(c6290jp.f22801a);
        mo1894a(c6290jp.f22802a);
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public void mo1890a(C6291jq c6291jq) {
        mo1895a(c6291jq.f22803a);
        mo1895a(c6291jq.f22805b);
        mo1894a(c6291jq.f22804a);
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public void mo1889a(C6297jw c6297jw) {
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public void mo1888a(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            mo1894a(bytes.length);
            ((AbstractC6292jr) this).f22806a.mo1859a(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new C6285jl("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public void mo1887a(ByteBuffer byteBuffer) {
        int limit = (byteBuffer.limit() - byteBuffer.position()) - byteBuffer.arrayOffset();
        mo1894a(limit);
        ((AbstractC6292jr) this).f22806a.mo1859a(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), limit);
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public void mo1886a(short s) {
        byte[] bArr = this.f22787b;
        bArr[0] = (byte) ((s >> 8) & 255);
        bArr[1] = (byte) (s & 255);
        ((AbstractC6292jr) this).f22806a.mo1859a(bArr, 0, 2);
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public void mo1885a(boolean z) {
        mo1895a(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public boolean mo1896a() {
        return mo1904a() == 1;
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: b */
    public void mo1884b() {
    }

    /* renamed from: b */
    public void m1906b(int i) {
        this.f22783a = i;
        this.f22788c = true;
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: c */
    public void mo1883c() {
        mo1895a((byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public void m1905c(int i) {
        if (i < 0) {
            throw new C6285jl("Negative length: " + i);
        } else if (this.f22788c) {
            int i2 = this.f22783a - i;
            this.f22783a = i2;
            if (i2 >= 0) {
                return;
            }
            throw new C6285jl("Message length exceeded: " + i);
        }
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: d */
    public void mo1882d() {
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: e */
    public void mo1881e() {
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: f */
    public void mo1880f() {
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: g */
    public void mo1879g() {
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: h */
    public void mo1878h() {
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: i */
    public void mo1877i() {
    }

    @Override // com.xiaomi.push.AbstractC6292jr
    /* renamed from: j */
    public void mo1876j() {
    }
}
