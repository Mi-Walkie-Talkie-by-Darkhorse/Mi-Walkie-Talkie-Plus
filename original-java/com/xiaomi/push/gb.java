package com.xiaomi.push;

import android.os.Build;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.dw;
import com.xiaomi.push.service.bm;
import com.xiaomi.push.service.bs;
import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.Adler32;

/* loaded from: classes2.dex */
public class gb {

    /* renamed from: a  reason: collision with root package name */
    private int f8977a;

    /* renamed from: a  reason: collision with other field name */
    private gf f404a;

    /* renamed from: a  reason: collision with other field name */
    private OutputStream f405a;

    /* renamed from: a  reason: collision with other field name */
    private byte[] f408a;

    /* renamed from: b  reason: collision with root package name */
    private int f8978b;

    /* renamed from: a  reason: collision with other field name */
    ByteBuffer f406a = ByteBuffer.allocate(2048);

    /* renamed from: b  reason: collision with other field name */
    private ByteBuffer f409b = ByteBuffer.allocate(4);

    /* renamed from: a  reason: collision with other field name */
    private Adler32 f407a = new Adler32();

    /* JADX INFO: Access modifiers changed from: package-private */
    public gb(OutputStream outputStream, gf gfVar) {
        this.f405a = new BufferedOutputStream(outputStream);
        this.f404a = gfVar;
        TimeZone timeZone = TimeZone.getDefault();
        this.f8977a = timeZone.getRawOffset() / 3600000;
        this.f8978b = timeZone.useDaylightTime() ? 1 : 0;
    }

    public int a(fy fyVar) {
        int c2 = fyVar.c();
        if (c2 > 32768) {
            b.m1a("Blob size=" + c2 + " should be less than 32768 Drop blob chid=" + fyVar.a() + " id=" + fyVar.e());
            return 0;
        }
        this.f406a.clear();
        int i = c2 + 8 + 4;
        if (i > this.f406a.capacity() || this.f406a.capacity() > 4096) {
            this.f406a = ByteBuffer.allocate(i);
        }
        this.f406a.putShort((short) -15618);
        this.f406a.putShort((short) 5);
        this.f406a.putInt(c2);
        int position = this.f406a.position();
        this.f406a = fyVar.mo292a(this.f406a);
        if (!"CONN".equals(fyVar.m291a())) {
            if (this.f408a == null) {
                this.f408a = this.f404a.mo326a();
            }
            bm.a(this.f408a, this.f406a.array(), true, position, c2);
        }
        this.f407a.reset();
        this.f407a.update(this.f406a.array(), 0, this.f406a.position());
        this.f409b.putInt(0, (int) this.f407a.getValue());
        this.f405a.write(this.f406a.array(), 0, this.f406a.position());
        this.f405a.write(this.f409b.array(), 0, 4);
        this.f405a.flush();
        int position2 = this.f406a.position() + 4;
        b.c("[Slim] Wrote {cmd=" + fyVar.m291a() + ";chid=" + fyVar.a() + ";len=" + position2 + "}");
        return position2;
    }

    public void a() {
        dw.e eVar = new dw.e();
        eVar.a(106);
        eVar.a(Build.MODEL);
        eVar.b(u.m659a());
        eVar.c(bs.m625a());
        eVar.b(47);
        eVar.d(this.f404a.m318b());
        eVar.e(this.f404a.mo326a());
        eVar.f(Locale.getDefault().toString());
        eVar.c(Build.VERSION.SDK_INT);
        byte[] a2 = this.f404a.m314a().m323a();
        if (a2 != null) {
            eVar.a(dw.b.a(a2));
        }
        fy fyVar = new fy();
        fyVar.a(0);
        fyVar.a("CONN", (String) null);
        fyVar.a(0L, "xiaomi.com", null);
        fyVar.a(eVar.a(), (String) null);
        a(fyVar);
        b.m1a("[slim] open conn: andver=" + Build.VERSION.SDK_INT + " sdk=47 tz=" + this.f8977a + Constants.COLON_SEPARATOR + this.f8978b + " Model=" + Build.MODEL + " os=" + Build.VERSION.INCREMENTAL);
    }

    public void b() {
        fy fyVar = new fy();
        fyVar.a("CLOSE", (String) null);
        a(fyVar);
        this.f405a.close();
    }
}
