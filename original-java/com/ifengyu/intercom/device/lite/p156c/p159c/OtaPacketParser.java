package com.ifengyu.intercom.device.lite.p156c.p159c;

import com.ifengyu.blelib.p152c.ByteUtils;
import com.ifengyu.library.utils.C4971k;

/* renamed from: com.ifengyu.intercom.device.lite.c.c.a */
/* loaded from: classes2.dex */
public class OtaPacketParser {

    /* renamed from: e */
    private static final String f12173e = "a";

    /* renamed from: a */
    private int f12174a;

    /* renamed from: b */
    private int f12175b = -1;

    /* renamed from: c */
    private byte[] f12176c;

    /* renamed from: d */
    private int f12177d;

    /* renamed from: a */
    public void m14165a() {
        this.f12177d = 0;
        this.f12174a = 0;
        this.f12175b = -1;
        this.f12176c = null;
    }

    /* renamed from: b */
    public int m14164b(byte[] bArr) {
        int length = bArr.length - 2;
        short[] sArr = {0, -24575};
        int i = 65535;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = bArr[i2];
            for (int i4 = 0; i4 < 8; i4++) {
                i = (sArr[(i ^ i3) & 1] & 65535) ^ (i >> 1);
                i3 >>= 1;
            }
        }
        return i;
    }

    /* renamed from: c */
    public void m14163c(byte[] bArr, int i) {
        int length = bArr.length - 2;
        bArr[length] = (byte) (i & 255);
        bArr[length + 1] = (byte) ((i >> 8) & 255);
    }

    /* renamed from: d */
    public void m14162d(byte[] bArr, int i) {
        bArr[0] = (byte) (i & 255);
        bArr[1] = (byte) ((i >> 8) & 255);
    }

    /* renamed from: e */
    public int m14161e() {
        return this.f12175b;
    }

    /* renamed from: f */
    public byte[] m14160f() {
        int m14159g = m14159g();
        byte[] m14158h = m14158h(m14159g);
        this.f12175b = m14159g;
        return m14158h;
    }

    /* renamed from: g */
    public int m14159g() {
        return this.f12175b + 1;
    }

    /* renamed from: h */
    public byte[] m14158h(int i) {
        int length = this.f12176c.length;
        if (length > 16) {
            length = i + 1 == this.f12174a ? length - (i * 16) : 16;
        }
        int i2 = length + 4;
        byte[] bArr = new byte[20];
        for (int i3 = 0; i3 < 20; i3++) {
            bArr[i3] = -1;
        }
        System.arraycopy(this.f12176c, i * 16, bArr, 2, i2 - 4);
        m14162d(bArr, i);
        int m14164b = m14164b(bArr);
        m14163c(bArr, m14164b);
        if (C4971k.m8653g()) {
            String str = f12173e;
            C4971k.m8659a(str, "ota packet ---> index : " + i + " total : " + this.f12174a + " crc : " + m14164b + " content : " + ByteUtils.m14367b(bArr));
        }
        return bArr;
    }

    /* renamed from: i */
    public int m14157i() {
        return this.f12177d;
    }

    /* renamed from: j */
    public boolean m14156j() {
        int i = this.f12174a;
        return i > 0 && this.f12175b + 1 < i;
    }

    /* renamed from: k */
    public boolean m14155k() {
        int floor = (int) Math.floor((m14159g() / this.f12174a) * 100.0f);
        if (floor == this.f12177d) {
            return false;
        }
        this.f12177d = floor;
        return true;
    }

    /* renamed from: l */
    public void m14154l(byte[] bArr) {
        m14165a();
        this.f12176c = bArr;
        int length = bArr.length;
        if (length % 16 == 0) {
            this.f12174a = length / 16;
        } else {
            this.f12174a = (int) Math.floor((length / 16) + 1);
        }
    }
}
