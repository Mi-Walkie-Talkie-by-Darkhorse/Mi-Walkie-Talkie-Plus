package com.xiaomi.push;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.InputStream;
import java.util.Vector;

/* renamed from: com.xiaomi.push.b */
/* loaded from: classes2.dex */
public final class C6001b {

    /* renamed from: a */
    private int f21064a;

    /* renamed from: a */
    private final InputStream f21065a;

    /* renamed from: a */
    private final byte[] f21066a;

    /* renamed from: b */
    private int f21067b;

    /* renamed from: c */
    private int f21068c;

    /* renamed from: d */
    private int f21069d;

    /* renamed from: e */
    private int f21070e;

    /* renamed from: f */
    private int f21071f;

    /* renamed from: g */
    private int f21072g;

    /* renamed from: h */
    private int f21073h;

    /* renamed from: i */
    private int f21074i;

    private C6001b(InputStream inputStream) {
        this.f21071f = Integer.MAX_VALUE;
        this.f21073h = 64;
        this.f21074i = 67108864;
        this.f21066a = new byte[4096];
        this.f21064a = 0;
        this.f21068c = 0;
        this.f21065a = inputStream;
    }

    private C6001b(byte[] bArr, int i, int i2) {
        this.f21071f = Integer.MAX_VALUE;
        this.f21073h = 64;
        this.f21074i = 67108864;
        this.f21066a = bArr;
        this.f21064a = i2 + i;
        this.f21068c = i;
        this.f21065a = null;
    }

    /* renamed from: a */
    public static C6001b m3711a(InputStream inputStream) {
        return new C6001b(inputStream);
    }

    /* renamed from: a */
    public static C6001b m3709a(byte[] bArr, int i, int i2) {
        return new C6001b(bArr, i, i2);
    }

    /* renamed from: a */
    private boolean m3710a(boolean z) {
        int i = this.f21068c;
        int i2 = this.f21064a;
        if (i >= i2) {
            int i3 = this.f21070e;
            if (i3 + i2 == this.f21071f) {
                if (z) {
                    throw C6071d.m3414a();
                }
                return false;
            }
            this.f21070e = i3 + i2;
            this.f21068c = 0;
            InputStream inputStream = this.f21065a;
            int read = inputStream == null ? -1 : inputStream.read(this.f21066a);
            this.f21064a = read;
            if (read == 0 || read < -1) {
                throw new IllegalStateException("InputStream#read(byte[]) returned invalid result: " + this.f21064a + "\nThe InputStream implementation is buggy.");
            } else if (read == -1) {
                this.f21064a = 0;
                if (z) {
                    throw C6071d.m3414a();
                }
                return false;
            } else {
                m3706b();
                int i4 = this.f21070e + this.f21064a + this.f21067b;
                if (i4 > this.f21074i || i4 < 0) {
                    throw C6071d.m3407h();
                }
                return true;
            }
        }
        throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
    }

