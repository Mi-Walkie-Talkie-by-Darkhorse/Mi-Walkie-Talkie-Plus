package com.xiaomi.slim;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.channel.commonutils.misc.d;
import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.zip.Adler32;

class c {
    private ByteBuffer a = ByteBuffer.allocate(2048);
    private ByteBuffer b = ByteBuffer.allocate(4);
    private Adler32 c = new Adler32();
    private e d;
    private InputStream e;
    private f f;
    private volatile boolean g;

    c(InputStream inputStream, f fVar) {
        this.e = new BufferedInputStream(inputStream);
        this.f = fVar;
        this.d = new e();
    }

    private void a(ByteBuffer byteBuffer, int i) {
        int position = byteBuffer.position();
        do {
            int read = this.e.read(byteBuffer.array(), position, i);
            if (read != -1) {
                i -= read;
                position += read;
            } else {
                throw new EOFException();
            }
        } while (i > 0);
        byteBuffer.position(position);
    }

    /* JADX WARNING: CFG modification limit reached, blocks count: 136 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void d() {
        /*
            r6 = this;
            r0 = 0
            r6.g = r0
            com.xiaomi.slim.b r1 = r6.c()
            java.lang.String r2 = "CONN"
            java.lang.String r3 = r1.a()
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x0068
            byte[] r1 = r1.k()
            com.xiaomi.push.protobuf.b$f r1 = com.xiaomi.push.protobuf.b.f.b(r1)
            boolean r2 = r1.e()
            if (r2 == 0) goto L_0x002b
            com.xiaomi.slim.f r0 = r6.f
            java.lang.String r2 = r1.d()
            r0.a(r2)
            r0 = 1
        L_0x002b:
            boolean r2 = r1.h()
            if (r2 == 0) goto L_0x004e
            com.xiaomi.push.protobuf.b$b r2 = r1.i()
            com.xiaomi.slim.b r3 = new com.xiaomi.slim.b
            r3.<init>()
            java.lang.String r4 = "SYNC"
            java.lang.String r5 = "CONF"
            r3.a(r4, r5)
            byte[] r2 = r2.c()
            r4 = 0
            r3.a(r2, r4)
            com.xiaomi.slim.f r2 = r6.f
            r2.a(r3)
        L_0x004e:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "[Slim] CONN: host = "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r1 = r1.f()
            java.lang.StringBuilder r1 = r2.append(r1)
            java.lang.String r1 = r1.toString()
            com.xiaomi.channel.commonutils.logger.b.a(r1)
        L_0x0068:
            if (r0 != 0) goto L_0x007c
            java.lang.String r0 = "[Slim] Invalid CONN"
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r1 = "Invalid Connection"
            r0.<init>(r1)
            throw r0
        L_0x0077:
            com.xiaomi.slim.f r0 = r6.f
            r0.a(r1)
        L_0x007c:
            boolean r0 = r6.g
            if (r0 != 0) goto L_0x015d
            com.xiaomi.slim.b r1 = r6.c()
            com.xiaomi.slim.f r0 = r6.f
            r0.n()
            short r0 = r1.m()
            switch(r0) {
                case 1: goto L_0x0077;
                case 2: goto L_0x00ab;
                case 3: goto L_0x011f;
                default: goto L_0x0090;
            }
        L_0x0090:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "[Slim] unknow blob type "
            java.lang.StringBuilder r0 = r0.append(r2)
            short r1 = r1.m()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            goto L_0x007c
        L_0x00ab:
            java.lang.String r0 = "SECMSG"
            java.lang.String r2 = r1.a()
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L_0x0118
            java.lang.String r0 = r1.b()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0118
            int r0 = r1.c()     // Catch:{ Exception -> 0x00ed }
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ Exception -> 0x00ed }
            java.lang.String r0 = r0.toString()     // Catch:{ Exception -> 0x00ed }
            java.lang.String r2 = r1.j()     // Catch:{ Exception -> 0x00ed }
            com.xiaomi.push.service.am r3 = com.xiaomi.push.service.am.a()     // Catch:{ Exception -> 0x00ed }
            com.xiaomi.push.service.am$b r0 = r3.b(r0, r2)     // Catch:{ Exception -> 0x00ed }
            com.xiaomi.slim.e r2 = r6.d     // Catch:{ Exception -> 0x00ed }
            java.lang.String r0 = r0.i     // Catch:{ Exception -> 0x00ed }
            byte[] r0 = r1.d(r0)     // Catch:{ Exception -> 0x00ed }
            com.xiaomi.slim.f r3 = r6.f     // Catch:{ Exception -> 0x00ed }
            com.xiaomi.smack.packet.d r0 = r2.a(r0, r3)     // Catch:{ Exception -> 0x00ed }
            com.xiaomi.slim.f r2 = r6.f     // Catch:{ Exception -> 0x00ed }
            r2.b(r0)     // Catch:{ Exception -> 0x00ed }
            goto L_0x007c
        L_0x00ed:
            r0 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "[Slim] Parse packet from Blob "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r1 = r2.append(r1)
            java.lang.String r2 = " failure:"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r0 = r0.getMessage()
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r0 = r0.toString()
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            goto L_0x007c
        L_0x0118:
            com.xiaomi.slim.f r0 = r6.f
            r0.a(r1)
            goto L_0x007c
        L_0x011f:
            com.xiaomi.slim.e r0 = r6.d     // Catch:{ Exception -> 0x0132 }
            byte[] r2 = r1.k()     // Catch:{ Exception -> 0x0132 }
            com.xiaomi.slim.f r3 = r6.f     // Catch:{ Exception -> 0x0132 }
            com.xiaomi.smack.packet.d r0 = r0.a(r2, r3)     // Catch:{ Exception -> 0x0132 }
            com.xiaomi.slim.f r2 = r6.f     // Catch:{ Exception -> 0x0132 }
            r2.b(r0)     // Catch:{ Exception -> 0x0132 }
            goto L_0x007c
        L_0x0132:
            r0 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "[Slim] Parse packet from Blob "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r1 = r2.append(r1)
            java.lang.String r2 = " failure:"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r0 = r0.getMessage()
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r0 = r0.toString()
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            goto L_0x007c
        L_0x015d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.slim.c.d():void");
    }

    private ByteBuffer e() {
        if (this.a.capacity() > 4096) {
            this.a = ByteBuffer.allocate(2048);
        }
        this.a.clear();
        a(this.a, b.n());
        int c2 = b.c(this.a.asReadOnlyBuffer());
        if (c2 > 32768) {
            throw new IOException("Blob size too large");
        }
        if (c2 + 4 > this.a.remaining()) {
            ByteBuffer allocate = ByteBuffer.allocate(b.n() + c2);
            allocate.put(this.a.array(), 0, this.a.arrayOffset() + this.a.position());
            this.a = allocate;
        }
        a(this.a, c2);
        this.b.clear();
        a(this.b, 4);
        this.b.position(0);
        int i = this.b.getInt();
        this.c.reset();
        this.c.update(this.a.array(), 0, this.a.position());
        if (i == ((int) this.c.getValue())) {
            return this.a;
        }
        b.a("CRC = " + ((int) this.c.getValue()) + " and " + i);
        throw new IOException("Corrupted Blob bad CRC");
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        try {
            d();
        } catch (IOException e2) {
            if (!this.g) {
                throw e2;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void b() {
        this.g = true;
    }

    /* access modifiers changed from: 0000 */
    public b c() {
        IOException iOException;
        int i;
        try {
            ByteBuffer e2 = e();
            int position = e2.position();
            try {
                e2.flip();
                b b2 = b.b(e2);
                b.c("[Slim] Read {cmd=" + b2.a() + ";chid=" + b2.c() + ";len=" + position + "}");
                return b2;
            } catch (IOException e3) {
                IOException iOException2 = e3;
                i = position;
                iOException = iOException2;
                if (i == 0) {
                    i = this.a.position();
                }
                StringBuilder append = new StringBuilder().append("[Slim] read Blob [");
                byte[] array = this.a.array();
                if (i > b.n()) {
                    i = b.n();
                }
                b.a(append.append(d.a(array, 0, i)).append("] Err:").append(iOException.getMessage()).toString());
                throw iOException;
            }
        } catch (IOException e4) {
            iOException = e4;
            i = 0;
        }
    }
}
