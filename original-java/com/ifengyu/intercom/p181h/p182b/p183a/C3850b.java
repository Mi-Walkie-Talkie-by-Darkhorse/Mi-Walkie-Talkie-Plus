package com.ifengyu.intercom.p181h.p182b.p183a;

import com.ifengyu.blelib.p150a.SeqGenerator;
import com.ifengyu.blelib.p152c.ByteUtils;
import com.ifengyu.blelib.p152c.CRC16;

/* compiled from: Packet.java */
/* renamed from: com.ifengyu.intercom.h.b.a.b */
/* loaded from: classes2.dex */
public class C3850b {

    /* renamed from: a */
    private C3851a f13710a;

    /* renamed from: b */
    private byte[] f13711b;

    /* renamed from: c */
    private byte[] f13712c;

    /* compiled from: Packet.java */
    /* renamed from: com.ifengyu.intercom.h.b.a.b$a */
    /* loaded from: classes2.dex */
    public static class C3851a {

        /* renamed from: a */
        byte f13713a;

        /* renamed from: b */
        byte f13714b;

        /* renamed from: c */
        int f13715c;

        /* renamed from: d */
        int f13716d;

        /* renamed from: e */
        int f13717e;

        /* renamed from: f */
        int f13718f;

        /* renamed from: g */
        int f13719g;

        /* renamed from: a */
        public int m12409a() {
            return this.f13716d;
        }

        /* renamed from: b */
        public int m12408b() {
            return this.f13719g;
        }

        /* renamed from: c */
        public int m12407c() {
            return this.f13718f;
        }

        /* renamed from: d */
        public int m12406d() {
            return this.f13715c;
        }

        /* renamed from: e */
        public byte m12405e() {
            return this.f13713a;
        }

        /* renamed from: f */
        public int m12404f() {
            return this.f13717e;
        }

        /* renamed from: g */
        public byte m12403g() {
            return this.f13714b;
        }

        public String toString() {
            return "Header{prefix=" + ((int) this.f13713a) + ", version=" + ((int) this.f13714b) + ", length=" + this.f13715c + ", cmdId=" + this.f13716d + ", seq=" + this.f13717e + ", encryptFlag=" + this.f13718f + ", code=" + this.f13719g + '}';
        }
    }

    public C3850b(int i, int i2, byte[] bArr) {
        C3851a c3851a = new C3851a();
        this.f13710a = c3851a;
        c3851a.f13713a = (byte) -2;
        c3851a.f13714b = (byte) 1;
        c3851a.f13715c = bArr.length + 12;
        c3851a.f13716d = i;
        c3851a.f13717e = SeqGenerator.m14384a().m14383b();
        C3851a c3851a2 = this.f13710a;
        c3851a2.f13718f = i2;
        c3851a2.f13719g = 0;
        this.f13711b = bArr;
    }

    /* renamed from: a */
    private byte[] m12414a(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i + 2];
        byte[] m14359b = CRC16.m14359b(bArr);
        System.arraycopy(bArr, 0, bArr2, 0, i);
        System.arraycopy(m14359b, 0, bArr2, i, 2);
        this.f13712c = m14359b;
        return bArr2;
    }

    /* renamed from: d */
    private byte[] m12411d() {
        byte[] bArr = new byte[m12412c() + 10];
        bArr[0] = this.f13710a.m12405e();
        bArr[1] = this.f13710a.m12403g();
        C3852c.m12393j(bArr, this.f13710a.m12406d(), 2, 2);
        C3852c.m12393j(bArr, this.f13710a.m12409a(), 4, 2);
        C3852c.m12393j(bArr, this.f13710a.m12404f(), 6, 2);
        bArr[8] = (byte) this.f13710a.m12407c();
        bArr[9] = (byte) this.f13710a.m12408b();
        return bArr;
    }

    /* renamed from: b */
    public byte[] m12413b() {
        return this.f13711b;
    }

    /* renamed from: c */
    public int m12412c() {
        byte[] bArr = this.f13711b;
        if (bArr != null) {
            return bArr.length;
        }
        return 0;
    }

    /* renamed from: e */
    public byte[] m12410e() {
        byte[] m12411d = m12411d();
        System.arraycopy(m12413b(), 0, m12411d, 10, m12412c());
        return m12414a(m12411d, m12411d.length);
    }

    public String toString() {
        return "Packet{header=" + this.f13710a + ", data=" + ByteUtils.m14367b(this.f13711b) + ", crc=" + ByteUtils.m14367b(this.f13712c) + '}';
    }
}
