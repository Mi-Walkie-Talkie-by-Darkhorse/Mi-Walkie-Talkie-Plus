package com.xiaomi.push;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.dw;
import com.xiaomi.push.service.bm;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class fy {

    /* renamed from: a  reason: collision with other field name */
    int f391a;

    /* renamed from: a  reason: collision with other field name */
    private dw.a f392a;

    /* renamed from: a  reason: collision with other field name */
    String f393a;

    /* renamed from: a  reason: collision with other field name */
    private short f394a;

    /* renamed from: b  reason: collision with other field name */
    private byte[] f395b;

    /* renamed from: b  reason: collision with root package name */
    private static String f8970b = hl.a(5) + Constants.ACCEPT_TIME_SEPARATOR_SERVER;

    /* renamed from: a  reason: collision with root package name */
    private static long f8969a = 0;

    /* renamed from: a  reason: collision with other field name */
    private static final byte[] f390a = new byte[0];

    public fy() {
        this.f394a = (short) 2;
        this.f395b = f390a;
        this.f393a = null;
        this.f392a = new dw.a();
        this.f391a = 1;
    }

    fy(dw.a aVar, short s, byte[] bArr) {
        this.f394a = (short) 2;
        this.f395b = f390a;
        this.f393a = null;
        this.f392a = aVar;
        this.f394a = s;
        this.f395b = bArr;
        this.f391a = 2;
    }

    @Deprecated
    public static fy a(ha haVar, String str) {
        int i;
        fy fyVar = new fy();
        try {
            i = Integer.parseInt(haVar.k());
        } catch (Exception e) {
            b.m1a("Blob parse chid err " + e.getMessage());
            i = 1;
        }
        fyVar.a(i);
        fyVar.a(haVar.j());
        fyVar.c(haVar.m());
        fyVar.b(haVar.n());
        fyVar.a("XMLMSG", (String) null);
        try {
            fyVar.a(haVar.m335a().getBytes("utf8"), str);
            if (TextUtils.isEmpty(str)) {
                fyVar.a((short) 3);
            } else {
                fyVar.a((short) 2);
                fyVar.a("SECMSG", (String) null);
            }
        } catch (UnsupportedEncodingException e2) {
            b.m1a("Blob setPayload err： " + e2.getMessage());
        }
        return fyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static fy a(ByteBuffer byteBuffer) {
        try {
            ByteBuffer slice = byteBuffer.slice();
            short s = slice.getShort(0);
            short s2 = slice.getShort(2);
            int i = slice.getInt(4);
            dw.a aVar = new dw.a();
            aVar.a(slice.array(), slice.arrayOffset() + 8, (int) s2);
            byte[] bArr = new byte[i];
            slice.position(s2 + 8);
            slice.get(bArr, 0, i);
            return new fy(aVar, s, bArr);
        } catch (Exception e) {
            b.m1a("read Blob err :" + e.getMessage());
            throw new IOException("Malformed Input");
        }
    }

    public static synchronized String d() {
        String sb;
        synchronized (fy.class) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f8970b);
            long j = f8969a;
            f8969a = 1 + j;
            sb2.append(Long.toString(j));
            sb = sb2.toString();
        }
        return sb;
    }

    public int a() {
        return this.f392a.c();
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m291a() {
        return this.f392a.m178c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a  reason: collision with other method in class */
    public ByteBuffer mo292a(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            byteBuffer = ByteBuffer.allocate(c());
        }
        byteBuffer.putShort(this.f394a);
        byteBuffer.putShort((short) this.f392a.mo223a());
        byteBuffer.putInt(this.f395b.length);
        int position = byteBuffer.position();
        this.f392a.m227a(byteBuffer.array(), byteBuffer.arrayOffset() + position, this.f392a.mo223a());
        byteBuffer.position(position + this.f392a.mo223a());
        byteBuffer.put(this.f395b);
        return byteBuffer;
    }

    /* renamed from: a  reason: collision with other method in class */
    public short m293a() {
        return this.f394a;
    }

    public void a(int i) {
        this.f392a.a(i);
    }

    public void a(long j, String str, String str2) {
        if (j != 0) {
            this.f392a.a(j);
        }
        if (!TextUtils.isEmpty(str)) {
            this.f392a.a(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            this.f392a.b(str2);
        }
    }

    public void a(String str) {
        this.f392a.e(str);
    }

    public void a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            this.f392a.c(str);
            this.f392a.mo223a();
            if (!TextUtils.isEmpty(str2)) {
                this.f392a.d(str2);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("command should not be empty");
    }

    public void a(short s) {
        this.f394a = s;
    }

    public void a(byte[] bArr, String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f392a.c(1);
            this.f395b = bm.a(bm.a(str, e()), bArr);
            return;
        }
        this.f392a.c(0);
        this.f395b = bArr;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m294a() {
        return this.f392a.j();
    }

    /* renamed from: a  reason: collision with other method in class */
    public byte[] m295a() {
        return fz.a(this, this.f395b);
    }

    /* renamed from: a  reason: collision with other method in class */
    public byte[] m296a(String str) {
        if (this.f392a.e() == 1) {
            return fz.a(this, bm.a(bm.a(str, e()), this.f395b));
        }
        if (this.f392a.e() == 0) {
            return fz.a(this, this.f395b);
        }
        b.m1a("unknow cipher = " + this.f392a.e());
        return fz.a(this, this.f395b);
    }

    public int b() {
        return this.f392a.f();
    }

    /* renamed from: b  reason: collision with other method in class */
    public String m297b() {
        return this.f392a.m180d();
    }

    public void b(String str) {
        this.f393a = str;
    }

    public int c() {
        return this.f392a.mo225b() + 8 + this.f395b.length;
    }

    /* renamed from: c  reason: collision with other method in class */
    public String m298c() {
        return this.f392a.m184f();
    }

    public void c(String str) {
        if (!TextUtils.isEmpty(str)) {
            int indexOf = str.indexOf("@");
            try {
                long parseLong = Long.parseLong(str.substring(0, indexOf));
                int indexOf2 = str.indexOf("/", indexOf);
                String substring = str.substring(indexOf + 1, indexOf2);
                String substring2 = str.substring(indexOf2 + 1);
                this.f392a.a(parseLong);
                this.f392a.a(substring);
                this.f392a.b(substring2);
            } catch (Exception e) {
                b.m1a("Blob parse user err " + e.getMessage());
            }
        }
    }

    public String e() {
        String e = this.f392a.m182e();
        if ("ID_NOT_AVAILABLE".equals(e)) {
            return null;
        }
        if (this.f392a.g()) {
            return e;
        }
        String d = d();
        this.f392a.e(d);
        return d;
    }

    public String f() {
        return this.f393a;
    }

    public String g() {
        if (!this.f392a.mo225b()) {
            return null;
        }
        return Long.toString(this.f392a.mo223a()) + "@" + this.f392a.mo223a() + "/" + this.f392a.mo225b();
    }

    public String toString() {
        return "Blob [chid=" + a() + "; Id=" + e() + "; cmd=" + m291a() + "; type=" + ((int) m293a()) + "; from=" + g() + " ]";
    }
}
