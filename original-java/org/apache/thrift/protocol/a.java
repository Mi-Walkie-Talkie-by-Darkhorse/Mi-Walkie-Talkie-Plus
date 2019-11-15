package org.apache.thrift.protocol;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.apache.thrift.f;
import org.apache.thrift.transport.d;

public class a extends e {
    private static final j f = new j();
    protected boolean a = false;
    protected boolean b = true;
    protected int c;
    protected boolean d = false;
    private byte[] g = new byte[1];
    private byte[] h = new byte[2];
    private byte[] i = new byte[4];
    private byte[] j = new byte[8];
    private byte[] k = new byte[1];
    private byte[] l = new byte[2];
    private byte[] m = new byte[4];
    private byte[] n = new byte[8];

    /* renamed from: org.apache.thrift.protocol.a$a reason: collision with other inner class name */
    public static class C0094a implements g {
        protected boolean a;
        protected boolean b;
        protected int c;

        public C0094a() {
            this(false, true);
        }

        public C0094a(boolean z, boolean z2) {
            this(z, z2, 0);
        }

        public C0094a(boolean z, boolean z2, int i) {
            this.a = false;
            this.b = true;
            this.a = z;
            this.b = z2;
            this.c = i;
        }

        public e a(d dVar) {
            a aVar = new a(dVar, this.a, this.b);
            if (this.c != 0) {
                aVar.c(this.c);
            }
            return aVar;
        }
    }

    public a(d dVar, boolean z, boolean z2) {
        super(dVar);
        this.a = z;
        this.b = z2;
    }

    private int a(byte[] bArr, int i2, int i3) {
        d(i3);
        return this.e.d(bArr, i2, i3);
    }

    public void a() {
    }

    public void a(byte b2) {
        this.g[0] = b2;
        this.e.b(this.g, 0, 1);
    }

    public void a(double d2) {
        a(Double.doubleToLongBits(d2));
    }

    public void a(int i2) {
        this.i[0] = (byte) ((i2 >> 24) & 255);
        this.i[1] = (byte) ((i2 >> 16) & 255);
        this.i[2] = (byte) ((i2 >> 8) & 255);
        this.i[3] = (byte) (i2 & 255);
        this.e.b(this.i, 0, 4);
    }

    public void a(long j2) {
        this.j[0] = (byte) ((int) ((j2 >> 56) & 255));
        this.j[1] = (byte) ((int) ((j2 >> 48) & 255));
        this.j[2] = (byte) ((int) ((j2 >> 40) & 255));
        this.j[3] = (byte) ((int) ((j2 >> 32) & 255));
        this.j[4] = (byte) ((int) ((j2 >> 24) & 255));
        this.j[5] = (byte) ((int) ((j2 >> 16) & 255));
        this.j[6] = (byte) ((int) ((j2 >> 8) & 255));
        this.j[7] = (byte) ((int) (255 & j2));
        this.e.b(this.j, 0, 8);
    }

    public void a(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes.length);
            this.e.b(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException e) {
            throw new f("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public void a(ByteBuffer byteBuffer) {
        int limit = (byteBuffer.limit() - byteBuffer.position()) - byteBuffer.arrayOffset();
        a(limit);
        this.e.b(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), limit);
    }

    public void a(b bVar) {
        a(bVar.b);
        a(bVar.c);
    }

    public void a(c cVar) {
        a(cVar.a);
        a(cVar.b);
    }

    public void a(d dVar) {
        a(dVar.a);
        a(dVar.b);
        a(dVar.c);
    }

    public void a(i iVar) {
        a(iVar.a);
        a(iVar.b);
    }

    public void a(j jVar) {
    }

    public void a(short s) {
        this.h[0] = (byte) ((s >> 8) & 255);
        this.h[1] = (byte) (s & 255);
        this.e.b(this.h, 0, 2);
    }

    public void a(boolean z) {
        a(z ? (byte) 1 : 0);
    }

    public String b(int i2) {
        try {
            d(i2);
            byte[] bArr = new byte[i2];
            this.e.d(bArr, 0, i2);
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new f("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public void b() {
    }

    public void c() {
        a(0);
    }

    public void c(int i2) {
        this.c = i2;
        this.d = true;
    }

    public void d() {
    }

    /* access modifiers changed from: protected */
    public void d(int i2) {
        if (i2 < 0) {
            throw new f("Negative length: " + i2);
        } else if (this.d) {
            this.c -= i2;
            if (this.c < 0) {
                throw new f("Message length exceeded: " + i2);
            }
        }
    }

    public void e() {
    }

    public void f() {
    }

    public j g() {
        return f;
    }

    public void h() {
    }

    public b i() {
        byte r = r();
        return new b("", r, r == 0 ? 0 : s());
    }

    public void j() {
    }

    public d k() {
        return new d(r(), r(), t());
    }

    public void l() {
    }

    public c m() {
        return new c(r(), t());
    }

    public void n() {
    }

    public i o() {
        return new i(r(), t());
    }

    public void p() {
    }

    public boolean q() {
        return r() == 1;
    }

    public byte r() {
        if (this.e.c() >= 1) {
            byte b2 = this.e.a()[this.e.b()];
            this.e.a(1);
            return b2;
        }
        a(this.k, 0, 1);
        return this.k[0];
    }

    public short s() {
        int i2 = 0;
        byte[] bArr = this.l;
        if (this.e.c() >= 2) {
            bArr = this.e.a();
            i2 = this.e.b();
            this.e.a(2);
        } else {
            a(this.l, 0, 2);
        }
        return (short) ((bArr[i2 + 1] & 255) | ((bArr[i2] & 255) << 8));
    }

    public int t() {
        int i2 = 0;
        byte[] bArr = this.m;
        if (this.e.c() >= 4) {
            bArr = this.e.a();
            i2 = this.e.b();
            this.e.a(4);
        } else {
            a(this.m, 0, 4);
        }
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << Tnaf.POW_2_WIDTH) | ((bArr[i2 + 2] & 255) << 8);
    }

    public long u() {
        int i2 = 0;
        byte[] bArr = this.n;
        if (this.e.c() >= 8) {
            bArr = this.e.a();
            i2 = this.e.b();
            this.e.a(8);
        } else {
            a(this.n, 0, 8);
        }
        return ((long) (bArr[i2 + 7] & 255)) | (((long) (bArr[i2] & 255)) << 56) | (((long) (bArr[i2 + 1] & 255)) << 48) | (((long) (bArr[i2 + 2] & 255)) << 40) | (((long) (bArr[i2 + 3] & 255)) << 32) | (((long) (bArr[i2 + 4] & 255)) << 24) | (((long) (bArr[i2 + 5] & 255)) << 16) | (((long) (bArr[i2 + 6] & 255)) << 8);
    }

    public double v() {
        return Double.longBitsToDouble(u());
    }

    public String w() {
        int t = t();
        if (this.e.c() < t) {
            return b(t);
        }
        try {
            String str = new String(this.e.a(), this.e.b(), t, "UTF-8");
            this.e.a(t);
            return str;
        } catch (UnsupportedEncodingException e) {
            throw new f("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public ByteBuffer x() {
        int t = t();
        d(t);
        if (this.e.c() >= t) {
            ByteBuffer wrap = ByteBuffer.wrap(this.e.a(), this.e.b(), t);
            this.e.a(t);
            return wrap;
        }
        byte[] bArr = new byte[t];
        this.e.d(bArr, 0, t);
        return ByteBuffer.wrap(bArr);
    }
}
