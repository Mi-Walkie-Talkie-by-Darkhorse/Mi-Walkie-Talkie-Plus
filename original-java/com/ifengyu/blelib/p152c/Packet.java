package com.ifengyu.blelib.p152c;

import com.ifengyu.blelib.p150a.SeqGenerator;

/* renamed from: com.ifengyu.blelib.c.e */
/* loaded from: classes2.dex */
public class Packet {

    /* renamed from: a */
    private C3138a f12060a;

    /* renamed from: b */
    private byte[] f12061b;

    /* renamed from: c */
    private byte[] f12062c;

    /* compiled from: Packet.java */
    /* renamed from: com.ifengyu.blelib.c.e$a */
    /* loaded from: classes2.dex */
    public static class C3138a {

        /* renamed from: a */
        byte f12063a;

        /* renamed from: b */
        byte f12064b;

        /* renamed from: c */
        int f12065c;

        /* renamed from: d */
        int f12066d;

        /* renamed from: e */
        int f12067e;

        /* renamed from: a */
        public int m14346a() {
            return this.f12066d;
        }

        /* renamed from: b */
        public int m14345b() {
            return this.f12065c;
        }

        /* renamed from: c */
        public byte m14344c() {
            return this.f12063a;
        }

        /* renamed from: d */
        public int m14343d() {
            return this.f12067e;
        }

        /* renamed from: e */
        public byte m14342e() {
            return this.f12064b;
        }

        public String toString() {
            return "Header{prefix=" + ((int) this.f12063a) + ", version=" + ((int) this.f12064b) + ", length=" + this.f12065c + ", cmdId=" + this.f12066d + ", seq=" + this.f12067e + '}';
        }
    }

    public Packet(int i, byte[] bArr) {
        C3138a c3138a = new C3138a();
        this.f12060a = c3138a;
        c3138a.f12063a = (byte) -2;
        c3138a.f12064b = (byte) 1;
        c3138a.f12065c = bArr.length + 10;
        c3138a.f12066d = i;
        c3138a.f12067e = SeqGenerator.m14384a().m14383b();
        this.f12061b = bArr;
    }

    /* renamed from: a */
    private byte[] m14351a(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i + 2];
        byte[] m14359b = CRC16.m14359b(bArr);
        System.arraycopy(bArr, 0, bArr2, 0, i);
        System.arraycopy(m14359b, 0, bArr2, i, 2);
        this.f12062c = m14359b;
        return bArr2;
    }

    /* renamed from: d */
    private byte[] m14348d() {
        byte[] bArr = new byte[m14349c() + 8];
        bArr[0] = this.f12060a.m14344c();
        bArr[1] = this.f12060a.m14342e();
        PacketUtil.m14333i(bArr, this.f12060a.m14345b(), 2, 2);
        PacketUtil.m14333i(bArr, this.f12060a.m14346a(), 4, 2);
        PacketUtil.m14333i(bArr, this.f12060a.m14343d(), 6, 2);
        return bArr;
    }

    /* renamed from: b */
    public byte[] m14350b() {
        return this.f12061b;
    }

    /* renamed from: c */
    public int m14349c() {
        byte[] bArr = this.f12061b;
        if (bArr != null) {
            return bArr.length;
        }
        return 0;
    }

    /* renamed from: e */
    public byte[] m14347e() {
        byte[] m14348d = m14348d();
        System.arraycopy(m14350b(), 0, m14348d, 8, m14349c());
        return m14351a(m14348d, m14348d.length);
    }

    public String toString() {
        return "Packet{header=" + this.f12060a + ", data=" + ByteUtils.m14367b(this.f12061b) + ", crc=" + ByteUtils.m14367b(this.f12062c) + '}';
    }
}
