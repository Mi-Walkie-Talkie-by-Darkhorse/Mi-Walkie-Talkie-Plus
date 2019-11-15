package com.shenma.speechrecognition;

import android.os.Process;
import com.shenma.speechjni.OpusEncoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.Arrays;
import java.util.UUID;
import java.util.concurrent.BlockingQueue;
import org.apache.http.util.ByteArrayBuffer;

class j extends Thread {
    private final ab a;
    private final BlockingQueue b;
    private final BlockingQueue c;
    private volatile boolean d = false;
    private final l e;
    private final OpusEncoder f;
    private final int g;
    private int h;
    private final short[] i;
    private int j;
    private long k = 0;
    private long l = 0;
    private long m = 0;
    private long n = 0;

    public j(UUID uuid, l lVar, BlockingQueue blockingQueue, BlockingQueue blockingQueue2) {
        this.e = lVar;
        this.b = blockingQueue;
        this.c = blockingQueue2;
        this.a = new ab(uuid, this.e, true);
        aa.a("sample rate:%d quality:%d complexity:%d", Integer.valueOf(16000), Integer.valueOf(c.b), Integer.valueOf(4));
        this.f = new OpusEncoder(16000, c.b, 4);
        this.g = 320;
        this.i = new short[this.g];
        this.j = 0;
        this.h = 0;
    }

    private void b() {
        double d2 = ((double) this.l) / (((((double) this.k) / 16000.0d) * 1000000.0d) + 0.5d);
        aa.a("Totally encode [%d] shorts total cost: %d ns", Long.valueOf(this.k), Long.valueOf(this.l));
        aa.a("CostPerSec:%f", Double.valueOf(d2));
    }

    public synchronized void a() {
        this.a.b();
        this.d = true;
        interrupt();
    }

    public byte[] a(int i2, byte[] bArr, int i3) {
        byte[] bArr2 = null;
        int i4 = 0;
        if (bArr != null && i3 > 0) {
            ShortBuffer asShortBuffer = ByteBuffer.wrap(bArr, 0, i3).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer();
            while (asShortBuffer.remaining() > 0) {
                aa.a("length of remaining=%d", Integer.valueOf(asShortBuffer.remaining()));
                if (asShortBuffer.remaining() >= this.g - i4) {
                    aa.a("Try to read %d bytes of seq: %d", Integer.valueOf(this.g - i4), Integer.valueOf(i2));
                    asShortBuffer.get(this.i, i4, this.g - i4);
                    this.j = this.g;
                    i4 = 0;
                } else {
                    int remaining = asShortBuffer.remaining();
                    aa.a("Try to read remaining %d bytes of seq: %d", Integer.valueOf(remaining), Integer.valueOf(i2));
                    asShortBuffer.get(this.i, i4, remaining);
                    this.j += remaining;
                    i4 += remaining;
                }
                if (i4 == 0 || i2 < 0) {
                    if (aa.a) {
                        this.k += (long) this.j;
                        this.m = System.nanoTime();
                    }
                    aa.a("Try to encode %d bytes of seq: %d", Integer.valueOf(this.j), Integer.valueOf(i2));
                    long currentTimeMillis = System.currentTimeMillis();
                    bArr2 = this.f.a(this.i);
                    aa.a("RealTime cost for encoding %d-th packet is %dms.", Integer.valueOf(i2), Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                    if (aa.a) {
                        this.n = System.nanoTime();
                        this.l += this.n - this.m;
                    }
                    Arrays.fill(this.i, 0);
                    this.j = 0;
                    aa.a("Data length is: %d.", Integer.valueOf(this.j));
                }
            }
        } else if (i2 < 0 && this.j > 0) {
            aa.a("Try to encode %d bytes remaining of seq: %d", Integer.valueOf(this.j), Integer.valueOf(i2));
            bArr2 = this.f.a(this.i);
            if (aa.a) {
                this.n = System.nanoTime();
                this.l += this.n - this.m;
            }
            if (bArr2.length > 0) {
                Arrays.fill(this.i, 0);
                this.j = 0;
            }
        }
        aa.a("Size before encode %d size after encode %d", Integer.valueOf(i3), Integer.valueOf(bArr2.length));
        if (i2 < 0) {
            b();
        }
        return bArr2;
    }

    public void run() {
        aa.a("start opus encoding processor.", new Object[0]);
        Process.setThreadPriority(-20);
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(1920);
        int i2 = 1;
        while (true) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                f fVar = (f) this.b.take();
                aa.a("The %d-th packet length[%d] take %dms.", fVar.a(), fVar.c(), Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                this.h += fVar.c().intValue();
                long currentTimeMillis2 = System.currentTimeMillis();
                if (fVar.c().intValue() > 0) {
                    byte[] a2 = a(fVar.a().intValue(), fVar.b(), fVar.c().intValue());
                    aa.a("The %d-th packet compress to size %d, with time cost %dms", fVar.a(), Integer.valueOf(a2.length), Long.valueOf(System.currentTimeMillis() - currentTimeMillis2));
                    byteArrayBuffer.append(a2, 0, a2.length);
                }
                if (this.h >= 9600 || fVar.a().intValue() <= 0) {
                    aa.a("The %d-th packet after compression size %d", fVar.a(), Integer.valueOf(byteArrayBuffer.length()));
                    f fVar2 = new f(fVar.a().intValue() > 0 ? i2 : -i2, byteArrayBuffer.buffer(), byteArrayBuffer.length());
                    aa.a("The %d-th packet after compression size %d, with time cost %dms", fVar2.a(), fVar2.c(), Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                    this.a.a(fVar2.b(), fVar2.c().intValue(), fVar2.a().intValue());
                    fVar2.a(this.e.i());
                    this.c.add(fVar2);
                    this.h = 0;
                    byteArrayBuffer.clear();
                    i2++;
                }
            } catch (InterruptedException e2) {
                if (this.d) {
                    return;
                }
            }
        }
    }
}
