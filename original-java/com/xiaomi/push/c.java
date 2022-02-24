package com.xiaomi.push;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final int f8796a;

    /* renamed from: a  reason: collision with other field name */
    private final OutputStream f146a;

    /* renamed from: a  reason: collision with other field name */
    private final byte[] f147a;

    /* renamed from: b  reason: collision with root package name */
    private int f8797b;

    /* loaded from: classes2.dex */
    public static class a extends IOException {
        a() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

    private c(OutputStream outputStream, byte[] bArr) {
        this.f146a = outputStream;
        this.f147a = bArr;
        this.f8797b = 0;
        this.f8796a = bArr.length;
    }

    private c(byte[] bArr, int i, int i2) {
        this.f146a = null;
        this.f147a = bArr;
        this.f8797b = i;
        this.f8796a = i + i2;
    }

    public static int a(int i) {
        if (i >= 0) {
            return d(i);
        }
        return 10;
    }

    public static int a(int i, int i2) {
        return c(i) + a(i2);
    }

    public static int a(int i, long j) {
        return c(i) + a(j);
    }

    public static int a(int i, a aVar) {
        return c(i) + a(aVar);
    }

    public static int a(int i, e eVar) {
        return c(i) + a(eVar);
    }

    public static int a(int i, String str) {
        return c(i) + a(str);
    }

    public static int a(int i, boolean z) {
        return c(i) + a(z);
    }

    public static int a(long j) {
        return c(j);
    }

    public static int a(a aVar) {
        return d(aVar.a()) + aVar.a();
    }

    public static int a(e eVar) {
        int b2 = eVar.mo225b();
        return d(b2) + b2;
    }

    public static int a(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            return d(bytes.length) + bytes.length;
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("UTF-8 not supported.");
        }
    }

    public static int a(boolean z) {
        return 1;
    }

    public static c a(OutputStream outputStream) {
        return a(outputStream, 4096);
    }

    public static c a(OutputStream outputStream, int i) {
        return new c(outputStream, new byte[i]);
    }

    public static c a(byte[] bArr, int i, int i2) {
        return new c(bArr, i, i2);
    }

    public static int b(int i) {
        return d(i);
    }

    public static int b(int i, int i2) {
        return c(i) + b(i2);
    }

    public static int b(int i, long j) {
        return c(i) + b(j);
    }

    public static int b(long j) {
        return c(j);
    }

    public static int c(int i) {
        return d(f.a(i, 0));
    }

    public static int c(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    private void c() {
        OutputStream outputStream = this.f146a;
        if (outputStream != null) {
            outputStream.write(this.f147a, 0, this.f8797b);
            this.f8797b = 0;
            return;
        }
        throw new a();
    }

    public static int d(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public int a() {
        if (this.f146a == null) {
            return this.f8796a - this.f8797b;
        }
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array.");
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m114a() {
        if (this.f146a != null) {
            c();
        }
    }

    public void a(byte b2) {
        if (this.f8797b == this.f8796a) {
            c();
        }
        byte[] bArr = this.f147a;
        int i = this.f8797b;
        this.f8797b = i + 1;
        bArr[i] = b2;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m115a(int i) {
        if (i >= 0) {
            m134d(i);
        } else {
            m133c(i);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m116a(int i, int i2) {
        c(i, 0);
        m115a(i2);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m117a(int i, long j) {
        c(i, 0);
        m122a(j);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m118a(int i, a aVar) {
        c(i, 2);
        m123a(aVar);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m119a(int i, e eVar) {
        c(i, 2);
        m124a(eVar);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m120a(int i, String str) {
        c(i, 2);
        m125a(str);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m121a(int i, boolean z) {
        c(i, 0);
        m126a(z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m122a(long j) {
        m133c(j);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m123a(a aVar) {
        byte[] a2 = aVar.m64a();
        m134d(a2.length);
        a(a2);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m124a(e eVar) {
        m134d(eVar.mo223a());
        eVar.a(this);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m125a(String str) {
        byte[] bytes = str.getBytes("UTF-8");
        m134d(bytes.length);
        a(bytes);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m126a(boolean z) {
        m132c(z ? 1 : 0);
    }

    public void a(byte[] bArr) {
        m127a(bArr, 0, bArr.length);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m127a(byte[] bArr, int i, int i2) {
        int i3 = this.f8796a;
        int i4 = this.f8797b;
        if (i3 - i4 >= i2) {
            System.arraycopy(bArr, i, this.f147a, i4, i2);
            this.f8797b += i2;
            return;
        }
        int i5 = i3 - i4;
        System.arraycopy(bArr, i, this.f147a, i4, i5);
        int i6 = i + i5;
        int i7 = i2 - i5;
        this.f8797b = this.f8796a;
        c();
        if (i7 <= this.f8796a) {
            System.arraycopy(bArr, i6, this.f147a, 0, i7);
            this.f8797b = i7;
            return;
        }
        this.f146a.write(bArr, i6, i7);
    }

    public void b() {
        if (a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* renamed from: b  reason: collision with other method in class */
    public void m128b(int i) {
        m134d(i);
    }

    /* renamed from: b  reason: collision with other method in class */
    public void m129b(int i, int i2) {
        c(i, 0);
        m128b(i2);
    }

    /* renamed from: b  reason: collision with other method in class */
    public void m130b(int i, long j) {
        c(i, 0);
        m131b(j);
    }

    /* renamed from: b  reason: collision with other method in class */
    public void m131b(long j) {
        m133c(j);
    }

    /* renamed from: c  reason: collision with other method in class */
    public void m132c(int i) {
        a((byte) i);
    }

    public void c(int i, int i2) {
        m134d(f.a(i, i2));
    }

    /* renamed from: c  reason: collision with other method in class */
    public void m133c(long j) {
        while (((-128) & j) != 0) {
            m132c((((int) j) & CertificateBody.profileType) | 128);
            j >>>= 7;
        }
        m132c((int) j);
    }

    /* renamed from: d  reason: collision with other method in class */
    public void m134d(int i) {
        while ((i & (-128)) != 0) {
            m132c((i & CertificateBody.profileType) | 128);
            i >>>= 7;
        }
        m132c(i);
    }
}
