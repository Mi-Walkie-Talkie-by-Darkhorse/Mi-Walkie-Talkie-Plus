package com.xiaomi.slim;

import android.text.TextUtils;
import com.xiaomi.push.protobuf.b.a;
import com.xiaomi.push.service.as;
import com.xiaomi.smack.util.d;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class b {
    private static String b = (d.a(5) + "-");
    private static long c = 0;
    private static final byte[] f = new byte[0];
    String a;
    private a d;
    private short e;
    private byte[] g;

    public b() {
        this.e = 2;
        this.g = f;
        this.a = null;
        this.d = new a();
    }

    b(a aVar, short s, byte[] bArr) {
        this.e = 2;
        this.g = f;
        this.a = null;
        this.d = aVar;
        this.e = s;
        this.g = bArr;
    }

    @Deprecated
    public static b a(com.xiaomi.smack.packet.d dVar, String str) {
        b bVar = new b();
        int i = 1;
        try {
            i = Integer.parseInt(dVar.l());
        } catch (Exception e2) {
            com.xiaomi.channel.commonutils.logger.b.a("Blob parse chid err " + e2.getMessage());
        }
        bVar.a(i);
        bVar.a(dVar.k());
        bVar.c(dVar.n());
        bVar.b(dVar.o());
        bVar.a("XMLMSG", (String) null);
        try {
            bVar.a(dVar.c().getBytes("utf8"), str);
            if (TextUtils.isEmpty(str)) {
                bVar.a(3);
            } else {
                bVar.a(2);
                bVar.a("SECMSG", (String) null);
            }
        } catch (UnsupportedEncodingException e3) {
            com.xiaomi.channel.commonutils.logger.b.a("Blob setPayload err： " + e3.getMessage());
        }
        return bVar;
    }

    static b b(ByteBuffer byteBuffer) {
        try {
            if (byteBuffer.getShort(0) == -15618 && byteBuffer.getShort(2) == 4) {
                short s = byteBuffer.getShort(6);
                short s2 = byteBuffer.getShort(8);
                int i = byteBuffer.getInt(10);
                a aVar = new a();
                aVar.b(byteBuffer.array(), 14, s2);
                byte[] bArr = new byte[i];
                byteBuffer.position(s2 + 14);
                byteBuffer.get(bArr, 0, i);
                return new b(aVar, s, bArr);
            }
            throw new IOException("Malformed Input");
        } catch (Exception e2) {
            com.xiaomi.channel.commonutils.logger.b.a("read Blob err :" + e2.getMessage());
            throw new IOException("Malformed Input");
        }
    }

    static int c(ByteBuffer byteBuffer) {
        return byteBuffer.getShort(8) + byteBuffer.getInt(10);
    }

    public static synchronized String g() {
        String sb;
        synchronized (b.class) {
            StringBuilder append = new StringBuilder().append(b);
            long j = c;
            c = 1 + j;
            sb = append.append(Long.toString(j)).toString();
        }
        return sb;
    }

    static int n() {
        return 14;
    }

    public String a() {
        return this.d.l();
    }

    /* access modifiers changed from: 0000 */
    public ByteBuffer a(ByteBuffer byteBuffer) {
        int l = l();
        if (byteBuffer == null || byteBuffer.remaining() < l) {
            if (byteBuffer != null) {
                l += byteBuffer.capacity();
            }
            ByteBuffer allocate = ByteBuffer.allocate(l);
            if (byteBuffer != null) {
                allocate.put(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.position());
            }
            byteBuffer = allocate;
        }
        ByteBuffer slice = byteBuffer.slice();
        slice.putShort(-15618);
        slice.putShort(4);
        slice.putShort(1);
        slice.putShort(this.e);
        slice.putShort((short) this.d.a());
        slice.putInt(this.g.length);
        int position = slice.position();
        this.d.a(slice.array(), slice.arrayOffset() + position, this.d.a());
        slice.position(position + this.d.a());
        slice.put(this.g);
        byteBuffer.position(slice.position() + byteBuffer.position());
        return byteBuffer;
    }

    public void a(int i) {
        this.d.a(i);
    }

    public void a(long j, String str, String str2) {
        if (j != 0) {
            this.d.a(j);
        }
        if (!TextUtils.isEmpty(str)) {
            this.d.a(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            this.d.b(str2);
        }
    }

    public void a(String str) {
        this.d.e(str);
    }

    public void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("command should not be empty");
        }
        this.d.c(str);
        this.d.p();
        if (!TextUtils.isEmpty(str2)) {
            this.d.d(str2);
        }
    }

    public void a(short s) {
        this.e = s;
    }

    public void a(byte[] bArr, String str) {
        if (!TextUtils.isEmpty(str)) {
            this.d.c(1);
            this.g = as.a(as.a(str, h()), bArr);
            return;
        }
        this.d.c(0);
        this.g = bArr;
    }

    public String b() {
        return this.d.n();
    }

    public void b(String str) {
        this.a = str;
    }

    public int c() {
        return this.d.d();
    }

    public void c(String str) {
        if (!TextUtils.isEmpty(str)) {
            int indexOf = str.indexOf("@");
            try {
                long parseLong = Long.parseLong(str.substring(0, indexOf));
                int indexOf2 = str.indexOf("/", indexOf);
                String substring = str.substring(indexOf + 1, indexOf2);
                String substring2 = str.substring(indexOf2 + 1);
                this.d.a(parseLong);
                this.d.a(substring);
                this.d.b(substring2);
            } catch (Exception e2) {
                com.xiaomi.channel.commonutils.logger.b.a("Blob parse user err " + e2.getMessage());
            }
        }
    }

    public boolean d() {
        return this.d.x();
    }

    public byte[] d(String str) {
        if (this.d.u() == 1) {
            return as.a(as.a(str, h()), this.g);
        }
        if (this.d.u() == 0) {
            return this.g;
        }
        com.xiaomi.channel.commonutils.logger.b.a("unknow cipher = " + this.d.u());
        return this.g;
    }

    public int e() {
        return this.d.w();
    }

    public String f() {
        return this.d.y();
    }

    public String h() {
        String q = this.d.q();
        if ("ID_NOT_AVAILABLE".equals(q)) {
            return null;
        }
        if (this.d.r()) {
            return q;
        }
        String g2 = g();
        this.d.e(g2);
        return g2;
    }

    public String i() {
        return this.a;
    }

    public String j() {
        if (this.d.g()) {
            return Long.toString(this.d.f()) + "@" + this.d.h() + "/" + this.d.j();
        }
        return null;
    }

    public byte[] k() {
        return this.g;
    }

    public int l() {
        return n() + this.d.b() + this.g.length;
    }

    public short m() {
        return this.e;
    }

    public String toString() {
        return "Blob [chid=" + c() + "; Id=" + h() + "; cmd=" + a() + "; type=" + m() + "; from=" + j() + " ]";
    }
}