    /* renamed from: b */
    private void m3706b() {
        int i = this.f21064a + this.f21067b;
        this.f21064a = i;
        int i2 = this.f21070e + i;
        int i3 = this.f21071f;
        if (i2 <= i3) {
            this.f21067b = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f21067b = i4;
        this.f21064a = i - i4;
    }

    /* renamed from: a */
    public byte m3723a() {
        if (this.f21068c == this.f21064a) {
            m3710a(true);
        }
        byte[] bArr = this.f21066a;
        int i = this.f21068c;
        this.f21068c = i + 1;
        return bArr[i];
    }

    /* renamed from: a */
    public int m3722a() {
        if (m3705b()) {
            this.f21069d = 0;
            return 0;
        }
        int m3700d = m3700d();
        this.f21069d = m3700d;
        if (m3700d != 0) {
            return m3700d;
        }
        throw C6071d.m3411d();
    }

    /* renamed from: a */
    public int m3716a(int i) {
        if (i >= 0) {
            int i2 = i + this.f21070e + this.f21068c;
            int i3 = this.f21071f;
            if (i2 <= i3) {
                this.f21071f = i2;
                m3706b();
                return i3;
            }
            throw C6071d.m3414a();
        }
        throw C6071d.m3413b();
    }

    /* renamed from: a */
    public long m3721a() {
        return m3702c();
    }

    /* renamed from: a */
    public C5967a m3720a() {
        int m3700d = m3700d();
        int i = this.f21064a;
        int i2 = this.f21068c;
        if (m3700d > i - i2 || m3700d <= 0) {
            return C5967a.m3812a(m3713a(m3700d));
        }
        C5967a m3811a = C5967a.m3811a(this.f21066a, i2, m3700d);
        this.f21068c += m3700d;
        return m3811a;
    }

    /* renamed from: a */
    public String m3719a() {
        int m3700d = m3700d();
        if (m3700d > this.f21064a - this.f21068c || m3700d <= 0) {
            return new String(m3713a(m3700d), "UTF-8");
        }
        String str = new String(this.f21066a, this.f21068c, m3700d, "UTF-8");
        this.f21068c += m3700d;
        return str;
    }

    /* renamed from: a */
    public void m3718a() {
        int m3722a;
        do {
            m3722a = m3722a();
            if (m3722a == 0) {
                return;
            }
        } while (m3714a(m3722a));
    }

    /* renamed from: a */
    public void m3715a(int i) {
        if (this.f21069d != i) {
            throw C6071d.m3410e();
        }
    }

    /* renamed from: a */
    public void m3712a(AbstractC6114e abstractC6114e) {
        int m3700d = m3700d();
        if (this.f21072g >= this.f21073h) {
            throw C6071d.m3408g();
        }
        int m3716a = m3716a(m3700d);
        this.f21072g++;
        abstractC6114e.mo3143a(this);
        m3715a(0);
        this.f21072g--;
        m3704b(m3716a);
    }

    /* renamed from: a */
    public boolean m3717a() {
        return m3700d() != 0;
    }

    /* renamed from: a */
    public boolean m3714a(int i) {
        int m3013a = C6143f.m3013a(i);
        if (m3013a == 0) {
            m3708b();
            return true;
        } else if (m3013a == 1) {
            m3699d();
            return true;
        } else if (m3013a == 2) {
            m3701c(m3700d());
            return true;
        } else if (m3013a == 3) {
            m3718a();
            m3715a(C6143f.m3012a(C6143f.m3011b(i), 4));
            return true;
        } else if (m3013a != 4) {
            if (m3013a == 5) {
                m3698e();
                return true;
            }
            throw C6071d.m3409f();
        } else {
            return false;
        }
    }

    /* renamed from: a */
    public byte[] m3713a(int i) {
        if (i < 0) {
            throw C6071d.m3413b();
        }
        int i2 = this.f21070e;
        int i3 = this.f21068c;
        int i4 = i2 + i3 + i;
        int i5 = this.f21071f;
        if (i4 > i5) {
            m3701c((i5 - i2) - i3);
            throw C6071d.m3414a();
        }
        int i6 = this.f21064a;
        if (i <= i6 - i3) {
            byte[] bArr = new byte[i];
            System.arraycopy(this.f21066a, i3, bArr, 0, i);
            this.f21068c += i;
            return bArr;
        } else if (i >= 4096) {
            this.f21070e = i2 + i6;
            this.f21068c = 0;
            this.f21064a = 0;
            int i7 = i6 - i3;
            int i8 = i - i7;
            Vector vector = new Vector();
            while (i8 > 0) {
                int min = Math.min(i8, 4096);
                byte[] bArr2 = new byte[min];
                int i9 = 0;
                while (i9 < min) {
                    InputStream inputStream = this.f21065a;
                    int read = inputStream == null ? -1 : inputStream.read(bArr2, i9, min - i9);
                    if (read == -1) {
                        throw C6071d.m3414a();
                    }
                    this.f21070e += read;
                    i9 += read;
                }
                i8 -= min;
                vector.addElement(bArr2);
            }
            byte[] bArr3 = new byte[i];
            System.arraycopy(this.f21066a, i3, bArr3, 0, i7);
            for (int i10 = 0; i10 < vector.size(); i10++) {
                byte[] bArr4 = (byte[]) vector.elementAt(i10);
                System.arraycopy(bArr4, 0, bArr3, i7, bArr4.length);
                i7 += bArr4.length;
            }
            return bArr3;
        } else {
            byte[] bArr5 = new byte[i];
            int i11 = i6 - i3;
            System.arraycopy(this.f21066a, i3, bArr5, 0, i11);
            this.f21068c = this.f21064a;
            while (true) {
                m3710a(true);
                int i12 = i - i11;
                int i13 = this.f21064a;
                if (i12 <= i13) {
                    System.arraycopy(this.f21066a, 0, bArr5, i11, i12);
                    this.f21068c = i12;
                    return bArr5;
                }
                System.arraycopy(this.f21066a, 0, bArr5, i11, i13);
                int i14 = this.f21064a;
                i11 += i14;
                this.f21068c = i14;
            }
        }
    }

    /* renamed from: b */
    public int m3708b() {
        return m3700d();
    }

    /* renamed from: b */
    public long m3707b() {
        return m3702c();
    }

    /* renamed from: b */
    public void m3704b(int i) {
        this.f21071f = i;
        m3706b();
    }

    /* renamed from: b */
    public boolean m3705b() {
        return this.f21068c == this.f21064a && !m3710a(false);
    }

    /* renamed from: c */
    public int m3703c() {
        return m3700d();
    }

    /* renamed from: c */
    public long m3702c() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte m3723a = m3723a();
            j |= (m3723a & Ascii.DEL) << i;
            if ((m3723a & UnsignedBytes.MAX_POWER_OF_TWO) == 0) {
                return j;
            }
        }
        throw C6071d.m3412c();
    }

    /* renamed from: c */
    public void m3701c(int i) {
        if (i < 0) {
            throw C6071d.m3413b();
        }
        int i2 = this.f21070e;
        int i3 = this.f21068c;
        int i4 = i2 + i3 + i;
        int i5 = this.f21071f;
        if (i4 > i5) {
            m3701c((i5 - i2) - i3);
            throw C6071d.m3414a();
        }
        int i6 = this.f21064a;
        if (i <= i6 - i3) {
            this.f21068c = i3 + i;
            return;
        }
        int i7 = i6 - i3;
        this.f21070e = i2 + i6;
        this.f21068c = 0;
        this.f21064a = 0;
        while (i7 < i) {
            InputStream inputStream = this.f21065a;
            int skip = inputStream == null ? -1 : (int) inputStream.skip(i - i7);
            if (skip <= 0) {
                throw C6071d.m3414a();
            }
            i7 += skip;
            this.f21070e += skip;
        }
    }

    /* renamed from: d */
    public int m3700d() {
        int i;
        byte m3723a = m3723a();
        if (m3723a >= 0) {
            return m3723a;
        }
        int i2 = m3723a & Ascii.DEL;
        byte m3723a2 = m3723a();
        if (m3723a2 >= 0) {
            i = m3723a2 << 7;
        } else {
            i2 |= (m3723a2 & Ascii.DEL) << 7;
            byte m3723a3 = m3723a();
            if (m3723a3 >= 0) {
                i = m3723a3 << 14;
            } else {
                i2 |= (m3723a3 & Ascii.DEL) << 14;
                byte m3723a4 = m3723a();
                if (m3723a4 < 0) {
                    int i3 = i2 | ((m3723a4 & Ascii.DEL) << 21);
                    byte m3723a5 = m3723a();
                    int i4 = i3 | (m3723a5 << Ascii.f10251FS);
                    if (m3723a5 < 0) {
                        for (int i5 = 0; i5 < 5; i5++) {
                            if (m3723a() >= 0) {
                                return i4;
                            }
                        }
                        throw C6071d.m3412c();
                    }
                    return i4;
                }
                i = m3723a4 << Ascii.NAK;
            }
        }
        return i2 | i;
    }

    /* renamed from: d */
    public long m3699d() {
        byte m3723a = m3723a();
        byte m3723a2 = m3723a();
        return ((m3723a2 & 255) << 8) | (m3723a & 255) | ((m3723a() & 255) << 16) | ((m3723a() & 255) << 24) | ((m3723a() & 255) << 32) | ((m3723a() & 255) << 40) | ((m3723a() & 255) << 48) | ((m3723a() & 255) << 56);
    }

    /* renamed from: e */
    public int m3698e() {
        return (m3723a() & UnsignedBytes.MAX_VALUE) | ((m3723a() & UnsignedBytes.MAX_VALUE) << 8) | ((m3723a() & UnsignedBytes.MAX_VALUE) << 16) | ((m3723a() & UnsignedBytes.MAX_VALUE) << 24);
    }
}
