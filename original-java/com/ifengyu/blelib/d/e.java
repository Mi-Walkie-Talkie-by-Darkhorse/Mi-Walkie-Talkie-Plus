package com.ifengyu.blelib.d;

import com.ifengyu.blelib.b.f;

/* compiled from: Packet.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private a f5198a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f5199b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f5200c;

    /* compiled from: Packet.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        byte f5201a;

        /* renamed from: b  reason: collision with root package name */
        byte f5202b;

        /* renamed from: c  reason: collision with root package name */
        int f5203c;
        int d;
        int e;

        public int a() {
            return this.d;
        }

        public int b() {
            return this.f5203c;
        }

        public byte c() {
            return this.f5201a;
        }

        public int d() {
            return this.e;
        }

        public byte e() {
            return this.f5202b;
        }

        public String toString() {
            return "Header{prefix=" + ((int) this.f5201a) + ", version=" + ((int) this.f5202b) + ", length=" + this.f5203c + ", cmdId=" + this.d + ", seq=" + this.e + '}';
        }
    }

    public e(int i, byte[] bArr) {
        a aVar = new a();
        this.f5198a = aVar;
        aVar.f5201a = (byte) -2;
        aVar.f5202b = (byte) 1;
        aVar.f5203c = bArr.length + 10;
        aVar.d = i;
        aVar.e = f.b().a();
        this.f5199b = bArr;
    }

    private byte[] d() {
        byte[] bArr = new byte[b() + 8];
        bArr[0] = this.f5198a.c();
        bArr[1] = this.f5198a.e();
        f.a(bArr, this.f5198a.b(), 2, 2);
        f.a(bArr, this.f5198a.a(), 4, 2);
        f.a(bArr, this.f5198a.d(), 6, 2);
        return bArr;
    }

    public byte[] a() {
        return this.f5199b;
    }

    public int b() {
        byte[] bArr = this.f5199b;
        if (bArr != null) {
            return bArr.length;
        }
        return 0;
    }

    public byte[] c() {
        byte[] d = d();
        System.arraycopy(a(), 0, d, 8, b());
        return a(d, d.length);
    }

    public String toString() {
        return "Packet{header=" + this.f5198a + ", data=" + a.a(this.f5199b) + ", crc=" + a.a(this.f5200c) + '}';
    }

    private byte[] a(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i + 2];
        byte[] a2 = b.a(bArr);
        System.arraycopy(bArr, 0, bArr2, 0, i);
        System.arraycopy(a2, 0, bArr2, i, 2);
        this.f5200c = a2;
        return bArr2;
    }
}
