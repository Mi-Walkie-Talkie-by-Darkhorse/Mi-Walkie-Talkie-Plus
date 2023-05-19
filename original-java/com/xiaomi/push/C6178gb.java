package com.xiaomi.push;

import android.os.Build;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.C6099dw;
import com.xiaomi.push.service.C6398bm;
import com.xiaomi.push.service.C6404bs;
import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.Adler32;

/* renamed from: com.xiaomi.push.gb */
/* loaded from: classes2.dex */
public class C6178gb {

    /* renamed from: a */
    private int f21696a;

    /* renamed from: a */
    private C6186gf f21697a;

    /* renamed from: a */
    private OutputStream f21698a;

    /* renamed from: a */
    private byte[] f21701a;

    /* renamed from: b */
    private int f21702b;

    /* renamed from: a */
    ByteBuffer f21699a = ByteBuffer.allocate(2048);

    /* renamed from: b */
    private ByteBuffer f21703b = ByteBuffer.allocate(4);

    /* renamed from: a */
    private Adler32 f21700a = new Adler32();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6178gb(OutputStream outputStream, C6186gf c6186gf) {
        this.f21698a = new BufferedOutputStream(outputStream);
        this.f21697a = c6186gf;
        TimeZone timeZone = TimeZone.getDefault();
        this.f21696a = timeZone.getRawOffset() / 3600000;
        this.f21702b = timeZone.useDaylightTime() ? 1 : 0;
    }

    /* renamed from: a */
    public int m2793a(C6173fy c6173fy) {
        int mo2777c = c6173fy.mo2777c();
        if (mo2777c > 32768) {
            AbstractC5876b.m4147a("Blob size=" + mo2777c + " should be less than 32768 Drop blob chid=" + c6173fy.m2843a() + " id=" + c6173fy.m2823e());
            return 0;
        }
        this.f21699a.clear();
        int i = mo2777c + 8 + 4;
        if (i > this.f21699a.capacity() || this.f21699a.capacity() > 4096) {
            this.f21699a = ByteBuffer.allocate(i);
        }
        this.f21699a.putShort((short) -15618);
        this.f21699a.putShort((short) 5);
        this.f21699a.putInt(mo2777c);
        int position = this.f21699a.position();
        this.f21699a = c6173fy.mo2778a(this.f21699a);
        if (!"CONN".equals(c6173fy.m2842a())) {
            if (this.f21701a == null) {
                this.f21701a = this.f21697a.m2776a();
            }
            C6398bm.m1456a(this.f21701a, this.f21699a.array(), true, position, mo2777c);
        }
        this.f21700a.reset();
        this.f21700a.update(this.f21699a.array(), 0, this.f21699a.position());
        this.f21703b.putInt(0, (int) this.f21700a.getValue());
        this.f21698a.write(this.f21699a.array(), 0, this.f21699a.position());
        this.f21698a.write(this.f21703b.array(), 0, 4);
        this.f21698a.flush();
        int position2 = this.f21699a.position() + 4;
        AbstractC5876b.m4139c("[Slim] Wrote {cmd=" + c6173fy.m2842a() + ";chid=" + c6173fy.m2843a() + ";len=" + position2 + "}");
        return position2;
    }

    /* renamed from: a */
    public void m2794a() {
        C6099dw.C6104e c6104e = new C6099dw.C6104e();
        c6104e.m3240a(106);
        String str = Build.MODEL;
        c6104e.m3238a(str);
        c6104e.m3234b(C6469u.m1239a());
        c6104e.m3229c(C6404bs.m1446a());
        c6104e.m3235b(47);
        c6104e.m3225d(this.f21697a.m2749b());
        c6104e.m3221e(this.f21697a.mo2721a());
        c6104e.m3218f(Locale.getDefault().toString());
        int i = Build.VERSION.SDK_INT;
        c6104e.m3230c(i);
        byte[] mo1386a = this.f21697a.m2763a().mo1386a();
        if (mo1386a != null) {
            c6104e.m3239a(C6099dw.C6101b.m3284a(mo1386a));
        }
        C6173fy c6173fy = new C6173fy();
        c6173fy.m2838a(0);
        c6173fy.m2833a("CONN", (String) null);
        c6173fy.m2837a(0L, "xiaomi.com", null);
        c6173fy.m2830a(c6104e.m3144a(), (String) null);
        m2793a(c6173fy);
        AbstractC5876b.m4147a("[slim] open conn: andver=" + i + " sdk=47 tz=" + this.f21696a + Constants.COLON_SEPARATOR + this.f21702b + " Model=" + str + " os=" + Build.VERSION.INCREMENTAL);
    }

    /* renamed from: b */
    public void m2792b() {
        C6173fy c6173fy = new C6173fy();
        c6173fy.m2833a("CLOSE", (String) null);
        m2793a(c6173fy);
        this.f21698a.close();
    }
}
