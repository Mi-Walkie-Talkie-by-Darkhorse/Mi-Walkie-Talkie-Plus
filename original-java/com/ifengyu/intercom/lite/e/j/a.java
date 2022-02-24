package com.ifengyu.intercom.lite.e.j;

/* compiled from: OtaPacketParser.java */
/* loaded from: classes2.dex */
public class a {
    private static final String e = "a";

    /* renamed from: a  reason: collision with root package name */
    private int f5403a;

    /* renamed from: b  reason: collision with root package name */
    private int f5404b = -1;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f5405c;
    private int d;

    public void a() {
        this.d = 0;
        this.f5403a = 0;
        this.f5404b = -1;
        this.f5405c = null;
    }

    public void b(byte[] bArr) {
        a();
        this.f5405c = bArr;
        int length = bArr.length;
        if (length % 16 == 0) {
            this.f5403a = length / 16;
        } else {
            this.f5403a = (int) Math.floor((length / 16) + 1);
        }
    }

    public byte[] c() {
        int d = d();
        byte[] a2 = a(d);
        this.f5404b = d;
        return a2;
    }

    public int d() {
        return this.f5404b + 1;
    }

    public int e() {
        return this.d;
    }

    public boolean f() {
        int i = this.f5403a;
        return i > 0 && this.f5404b + 1 < i;
    }

    public boolean g() {
        int floor = (int) Math.floor((d() / this.f5403a) * 100.0f);
        if (floor == this.d) {
            return false;
        }
        this.d = floor;
        return true;
    }

    public byte[] a(int i) {
        int length = this.f5405c.length;
        if (length > 16) {
            length = i + 1 == this.f5403a ? length - (i * 16) : 16;
        }
        int i2 = length + 4;
        byte[] bArr = new byte[20];
        for (int i3 = 0; i3 < 20; i3++) {
            bArr[i3] = -1;
        }
        System.arraycopy(this.f5405c, i * 16, bArr, 2, i2 - 4);
        b(bArr, i);
        int a2 = a(bArr);
        a(bArr, a2);
        if (com.ifengyu.blelib.a.a()) {
            String str = e;
            com.ifengyu.blelib.a.a(str, "ota packet ---> index : " + i + " total : " + this.f5403a + " crc : " + a2 + " content : " + com.ifengyu.blelib.d.a.a(bArr));
        }
        return bArr;
    }

    public void b(byte[] bArr, int i) {
        bArr[0] = (byte) (i & 255);
        bArr[1] = (byte) ((i >> 8) & 255);
    }

    public int b() {
        return this.f5404b;
    }

    public void a(byte[] bArr, int i) {
        int length = bArr.length - 2;
        bArr[length] = (byte) (i & 255);
        bArr[length + 1] = (byte) ((i >> 8) & 255);
    }

    public int a(byte[] bArr) {
        int length = bArr.length - 2;
        short[] sArr = {0, -24575};
        int i = 65535;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = 0;
            byte b2 = bArr[i2];
            while (i3 < 8) {
                i = (sArr[(i ^ (b2 == 1 ? 1 : 0)) & 1] & 65535) ^ (i >> 1);
                i3++;
                b2 = (b2 == 1 ? 1 : 0) >> 1;
            }
        }
        return i;
    }
}
