package com.xiaomi.push;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import org.bouncycastle.asn1.eac.CertificateBody;

/* renamed from: com.xiaomi.push.c */
/* loaded from: classes2.dex */
public final class C6035c {

    /* renamed from: a */
    private final int f21140a;

    /* renamed from: a */
    private final OutputStream f21141a;

    /* renamed from: a */
    private final byte[] f21142a;

    /* renamed from: b */
    private int f21143b;

    /* renamed from: com.xiaomi.push.c$a */
    /* loaded from: classes2.dex */
    public static class C6036a extends IOException {
        C6036a() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

    private C6035c(OutputStream outputStream, byte[] bArr) {
        this.f21141a = outputStream;
        this.f21142a = bArr;
        this.f21143b = 0;
        this.f21140a = bArr.length;
    }

    private C6035c(byte[] bArr, int i, int i2) {
        this.f21141a = null;
        this.f21142a = bArr;
        this.f21143b = i;
        this.f21140a = i + i2;
    }

    /* renamed from: a */
    public static int m3573a(int i) {
        if (i >= 0) {
            return m3529d(i);
        }
        return 10;
    }

    /* renamed from: a */
    public static int m3571a(int i, int i2) {
        return m3534c(i) + m3573a(i2);
    }

    /* renamed from: a */
    public static int m3569a(int i, long j) {
        return m3534c(i) + m3559a(j);
    }

    /* renamed from: a */
    public static int m3567a(int i, C5967a c5967a) {
        return m3534c(i) + m3557a(c5967a);
    }

    /* renamed from: a */
    public static int m3565a(int i, AbstractC6114e abstractC6114e) {
        return m3534c(i) + m3555a(abstractC6114e);
    }

    /* renamed from: a */
    public static int m3563a(int i, String str) {
        return m3534c(i) + m3551a(str);
    }

    /* renamed from: a */
    public static int m3561a(int i, boolean z) {
        return m3534c(i) + m3549a(z);
    }

    /* renamed from: a */
    public static int m3559a(long j) {
        return m3531c(j);
    }

    /* renamed from: a */
    public static int m3557a(C5967a c5967a) {
        return m3529d(c5967a.m3814a()) + c5967a.m3814a();
    }

    /* renamed from: a */
    public static int m3555a(AbstractC6114e abstractC6114e) {
        int mo3137b = abstractC6114e.mo3137b();
        return m3529d(mo3137b) + mo3137b;
    }

    /* renamed from: a */
    public static int m3551a(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            return m3529d(bytes.length) + bytes.length;
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("UTF-8 not supported.");
        }
    }

    /* renamed from: a */
    public static int m3549a(boolean z) {
        return 1;
    }

    /* renamed from: a */
    public static C6035c m3553a(OutputStream outputStream) {
        return m3552a(outputStream, 4096);
    }

    /* renamed from: a */
    public static C6035c m3552a(OutputStream outputStream, int i) {
        return new C6035c(outputStream, new byte[i]);
    }

    /* renamed from: a */
    public static C6035c m3546a(byte[] bArr, int i, int i2) {
        return new C6035c(bArr, i, i2);
    }

    /* renamed from: b */
    public static int m3543b(int i) {
        return m3529d(i);
    }

    /* renamed from: b */
    public static int m3541b(int i, int i2) {
        return m3534c(i) + m3543b(i2);
    }

    /* renamed from: b */
    public static int m3539b(int i, long j) {
        return m3534c(i) + m3537b(j);
    }

    /* renamed from: b */
    public static int m3537b(long j) {
        return m3531c(j);
    }

    /* renamed from: c */
    public static int m3534c(int i) {
        return m3529d(C6143f.m3012a(i, 0));
    }

