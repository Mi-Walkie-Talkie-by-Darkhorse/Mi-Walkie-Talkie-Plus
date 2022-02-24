package com.xiaomi.push;

import com.xiaomi.channel.commonutils.logger.b;
import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.zip.Adler32;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ga {

    /* renamed from: a  reason: collision with other field name */
    private gf f398a;

    /* renamed from: a  reason: collision with other field name */
    private InputStream f399a;

    /* renamed from: a  reason: collision with other field name */
    private volatile boolean f402a;

    /* renamed from: a  reason: collision with other field name */
    private byte[] f403a;

    /* renamed from: a  reason: collision with other field name */
    private ByteBuffer f400a = ByteBuffer.allocate(2048);

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer f8976b = ByteBuffer.allocate(4);

    /* renamed from: a  reason: collision with other field name */
    private Adler32 f401a = new Adler32();

    /* renamed from: a  reason: collision with root package name */
    private gd f8975a = new gd();

    /* JADX INFO: Access modifiers changed from: package-private */
    public ga(InputStream inputStream, gf gfVar) {
        this.f399a = new BufferedInputStream(inputStream);
        this.f398a = gfVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.nio.ByteBuffer a() {
        /*
            Method dump skipped, instructions count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.ga.a():java.nio.ByteBuffer");
    }

    private void a(ByteBuffer byteBuffer, int i) {
        int position = byteBuffer.position();
        do {
            int read = this.f399a.read(byteBuffer.array(), position, i);
            if (read != -1) {
                i -= read;
                position += read;
            } else {
                throw new EOFException();
            }
        } while (i > 0);
        byteBuffer.position(position);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x014c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0071 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void c() {
        /*
            Method dump skipped, instructions count: 353
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.ga.c():void");
    }

    /* renamed from: a  reason: collision with other method in class */
    fy m307a() {
        int i;
        IOException e;
        ByteBuffer a2;
        try {
            a2 = a();
            i = a2.position();
        } catch (IOException e2) {
            e = e2;
            i = 0;
        }
        try {
            a2.flip();
            a2.position(8);
            fy geVar = i == 8 ? new ge() : fy.a(a2.slice());
            b.c("[Slim] Read {cmd=" + geVar.m291a() + ";chid=" + geVar.a() + ";len=" + i + "}");
            return geVar;
        } catch (IOException e3) {
            e = e3;
            if (i == 0) {
                i = this.f400a.position();
            }
            StringBuilder sb = new StringBuilder();
            sb.append("[Slim] read Blob [");
            byte[] array = this.f400a.array();
            if (i > 128) {
                i = 128;
            }
            sb.append(ah.a(array, 0, i));
            sb.append("] Err:");
            sb.append(e.getMessage());
            b.m1a(sb.toString());
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a  reason: collision with other method in class */
    public void m308a() {
        try {
            c();
        } catch (IOException e) {
            if (!this.f402a) {
                throw e;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f402a = true;
    }
}
