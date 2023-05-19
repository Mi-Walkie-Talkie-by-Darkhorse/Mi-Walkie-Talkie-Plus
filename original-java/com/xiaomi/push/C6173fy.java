package com.xiaomi.push;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.C6099dw;
import com.xiaomi.push.service.C6398bm;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* renamed from: com.xiaomi.push.fy */
/* loaded from: classes2.dex */
public class C6173fy {

    /* renamed from: a */
    int f21677a;

    /* renamed from: a */
    private C6099dw.C6100a f21678a;

    /* renamed from: a */
    String f21679a;

    /* renamed from: a */
    private short f21680a;

    /* renamed from: b */
    private byte[] f21681b;

    /* renamed from: b */
    private static String f21676b = C6225hl.m2612a(5) + Constants.ACCEPT_TIME_SEPARATOR_SERVER;

    /* renamed from: a */
    private static long f21674a = 0;

    /* renamed from: a */
    private static final byte[] f21675a = new byte[0];

    public C6173fy() {
        this.f21680a = (short) 2;
        this.f21681b = f21675a;
        this.f21679a = null;
        this.f21678a = new C6099dw.C6100a();
        this.f21677a = 1;
    }

    C6173fy(C6099dw.C6100a c6100a, short s, byte[] bArr) {
        this.f21680a = (short) 2;
        this.f21681b = f21675a;
        this.f21679a = null;
        this.f21678a = c6100a;
        this.f21680a = s;
        this.f21681b = bArr;
        this.f21677a = 2;
    }

