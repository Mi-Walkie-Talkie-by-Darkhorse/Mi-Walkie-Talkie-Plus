package com.ifengyu.intercom.p181h.p182b.p183a;

import com.ifengyu.blelib.p152c.ByteUtils;
import com.ifengyu.blelib.p152c.CRC16;
import com.ifengyu.library.utils.C4971k;

/* renamed from: com.ifengyu.intercom.h.b.a.a */
/* loaded from: classes2.dex */
public class Mi3OtaPacketParser {

    /* renamed from: e */
    private static final String f13705e = "a";

    /* renamed from: a */
    private int f13706a;

    /* renamed from: b */
    private int f13707b = -1;

    /* renamed from: c */
    private byte[] f13708c;

    /* renamed from: d */
    private int f13709d;

    /* renamed from: a */
    public void m12424a() {
        this.f13709d = 0;
        this.f13706a = 0;
        this.f13707b = -1;
        this.f13708c = null;
    }

    /* renamed from: b */
    public void m12423b(byte[] bArr, byte[] bArr2) {
        System.arraycopy(bArr2, 0, bArr, bArr.length - 2, 2);
    }

    /* renamed from: c */
    public void m12422c(byte[] bArr, int i) {
        bArr[0] = (byte) ((i >> 8) & 255);
        bArr[1] = (byte) (i & 255);
    }

    /* renamed from: d */
    public byte[] m12421d() {
        int m12420e = m12420e();
        byte[] m12419f = m12419f(m12420e);
        this.f13707b = m12420e;
        return m12419f;
    }

    /* renamed from: e */
    public int m12420e() {
        return this.f13707b + 1;
    }

    /* renamed from: f */
    public byte[] m12419f(int i) {
        byte[] bArr = this.f13708c;
        int length = bArr.length;
        if (length > 90) {
            length = i + 1 == this.f13706a ? length - (i * 90) : 90;
        }
        int i2 = length + 2 + 2;
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i * 90, bArr2, 2, length);
        m12422c(bArr2, i + 1);
        byte[] m14358c = CRC16.m14358c(bArr2, i2 - 2);
        m12423b(bArr2, m14358c);
        if (C4971k.m8653g()) {
            String str = f13705e;
            C4971k.m8659a(str, "ota packet ---> index : " + i + ", total : " + this.f13706a + ", crc : " + ByteUtils.m14367b(m14358c) + ", content : " + ByteUtils.m14367b(bArr2));
        }
        return bArr2;
    }

    /* renamed from: g */
    public int m12418g() {
        return this.f13709d;
    }

    /* renamed from: h */
    public boolean m12417h() {
        int i = this.f13706a;
        return i > 0 && this.f13707b + 1 < i;
    }

    /* renamed from: i */
    public boolean m12416i() {
        int floor = (int) Math.floor((m12420e() / this.f13706a) * 100.0f);
        if (floor == this.f13709d) {
            return false;
        }
        this.f13709d = floor;
        return true;
    }

    /* renamed from: j */
    public void m12415j(byte[] bArr) {
        m12424a();
        this.f13708c = bArr;
        int length = bArr.length;
        if (length % 90 == 0) {
            this.f13706a = length / 90;
        } else {
            this.f13706a = (int) Math.floor((length / 90) + 1);
        }
    }
}
