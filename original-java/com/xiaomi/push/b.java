package com.xiaomi.push;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.InputStream;
import java.util.Vector;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private int f8761a;

    /* renamed from: a  reason: collision with other field name */
    private final InputStream f118a;

    /* renamed from: a  reason: collision with other field name */
    private final byte[] f119a;

    /* renamed from: b  reason: collision with root package name */
    private int f8762b;

    /* renamed from: c  reason: collision with root package name */
    private int f8763c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;

    private b(InputStream inputStream) {
        this.f = Integer.MAX_VALUE;
        this.h = 64;
        this.i = 67108864;
        this.f119a = new byte[4096];
        this.f8761a = 0;
        this.f8763c = 0;
        this.f118a = inputStream;
    }

    private b(byte[] bArr, int i, int i2) {
        this.f = Integer.MAX_VALUE;
        this.h = 64;
        this.i = 67108864;
        this.f119a = bArr;
        this.f8761a = i2 + i;
        this.f8763c = i;
        this.f118a = null;
    }

    public static b a(InputStream inputStream) {
        return new b(inputStream);
    }

    public static b a(byte[] bArr, int i, int i2) {
        return new b(bArr, i, i2);
    }

    private boolean a(boolean z) {
        int i = this.f8763c;
        int i2 = this.f8761a;
        if (i >= i2) {
            int i3 = this.e;
            if (i3 + i2 != this.f) {
                this.e = i3 + i2;
                this.f8763c = 0;
                InputStream inputStream = this.f118a;
                int read = inputStream == null ? -1 : inputStream.read(this.f119a);
                this.f8761a = read;
                if (read == 0 || read < -1) {
                    throw new IllegalStateException("InputStream#read(byte[]) returned invalid result: " + this.f8761a + "\nThe InputStream implementation is buggy.");
                } else if (read == -1) {
                    this.f8761a = 0;
                    if (!z) {
                        return false;
                    }
                    throw d.a();
                } else {
                    b();
                    int i4 = this.e + this.f8761a + this.f8762b;
                    if (i4 <= this.i && i4 >= 0) {
                        return true;
                    }
                    throw d.h();
                }
            } else if (!z) {
                return false;
            } else {
                throw d.a();
            }
        } else {
            throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
        }
    }

    private void b() {
        int i = this.f8761a + this.f8762b;
        this.f8761a = i;
        int i2 = this.e + i;
        int i3 = this.f;
        if (i2 > i3) {
            int i4 = i2 - i3;
            this.f8762b = i4;
            this.f8761a = i - i4;
            return;
        }
        this.f8762b = 0;
    }

    public byte a() {
        if (this.f8763c == this.f8761a) {
            a(true);
        }
        byte[] bArr = this.f119a;
        int i = this.f8763c;
        this.f8763c = i + 1;
        return bArr[i];
    }

    /* renamed from: a  reason: collision with other method in class */
    public int m75a() {
        if (m86b()) {
            this.d = 0;
            return 0;
        }
        int d = d();
        this.d = d;
        if (d != 0) {
            return d;
        }
        throw d.d();
    }

    public int a(int i) {
        if (i >= 0) {
            int i2 = i + this.e + this.f8763c;
            int i3 = this.f;
            if (i2 <= i3) {
                this.f = i2;
                b();
                return i3;
            }
            throw d.a();
        }
        throw d.b();
    }

    /* renamed from: a  reason: collision with other method in class */
    public long m76a() {
        return m87c();
    }

    /* renamed from: a  reason: collision with other method in class */
    public a m77a() {
        int d = d();
        int i = this.f8761a;
        int i2 = this.f8763c;
        if (d > i - i2 || d <= 0) {
            return a.a(m83a(d));
        }
        a a2 = a.a(this.f119a, i2, d);
        this.f8763c += d;
        return a2;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m78a() {
        int d = d();
        if (d > this.f8761a - this.f8763c || d <= 0) {
            return new String(m83a(d), "UTF-8");
        }
        String str = new String(this.f119a, this.f8763c, d, "UTF-8");
        this.f8763c += d;
        return str;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m79a() {
        int a2;
        do {
            a2 = m75a();
            if (a2 == 0) {
                return;
            }
        } while (m82a(a2));
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m80a(int i) {
        if (this.d != i) {
            throw d.e();
        }
    }

    public void a(e eVar) {
        int d = d();
        if (this.g < this.h) {
            int a2 = a(d);
            this.g++;
            eVar.a(this);
            m80a(0);
            this.g--;
            b(a2);
            return;
        }
        throw d.g();
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m81a() {
        return d() != 0;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m82a(int i) {
        int a2 = f.a(i);
        if (a2 == 0) {
            m84b();
            return true;
        } else if (a2 == 1) {
            m88d();
            return true;
        } else if (a2 == 2) {
            c(d());
            return true;
        } else if (a2 == 3) {
            m79a();
            m80a(f.a(f.b(i), 4));
            return true;
        } else if (a2 == 4) {
            return false;
        } else {
            if (a2 == 5) {
                e();
                return true;
            }
            throw d.f();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public byte[] m83a(int i) {
        if (i >= 0) {
            int i2 = this.e;
            int i3 = this.f8763c;
            int i4 = i2 + i3 + i;
            int i5 = this.f;
            if (i4 <= i5) {
                int i6 = this.f8761a;
                if (i <= i6 - i3) {
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.f119a, i3, bArr, 0, i);
                    this.f8763c += i;
                    return bArr;
                } else if (i < 4096) {
                    byte[] bArr2 = new byte[i];
                    int i7 = i6 - i3;
                    System.arraycopy(this.f119a, i3, bArr2, 0, i7);
                    this.f8763c = this.f8761a;
                    while (true) {
                        a(true);
                        int i8 = i - i7;
                        int i9 = this.f8761a;
                        if (i8 > i9) {
                            System.arraycopy(this.f119a, 0, bArr2, i7, i9);
                            int i10 = this.f8761a;
                            i7 += i10;
                            this.f8763c = i10;
                        } else {
                            System.arraycopy(this.f119a, 0, bArr2, i7, i8);
                            this.f8763c = i8;
                            return bArr2;
                        }
                    }
                } else {
                    this.e = i2 + i6;
                    this.f8763c = 0;
                    this.f8761a = 0;
                    int i11 = i6 - i3;
                    int i12 = i - i11;
                    Vector vector = new Vector();
                    while (i12 > 0) {
                        int min = Math.min(i12, 4096);
                        byte[] bArr3 = new byte[min];
                        int i13 = 0;
                        while (i13 < min) {
                            InputStream inputStream = this.f118a;
                            int read = inputStream == null ? -1 : inputStream.read(bArr3, i13, min - i13);
                            if (read != -1) {
                                this.e += read;
                                i13 += read;
                            } else {
                                throw d.a();
                            }
                        }
                        i12 -= min;
                        vector.addElement(bArr3);
                    }
                    byte[] bArr4 = new byte[i];
                    System.arraycopy(this.f119a, i3, bArr4, 0, i11);
                    for (int i14 = 0; i14 < vector.size(); i14++) {
                        byte[] bArr5 = (byte[]) vector.elementAt(i14);
                        System.arraycopy(bArr5, 0, bArr4, i11, bArr5.length);
                        i11 += bArr5.length;
                    }
                    return bArr4;
                }
            } else {
                c((i5 - i2) - i3);
                throw d.a();
            }
        } else {
            throw d.b();
        }
    }

    /* renamed from: b  reason: collision with other method in class */
    public int m84b() {
        return d();
    }

    /* renamed from: b  reason: collision with other method in class */
    public long m85b() {
        return m87c();
    }

    public void b(int i) {
        this.f = i;
        b();
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m86b() {
        return this.f8763c == this.f8761a && !a(false);
    }

    public int c() {
        return d();
    }

    /* renamed from: c  reason: collision with other method in class */
    public long m87c() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte a2 = a();
            j |= (a2 & Ascii.DEL) << i;
            if ((a2 & UnsignedBytes.MAX_POWER_OF_TWO) == 0) {
                return j;
            }
        }
        throw d.c();
    }

    public void c(int i) {
        if (i >= 0) {
            int i2 = this.e;
            int i3 = this.f8763c;
            int i4 = i2 + i3 + i;
            int i5 = this.f;
            if (i4 <= i5) {
                int i6 = this.f8761a;
                if (i <= i6 - i3) {
                    this.f8763c = i3 + i;
                    return;
                }
                int i7 = i6 - i3;
                this.e = i2 + i6;
                this.f8763c = 0;
                this.f8761a = 0;
                while (i7 < i) {
                    InputStream inputStream = this.f118a;
                    int skip = inputStream == null ? -1 : (int) inputStream.skip(i - i7);
                    if (skip > 0) {
                        i7 += skip;
                        this.e += skip;
                    } else {
                        throw d.a();
                    }
                }
                return;
            }
            c((i5 - i2) - i3);
            throw d.a();
        }
        throw d.b();
    }

    public int d() {
        int i;
        byte a2 = a();
        if (a2 >= 0) {
            return a2;
        }
        int i2 = a2 & Ascii.DEL;
        byte a3 = a();
        if (a3 >= 0) {
            i = a3 << 7;
        } else {
            i2 |= (a3 & Ascii.DEL) << 7;
            byte a4 = a();
            if (a4 >= 0) {
                i = a4 << 14;
            } else {
                i2 |= (a4 & Ascii.DEL) << 14;
                byte a5 = a();
                if (a5 >= 0) {
                    i = a5 << Ascii.NAK;
                } else {
                    int i3 = i2 | ((a5 & Ascii.DEL) << 21);
                    byte a6 = a();
                    int i4 = i3 | (a6 << Ascii.FS);
                    if (a6 >= 0) {
                        return i4;
                    }
                    for (int i5 = 0; i5 < 5; i5++) {
                        if (a() >= 0) {
                            return i4;
                        }
                    }
                    throw d.c();
                }
            }
        }
        return i2 | i;
    }

    /* renamed from: d  reason: collision with other method in class */
    public long m88d() {
        byte a2 = a();
        byte a3 = a();
        return ((a3 & 255) << 8) | (a2 & 255) | ((a() & 255) << 16) | ((a() & 255) << 24) | ((a() & 255) << 32) | ((a() & 255) << 40) | ((a() & 255) << 48) | ((a() & 255) << 56);
    }

    public int e() {
        return (a() & UnsignedBytes.MAX_VALUE) | ((a() & UnsignedBytes.MAX_VALUE) << 8) | ((a() & UnsignedBytes.MAX_VALUE) << 16) | ((a() & UnsignedBytes.MAX_VALUE) << 24);
    }
}