    @Deprecated
    /* renamed from: a */
    public static C6173fy m2836a(AbstractC6211ha abstractC6211ha, String str) {
        int i;
        C6173fy c6173fy = new C6173fy();
        try {
            i = Integer.parseInt(abstractC6211ha.m2654k());
        } catch (Exception e) {
            AbstractC5876b.m4147a("Blob parse chid err " + e.getMessage());
            i = 1;
        }
        c6173fy.m2838a(i);
        c6173fy.m2835a(abstractC6211ha.m2655j());
        c6173fy.m2825c(abstractC6211ha.m2650m());
        c6173fy.m2827b(abstractC6211ha.m2648n());
        c6173fy.m2833a("XMLMSG", (String) null);
        try {
            c6173fy.m2830a(abstractC6211ha.mo2640a().getBytes("utf8"), str);
            if (TextUtils.isEmpty(str)) {
                c6173fy.m2831a((short) 3);
            } else {
                c6173fy.m2831a((short) 2);
                c6173fy.m2833a("SECMSG", (String) null);
            }
        } catch (UnsupportedEncodingException e2) {
            AbstractC5876b.m4147a("Blob setPayload err： " + e2.getMessage());
        }
        return c6173fy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C6173fy m2832a(ByteBuffer byteBuffer) {
        try {
            ByteBuffer slice = byteBuffer.slice();
            short s = slice.getShort(0);
            short s2 = slice.getShort(2);
            int i = slice.getInt(4);
            C6099dw.C6100a c6100a = new C6099dw.C6100a();
            c6100a.m3139a(slice.array(), slice.arrayOffset() + 8, (int) s2);
            byte[] bArr = new byte[i];
            slice.position(s2 + 8);
            slice.get(bArr, 0, i);
            return new C6173fy(c6100a, s, bArr);
        } catch (Exception e) {
            AbstractC5876b.m4147a("read Blob err :" + e.getMessage());
            throw new IOException("Malformed Input");
        }
    }

    /* renamed from: d */
    public static synchronized String m2824d() {
        String sb;
        synchronized (C6173fy.class) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f21676b);
            long j = f21674a;
            f21674a = 1 + j;
            sb2.append(Long.toString(j));
            sb = sb2.toString();
        }
        return sb;
    }

    /* renamed from: a */
    public int m2843a() {
        return this.f21678a.m3310c();
    }

    /* renamed from: a */
    public String m2842a() {
        return this.f21678a.m3309c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public ByteBuffer mo2778a(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            byteBuffer = ByteBuffer.allocate(mo2777c());
        }
        byteBuffer.putShort(this.f21680a);
        byteBuffer.putShort((short) this.f21678a.mo3145a());
        byteBuffer.putInt(this.f21681b.length);
        int position = byteBuffer.position();
        this.f21678a.m3138a(byteBuffer.array(), byteBuffer.arrayOffset() + position, this.f21678a.mo3145a());
        byteBuffer.position(position + this.f21678a.mo3145a());
        byteBuffer.put(this.f21681b);
        return byteBuffer;
    }

    /* renamed from: a */
    public short m2841a() {
        return this.f21680a;
    }

    /* renamed from: a */
    public void m2838a(int i) {
        this.f21678a.m3317a(i);
    }

    /* renamed from: a */
    public void m2837a(long j, String str, String str2) {
        if (j != 0) {
            this.f21678a.m3316a(j);
        }
        if (!TextUtils.isEmpty(str)) {
            this.f21678a.m3315a(str);
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.f21678a.m3311b(str2);
    }

    /* renamed from: a */
    public void m2835a(String str) {
        this.f21678a.m3297e(str);
    }

    /* renamed from: a */
    public void m2833a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("command should not be empty");
        }
        this.f21678a.m3306c(str);
        this.f21678a.m3320a();
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.f21678a.m3301d(str2);
    }

    /* renamed from: a */
    public void m2831a(short s) {
        this.f21680a = s;
    }

    /* renamed from: a */
    public void m2830a(byte[] bArr, String str) {
        if (TextUtils.isEmpty(str)) {
            this.f21678a.m3307c(0);
            this.f21681b = bArr;
            return;
        }
        this.f21678a.m3307c(1);
        this.f21681b = C6398bm.m1457a(C6398bm.m1461a(str, m2823e()), bArr);
    }

    /* renamed from: a */
    public boolean m2840a() {
        return this.f21678a.m3289j();
    }

    /* renamed from: a */
    public byte[] m2839a() {
        return C6174fz.m2820a(this, this.f21681b);
    }

    /* renamed from: a */
    public byte[] m2834a(String str) {
        if (this.f21678a.m3300e() == 1) {
            return C6174fz.m2820a(this, C6398bm.m1457a(C6398bm.m1461a(str, m2823e()), this.f21681b));
        }
        if (this.f21678a.m3300e() == 0) {
            return C6174fz.m2820a(this, this.f21681b);
        }
        AbstractC5876b.m4147a("unknow cipher = " + this.f21678a.m3300e());
        return C6174fz.m2820a(this, this.f21681b);
    }

    /* renamed from: b */
    public int m2829b() {
        return this.f21678a.m3296f();
    }

    /* renamed from: b */
    public String m2828b() {
        return this.f21678a.m3304d();
    }

    /* renamed from: b */
    public void m2827b(String str) {
        this.f21679a = str;
    }

    /* renamed from: c */
    public int mo2777c() {
        return this.f21678a.mo3137b() + 8 + this.f21681b.length;
    }

    /* renamed from: c */
    public String m2826c() {
        return this.f21678a.m3295f();
    }

    /* renamed from: c */
    public void m2825c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int indexOf = str.indexOf("@");
        try {
            long parseLong = Long.parseLong(str.substring(0, indexOf));
            int indexOf2 = str.indexOf("/", indexOf);
            String substring = str.substring(indexOf + 1, indexOf2);
            String substring2 = str.substring(indexOf2 + 1);
            this.f21678a.m3316a(parseLong);
            this.f21678a.m3315a(substring);
            this.f21678a.m3311b(substring2);
        } catch (Exception e) {
            AbstractC5876b.m4147a("Blob parse user err " + e.getMessage());
        }
    }

    /* renamed from: e */
    public String m2823e() {
        String m3299e = this.f21678a.m3299e();
        if ("ID_NOT_AVAILABLE".equals(m3299e)) {
            return null;
        }
        if (this.f21678a.m3292g()) {
            return m3299e;
        }
        String m2824d = m2824d();
        this.f21678a.m3297e(m2824d);
        return m2824d;
    }

    /* renamed from: f */
    public String m2822f() {
        return this.f21679a;
    }

    /* renamed from: g */
    public String m2821g() {
        if (this.f21678a.m3313b()) {
            return Long.toString(this.f21678a.m3321a()) + "@" + this.f21678a.m3319a() + "/" + this.f21678a.m3314b();
        }
        return null;
    }

    public String toString() {
        return "Blob [chid=" + m2843a() + "; Id=" + m2823e() + "; cmd=" + m2842a() + "; type=" + ((int) m2841a()) + "; from=" + m2821g() + " ]";
    }
}
