package com.xiaomi.slim;

import android.os.Build;
import android.os.Build.VERSION;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.protobuf.b.C0070b;
import com.xiaomi.push.protobuf.b.e;
import com.xiaomi.push.service.av;
import com.xiaomi.smack.a;
import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.Adler32;

public class d {
    ByteBuffer a = ByteBuffer.allocate(2048);
    private ByteBuffer b = ByteBuffer.allocate(4);
    private Adler32 c = new Adler32();
    private a d;
    private OutputStream e;
    private int f;
    private int g;

    d(OutputStream outputStream, a aVar) {
        this.e = new BufferedOutputStream(outputStream);
        this.d = aVar;
        TimeZone timeZone = TimeZone.getDefault();
        this.f = timeZone.getRawOffset() / 3600000;
        this.g = timeZone.useDaylightTime() ? 1 : 0;
    }

    public int a(b bVar) {
        int l = bVar.l();
        if (l > 32768) {
            b.a("Blob size=" + l + " should be less than " + 32768 + " Drop blob chid=" + bVar.c() + " id=" + bVar.h());
            return 0;
        }
        if (this.a.capacity() > 4096) {
            this.a = ByteBuffer.allocate(2048);
        }
        this.a.clear();
        this.a = bVar.a(this.a);
        this.c.reset();
        this.c.update(this.a.array(), 0, this.a.position());
        this.b.putInt(0, (int) this.c.getValue());
        this.e.write(this.a.array(), 0, this.a.position());
        this.e.write(this.b.array(), 0, 4);
        this.e.flush();
        int position = this.a.position() + 4;
        b.c("[Slim] Wrote {cmd=" + bVar.a() + ";chid=" + bVar.c() + ";len=" + position + "}");
        return position;
    }

    public void a() {
        e eVar = new e();
        eVar.a(106);
        eVar.a(Build.MODEL);
        eVar.b(VERSION.INCREMENTAL);
        eVar.c(av.e());
        eVar.b(27);
        eVar.d(this.d.e());
        eVar.e(this.d.d());
        eVar.f(Locale.getDefault().toString());
        eVar.c(VERSION.SDK_INT);
        byte[] a2 = this.d.c().a();
        if (a2 != null) {
            eVar.a(C0070b.b(a2));
        }
        b bVar = new b();
        bVar.a(0);
        bVar.a("CONN", (String) null);
        bVar.a(0, "xiaomi.com", null);
        bVar.a(eVar.c(), (String) null);
        a(bVar);
        b.a("[slim] open conn: andver=" + VERSION.SDK_INT + " sdk=" + 27 + " hash=" + av.e() + " tz=" + this.f + ":" + this.g + " Model=" + Build.MODEL + " os=" + VERSION.INCREMENTAL);
    }

    public void b() {
        b bVar = new b();
        bVar.a("CLOSE", (String) null);
        a(bVar);
        this.e.close();
    }
}
