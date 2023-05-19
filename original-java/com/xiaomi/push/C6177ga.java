package com.xiaomi.push;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6099dw;
import com.xiaomi.push.service.C6381bd;
import com.xiaomi.push.service.C6398bm;
import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.zip.Adler32;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.ga */
/* loaded from: classes2.dex */
public class C6177ga {

    /* renamed from: a */
    private C6186gf f21689a;

    /* renamed from: a */
    private InputStream f21690a;

    /* renamed from: a */
    private volatile boolean f21693a;

    /* renamed from: a */
    private byte[] f21694a;

    /* renamed from: a */
    private ByteBuffer f21691a = ByteBuffer.allocate(2048);

    /* renamed from: b */
    private ByteBuffer f21695b = ByteBuffer.allocate(4);

    /* renamed from: a */
    private Adler32 f21692a = new Adler32();

    /* renamed from: a */
    private C6184gd f21688a = new C6184gd();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6177ga(InputStream inputStream, C6186gf c6186gf) {
        this.f21690a = new BufferedInputStream(inputStream);
        this.f21689a = c6186gf;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cf  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private ByteBuffer m2799a() {
        ByteBuffer allocate;
        int i;
        this.f21691a.clear();
        m2797a(this.f21691a, 8);
        short s = this.f21691a.getShort(0);
        short s2 = this.f21691a.getShort(2);
        if (s != -15618 || s2 != 5) {
            throw new IOException("Malformed Input");
        }
        int i2 = this.f21691a.getInt(4);
        int position = this.f21691a.position();
        if (i2 > 32768) {
            throw new IOException("Blob size too large");
        }
        if (i2 + 4 <= this.f21691a.remaining()) {
            if (this.f21691a.capacity() > 4096 && i2 < 2048) {
                allocate = ByteBuffer.allocate(2048);
                allocate.put(this.f21691a.array(), 0, this.f21691a.arrayOffset() + this.f21691a.position());
            }
            m2797a(this.f21691a, i2);
            this.f21695b.clear();
            m2797a(this.f21695b, 4);
            this.f21695b.position(0);
            i = this.f21695b.getInt();
            this.f21692a.reset();
            this.f21692a.update(this.f21691a.array(), 0, this.f21691a.position());
            if (i != ((int) this.f21692a.getValue())) {
                byte[] bArr = this.f21694a;
                if (bArr != null) {
                    C6398bm.m1456a(bArr, this.f21691a.array(), true, position, i2);
                }
                return this.f21691a;
            }
            AbstractC5876b.m4147a("CRC = " + ((int) this.f21692a.getValue()) + " and " + i);
            throw new IOException("Corrupted Blob bad CRC");
        }
        allocate = ByteBuffer.allocate(i2 + 2048);
        allocate.put(this.f21691a.array(), 0, this.f21691a.arrayOffset() + this.f21691a.position());
        this.f21691a = allocate;
        m2797a(this.f21691a, i2);
        this.f21695b.clear();
        m2797a(this.f21695b, 4);
        this.f21695b.position(0);
        i = this.f21695b.getInt();
        this.f21692a.reset();
        this.f21692a.update(this.f21691a.array(), 0, this.f21691a.position());
        if (i != ((int) this.f21692a.getValue())) {
        }
    }

    /* renamed from: a */
    private void m2797a(ByteBuffer byteBuffer, int i) {
        int position = byteBuffer.position();
        do {
            int read = this.f21690a.read(byteBuffer.array(), position, i);
            if (read == -1) {
                throw new EOFException();
            }
            i -= read;
            position += read;
        } while (i > 0);
        byteBuffer.position(position);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x014c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0071 A[SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m2795c() {
        StringBuilder sb;
        String sb2;
        boolean z = false;
        this.f21693a = false;
        C6173fy m2800a = m2800a();
        if ("CONN".equals(m2800a.m2842a())) {
            C6099dw.C6105f m3208a = C6099dw.C6105f.m3208a(m2800a.m2839a());
            if (m3208a.m3211a()) {
                this.f21689a.m2752a(m3208a.m3212a());
                z = true;
            }
            if (m3208a.m3204c()) {
                C6099dw.C6101b m3213a = m3208a.m3213a();
                C6173fy c6173fy = new C6173fy();
                c6173fy.m2833a("SYNC", "CONF");
                c6173fy.m2830a(m3213a.m3144a(), (String) null);
                this.f21689a.m2775a(c6173fy);
            }
            AbstractC5876b.m4147a("[Slim] CONN: host = " + m3208a.m3207b());
        }
        if (!z) {
            AbstractC5876b.m4147a("[Slim] Invalid CONN");
            throw new IOException("Invalid Connection");
        }
        this.f21694a = this.f21689a.m2776a();
        while (!this.f21693a) {
            C6173fy m2800a2 = m2800a();
            this.f21689a.m2742d();
            short m2841a = m2800a2.m2841a();
            if (m2841a != 1) {
                if (m2841a != 2) {
                    if (m2841a != 3) {
                        sb2 = "[Slim] unknow blob type " + ((int) m2800a2.m2841a());
                        AbstractC5876b.m4147a(sb2);
                    } else {
                        try {
                            this.f21689a.m2771b(this.f21688a.m2779a(m2800a2.m2839a(), this.f21689a));
                        } catch (Exception e) {
                            e = e;
                            sb = new StringBuilder();
                            sb.append("[Slim] Parse packet from Blob chid=");
                            sb.append(m2800a2.m2843a());
                            sb.append("; Id=");
                            sb.append(m2800a2.m2823e());
                            sb.append(" failure:");
                            sb.append(e.getMessage());
                            sb2 = sb.toString();
                            AbstractC5876b.m4147a(sb2);
                            if ("PING".equals(m2800a2.m2842a())) {
                            }
                        }
                    }
                } else if ("SECMSG".equals(m2800a2.m2842a()) && ((m2800a2.m2843a() == 2 || m2800a2.m2843a() == 3) && TextUtils.isEmpty(m2800a2.m2828b()))) {
                    try {
                        this.f21689a.m2771b(this.f21688a.m2779a(m2800a2.m2834a(C6381bd.m1509a().m1498a(Integer.valueOf(m2800a2.m2843a()).toString(), m2800a2.m2821g()).f23043h), this.f21689a));
                    } catch (Exception e2) {
                        e = e2;
                        sb = new StringBuilder();
                        sb.append("[Slim] Parse packet from Blob chid=");
                        sb.append(m2800a2.m2843a());
                        sb.append("; Id=");
                        sb.append(m2800a2.m2823e());
                        sb.append(" failure:");
                        sb.append(e.getMessage());
                        sb2 = sb.toString();
                        AbstractC5876b.m4147a(sb2);
                        if ("PING".equals(m2800a2.m2842a())) {
                        }
                    }
                }
                if ("PING".equals(m2800a2.m2842a())) {
                    this.f21689a.m2772b();
                }
            }
            this.f21689a.m2775a(m2800a2);
            if ("PING".equals(m2800a2.m2842a())) {
            }
        }
    }

    /* renamed from: a */
    C6173fy m2800a() {
        int i;
        try {
            ByteBuffer m2799a = m2799a();
            i = m2799a.position();
            try {
                m2799a.flip();
                m2799a.position(8);
                C6173fy c6185ge = i == 8 ? new C6185ge() : C6173fy.m2832a(m2799a.slice());
                AbstractC5876b.m4139c("[Slim] Read {cmd=" + c6185ge.m2842a() + ";chid=" + c6185ge.m2843a() + ";len=" + i + "}");
                return c6185ge;
            } catch (IOException e) {
                e = e;
                if (i == 0) {
                    i = this.f21691a.position();
                }
                StringBuilder sb = new StringBuilder();
                sb.append("[Slim] read Blob [");
                byte[] array = this.f21691a.array();
                if (i > 128) {
                    i = 128;
                }
                sb.append(C5975ah.m3789a(array, 0, i));
                sb.append("] Err:");
                sb.append(e.getMessage());
                AbstractC5876b.m4147a(sb.toString());
                throw e;
            }
        } catch (IOException e2) {
            e = e2;
            i = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m2798a() {
        try {
            m2795c();
        } catch (IOException e) {
            if (!this.f21693a) {
                throw e;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m2796b() {
        this.f21693a = true;
    }
}