    /* renamed from: c */
    public static int m3531c(long j) {
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

    /* renamed from: c */
    private void m3535c() {
        OutputStream outputStream = this.f21141a;
        if (outputStream == null) {
            throw new C6036a();
        }
        outputStream.write(this.f21142a, 0, this.f21143b);
        this.f21143b = 0;
    }

    /* renamed from: d */
    public static int m3529d(int i) {
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

    /* renamed from: a */
    public int m3576a() {
        if (this.f21141a == null) {
            return this.f21140a - this.f21143b;
        }
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array.");
    }

    /* renamed from: a */
    public void m3575a() {
        if (this.f21141a != null) {
            m3535c();
        }
    }

    /* renamed from: a */
    public void m3574a(byte b) {
        if (this.f21143b == this.f21140a) {
            m3535c();
        }
        byte[] bArr = this.f21142a;
        int i = this.f21143b;
        this.f21143b = i + 1;
        bArr[i] = b;
    }

    /* renamed from: a */
    public void m3572a(int i) {
        if (i >= 0) {
            m3528d(i);
        } else {
            m3530c(i);
        }
    }

    /* renamed from: a */
    public void m3570a(int i, int i2) {
        m3532c(i, 0);
        m3572a(i2);
    }

    /* renamed from: a */
    public void m3568a(int i, long j) {
        m3532c(i, 0);
        m3558a(j);
    }

    /* renamed from: a */
    public void m3566a(int i, C5967a c5967a) {
        m3532c(i, 2);
        m3556a(c5967a);
    }

    /* renamed from: a */
    public void m3564a(int i, AbstractC6114e abstractC6114e) {
        m3532c(i, 2);
        m3554a(abstractC6114e);
    }

    /* renamed from: a */
    public void m3562a(int i, String str) {
        m3532c(i, 2);
        m3550a(str);
    }

    /* renamed from: a */
    public void m3560a(int i, boolean z) {
        m3532c(i, 0);
        m3548a(z);
    }

    /* renamed from: a */
    public void m3558a(long j) {
        m3530c(j);
    }

    /* renamed from: a */
    public void m3556a(C5967a c5967a) {
        byte[] m3813a = c5967a.m3813a();
        m3528d(m3813a.length);
        m3547a(m3813a);
    }

    /* renamed from: a */
    public void m3554a(AbstractC6114e abstractC6114e) {
        m3528d(abstractC6114e.mo3145a());
        abstractC6114e.mo3141a(this);
    }

    /* renamed from: a */
    public void m3550a(String str) {
        byte[] bytes = str.getBytes("UTF-8");
        m3528d(bytes.length);
        m3547a(bytes);
    }

    /* renamed from: a */
    public void m3548a(boolean z) {
        m3533c(z ? 1 : 0);
    }

    /* renamed from: a */
    public void m3547a(byte[] bArr) {
        m3545a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public void m3545a(byte[] bArr, int i, int i2) {
        int i3 = this.f21140a;
        int i4 = this.f21143b;
        if (i3 - i4 >= i2) {
            System.arraycopy(bArr, i, this.f21142a, i4, i2);
            this.f21143b += i2;
            return;
        }
        int i5 = i3 - i4;
        System.arraycopy(bArr, i, this.f21142a, i4, i5);
        int i6 = i + i5;
        int i7 = i2 - i5;
        this.f21143b = this.f21140a;
        m3535c();
        if (i7 > this.f21140a) {
            this.f21141a.write(bArr, i6, i7);
            return;
        }
        System.arraycopy(bArr, i6, this.f21142a, 0, i7);
        this.f21143b = i7;
    }

    /* renamed from: b */
    public void m3544b() {
        if (m3576a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* renamed from: b */
    public void m3542b(int i) {
        m3528d(i);
    }

    /* renamed from: b */
    public void m3540b(int i, int i2) {
        m3532c(i, 0);
        m3542b(i2);
    }

    /* renamed from: b */
    public void m3538b(int i, long j) {
        m3532c(i, 0);
        m3536b(j);
    }

    /* renamed from: b */
    public void m3536b(long j) {
        m3530c(j);
    }

    /* renamed from: c */
    public void m3533c(int i) {
        m3574a((byte) i);
    }

    /* renamed from: c */
    public void m3532c(int i, int i2) {
        m3528d(C6143f.m3012a(i, i2));
    }

    /* renamed from: c */
    public void m3530c(long j) {
        while (((-128) & j) != 0) {
            m3533c((((int) j) & CertificateBody.profileType) | 128);
            j >>>= 7;
        }
        m3533c((int) j);
    }

    /* renamed from: d */
    public void m3528d(int i) {
        while ((i & (-128)) != 0) {
            m3533c((i & CertificateBody.profileType) | 128);
            i >>>= 7;
        }
        m3533c(i);
    }
}
