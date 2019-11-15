package com.bumptech.glide.gifdecoder;

import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* compiled from: GifHeaderParser */
public class b {
    private final byte[] a = new byte[256];
    private ByteBuffer b;
    private a c;
    private int d = 0;

    public b a(ByteBuffer byteBuffer) {
        c();
        this.b = byteBuffer.asReadOnlyBuffer();
        this.b.position(0);
        this.b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    public void a() {
        this.b = null;
        this.c = null;
    }

    private void c() {
        this.b = null;
        Arrays.fill(this.a, 0);
        this.c = new a();
        this.d = 0;
    }

    public a b() {
        if (this.b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        } else if (o()) {
            return this.c;
        } else {
            h();
            if (!o()) {
                d();
                if (this.c.c < 0) {
                    this.c.b = 1;
                }
            }
            return this.c;
        }
    }

    private void d() {
        a(Integer.MAX_VALUE);
    }

    private void a(int i) {
        boolean z = false;
        while (!z && !o() && this.c.c <= i) {
            switch (m()) {
                case 33:
                    switch (m()) {
                        case 1:
                            k();
                            break;
                        case 249:
                            this.c.d = new GifFrame();
                            e();
                            break;
                        case 254:
                            k();
                            break;
                        case 255:
                            l();
                            String str = "";
                            for (int i2 = 0; i2 < 11; i2++) {
                                str = str + ((char) this.a[i2]);
                            }
                            if (!str.equals("NETSCAPE2.0")) {
                                k();
                                break;
                            } else {
                                g();
                                break;
                            }
                        default:
                            k();
                            break;
                    }
                case 44:
                    if (this.c.d == null) {
                        this.c.d = new GifFrame();
                    }
                    f();
                    break;
                case 59:
                    z = true;
                    break;
                default:
                    this.c.b = 1;
                    break;
            }
        }
    }

    private void e() {
        boolean z = true;
        m();
        int m = m();
        this.c.d.g = (m & 28) >> 2;
        if (this.c.d.g == 0) {
            this.c.d.g = 1;
        }
        GifFrame gifFrame = this.c.d;
        if ((m & 1) == 0) {
            z = false;
        }
        gifFrame.f = z;
        int n = n();
        if (n < 2) {
            n = 10;
        }
        this.c.d.i = n * 10;
        this.c.d.h = m();
        m();
    }

    private void f() {
        boolean z = true;
        this.c.d.a = n();
        this.c.d.b = n();
        this.c.d.c = n();
        this.c.d.d = n();
        int m = m();
        boolean z2 = (m & 128) != 0;
        int pow = (int) Math.pow(2.0d, (double) ((m & 7) + 1));
        GifFrame gifFrame = this.c.d;
        if ((m & 64) == 0) {
            z = false;
        }
        gifFrame.e = z;
        if (z2) {
            this.c.d.k = b(pow);
        } else {
            this.c.d.k = null;
        }
        this.c.d.j = this.b.position();
        j();
        if (!o()) {
            this.c.c++;
            this.c.e.add(this.c.d);
        }
    }

    private void g() {
        do {
            l();
            if (this.a[0] == 1) {
                this.c.m = (this.a[1] & 255) | ((this.a[2] & 255) << 8);
            }
            if (this.d <= 0) {
                return;
            }
        } while (!o());
    }

    private void h() {
        String str = "";
        for (int i = 0; i < 6; i++) {
            str = str + ((char) m());
        }
        if (!str.startsWith("GIF")) {
            this.c.b = 1;
            return;
        }
        i();
        if (this.c.h && !o()) {
            this.c.a = b(this.c.i);
            this.c.l = this.c.a[this.c.j];
        }
    }

    private void i() {
        this.c.f = n();
        this.c.g = n();
        int m = m();
        this.c.h = (m & 128) != 0;
        this.c.i = (int) Math.pow(2.0d, (double) ((m & 7) + 1));
        this.c.j = m();
        this.c.k = m();
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0040  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int[] b(int r11) {
        /*
            r10 = this;
            r2 = 0
            int r0 = r11 * 3
            r1 = 0
            byte[] r4 = new byte[r0]
            java.nio.ByteBuffer r0 = r10.b     // Catch:{ BufferUnderflowException -> 0x0033 }
            r0.get(r4)     // Catch:{ BufferUnderflowException -> 0x0033 }
            r0 = 256(0x100, float:3.59E-43)
            int[] r0 = new int[r0]     // Catch:{ BufferUnderflowException -> 0x0033 }
            r1 = r2
        L_0x0010:
            if (r2 >= r11) goto L_0x004c
            int r3 = r1 + 1
            byte r1 = r4[r1]     // Catch:{ BufferUnderflowException -> 0x004d }
            r5 = r1 & 255(0xff, float:3.57E-43)
            int r6 = r3 + 1
            byte r1 = r4[r3]     // Catch:{ BufferUnderflowException -> 0x004d }
            r7 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r6 + 1
            byte r3 = r4[r6]     // Catch:{ BufferUnderflowException -> 0x004d }
            r6 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r2 + 1
            r8 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            int r5 = r5 << 16
            r5 = r5 | r8
            int r7 = r7 << 8
            r5 = r5 | r7
            r5 = r5 | r6
            r0[r2] = r5     // Catch:{ BufferUnderflowException -> 0x004d }
            r2 = r3
            goto L_0x0010
        L_0x0033:
            r0 = move-exception
            r9 = r0
            r0 = r1
            r1 = r9
        L_0x0037:
            java.lang.String r2 = "GifHeaderParser"
            r3 = 3
            boolean r2 = android.util.Log.isLoggable(r2, r3)
            if (r2 == 0) goto L_0x0047
            java.lang.String r2 = "GifHeaderParser"
            java.lang.String r3 = "Format Error Reading Color Table"
            android.util.Log.d(r2, r3, r1)
        L_0x0047:
            com.bumptech.glide.gifdecoder.a r1 = r10.c
            r2 = 1
            r1.b = r2
        L_0x004c:
            return r0
        L_0x004d:
            r1 = move-exception
            goto L_0x0037
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifdecoder.b.b(int):int[]");
    }

    private void j() {
        m();
        k();
    }

    private void k() {
        int m;
        do {
            m = m();
            this.b.position(Math.min(this.b.position() + m, this.b.limit()));
        } while (m > 0);
    }

    private int l() {
        int i = 0;
        this.d = m();
        if (this.d > 0) {
            int i2 = 0;
            while (i < this.d) {
                try {
                    i2 = this.d - i;
                    this.b.get(this.a, i, i2);
                    i += i2;
                } catch (Exception e) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        Log.d("GifHeaderParser", "Error Reading Block n: " + i + " count: " + i2 + " blockSize: " + this.d, e);
                    }
                    this.c.b = 1;
                }
            }
        }
        return i;
    }

    private int m() {
        boolean z = false;
        try {
            return this.b.get() & 255;
        } catch (Exception e) {
            this.c.b = 1;
            return z;
        }
    }

    private int n() {
        return this.b.getShort();
    }

    private boolean o() {
        return this.c.b != 0;
    }
}
