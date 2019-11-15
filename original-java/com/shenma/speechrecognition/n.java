package com.shenma.speechrecognition;

import android.media.AudioRecord;
import java.util.UUID;

class n extends Thread {
    private final AudioRecord a;
    private final UUID b;
    private final l c;
    private final v d;
    private final ae e;
    private final int f;
    private final byte[] g;
    private volatile g h = g.STATE_INVALID;
    private m i;

    public n(AudioRecord audioRecord, UUID uuid, l lVar, v vVar, ae aeVar) {
        this.a = audioRecord;
        this.b = uuid;
        this.c = lVar;
        this.d = vVar;
        this.e = aeVar;
        this.f = 640;
        this.g = new byte[this.f];
    }

    public synchronized void a() {
        aa.a("Start audio record thread. current recording status:%s", this.h.name());
        if (this.h != g.STATE_BUSY) {
            this.h = g.STATE_BUSY;
            this.i = new m(this.b, this.c, this.d, this.e);
            this.i.a();
            super.start();
        }
    }

    public synchronized void b() {
        aa.a("Stop audio record thread. current recording status:%s", this.h.name());
        if (this.h == g.STATE_BUSY) {
            this.h = g.STATE_IDLE;
        }
    }

    public synchronized void c() {
        aa.a("Release audio record thread. current recording status:%s", this.h.name());
        this.h = g.STATE_INVALID;
        this.i.b();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00f8, code lost:
        if (r9 >= 0) goto L_0x00fa;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r14 = this;
            r13 = 3
            r7 = 0
            r12 = 2
            r4 = 1
            r1 = 0
            java.lang.String r0 = "start new audio record."
            java.lang.Object[] r2 = new java.lang.Object[r1]
            com.shenma.speechrecognition.aa.a(r0, r2)
            r0 = -20
            android.os.Process.setThreadPriority(r0)
            android.media.AudioRecord r0 = r14.a
            if (r0 != 0) goto L_0x0024
            java.lang.String r0 = "audioRecord uninitialized."
            java.lang.Object[] r1 = new java.lang.Object[r1]
            com.shenma.speechrecognition.aa.b(r0, r1)
            com.shenma.speechrecognition.ae r0 = r14.e
            java.util.UUID r1 = r14.b
            r0.a(r1, r13)
        L_0x0023:
            return
        L_0x0024:
            android.media.AudioRecord r0 = r14.a     // Catch:{ IllegalStateException -> 0x0067 }
            r0.startRecording()     // Catch:{ IllegalStateException -> 0x0067 }
            r0 = r1
            r2 = r1
            r3 = r4
            r5 = r1
        L_0x002d:
            com.shenma.speechrecognition.g r6 = r14.h
            com.shenma.speechrecognition.g r8 = com.shenma.speechrecognition.g.STATE_BUSY
            if (r6 == r8) goto L_0x0079
        L_0x0033:
            java.lang.String r0 = "Last block size:%d, finish collecting %d-th packet data."
            java.lang.Object[] r2 = new java.lang.Object[r12]
            java.lang.Integer r6 = java.lang.Integer.valueOf(r5)
            r2[r1] = r6
            int r1 = -r3
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r2[r4] = r1
            com.shenma.speechrecognition.aa.a(r0, r2)
            com.shenma.speechrecognition.ae r0 = r14.e
            if (r0 == 0) goto L_0x0052
            com.shenma.speechrecognition.ae r0 = r14.e
            java.util.UUID r1 = r14.b
            r0.b(r1)
        L_0x0052:
            int r0 = java.lang.Math.abs(r3)
            if (r0 == r4) goto L_0x0143
            com.shenma.speechrecognition.g r0 = r14.h
            com.shenma.speechrecognition.g r1 = com.shenma.speechrecognition.g.STATE_IDLE
            if (r0 != r1) goto L_0x0143
            com.shenma.speechrecognition.m r0 = r14.i
            byte[] r1 = r14.g
            int r2 = -r3
            r0.a(r1, r5, r2)
            goto L_0x0023
        L_0x0067:
            r0 = move-exception
            java.lang.String r0 = "startRecording() called on an uninitialized AudioRecord."
            java.lang.Object[] r1 = new java.lang.Object[r1]
            com.shenma.speechrecognition.aa.b(r0, r1)
            com.shenma.speechrecognition.ae r0 = r14.e
            java.util.UUID r1 = r14.b
            r2 = 8
            r0.a(r1, r2)
            goto L_0x0023
        L_0x0079:
            android.media.AudioRecord r6 = r14.a
            byte[] r8 = r14.g
            int r9 = r14.f
            int r9 = r9 - r5
            int r9 = r6.read(r8, r5, r9)
            java.lang.String r6 = "seq:%d; Request len:%d; Size read from record:%d"
            java.lang.Object[] r8 = new java.lang.Object[r13]
            java.lang.Integer r10 = java.lang.Integer.valueOf(r3)
            r8[r1] = r10
            int r10 = r14.f
            int r10 = r10 - r5
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)
            r8[r4] = r10
            java.lang.Integer r10 = java.lang.Integer.valueOf(r9)
            r8[r12] = r10
            com.shenma.speechrecognition.aa.a(r6, r8)
            if (r9 <= 0) goto L_0x0154
            r6 = r1
            r8 = r7
        L_0x00a4:
            if (r6 >= r9) goto L_0x00b3
            byte[] r10 = r14.g
            byte r10 = r10[r6]
            int r10 = java.lang.Math.abs(r10)
            float r10 = (float) r10
            float r8 = r8 + r10
            int r6 = r6 + 1
            goto L_0x00a4
        L_0x00b3:
            float r6 = (float) r9
            float r6 = r8 / r6
        L_0x00b6:
            java.lang.String r8 = "seq:%d volume:%f."
            java.lang.Object[] r10 = new java.lang.Object[r12]
            java.lang.Integer r11 = java.lang.Integer.valueOf(r3)
            r10[r1] = r11
            java.lang.Float r11 = java.lang.Float.valueOf(r6)
            r10[r4] = r11
            com.shenma.speechrecognition.aa.a(r8, r10)
            if (r0 != 0) goto L_0x00f8
            r8 = 20
            if (r2 < r8) goto L_0x00e8
            java.lang.String r0 = "No audio data exception."
            java.lang.Object[] r1 = new java.lang.Object[r1]
            com.shenma.speechrecognition.aa.b(r0, r1)
            com.shenma.speechrecognition.ae r0 = r14.e
            java.util.UUID r1 = r14.b
            r2 = 9
            r0.a(r1, r2)
            com.shenma.speechrecognition.ae r0 = r14.e
            java.util.UUID r1 = r14.b
            r0.c(r1)
            goto L_0x0023
        L_0x00e8:
            int r8 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r8 == 0) goto L_0x00ee
            if (r9 >= 0) goto L_0x00fa
        L_0x00ee:
            int r2 = r2 + 1
        L_0x00f0:
            com.shenma.speechrecognition.g r6 = r14.h
            com.shenma.speechrecognition.g r8 = com.shenma.speechrecognition.g.STATE_BUSY
            if (r6 == r8) goto L_0x002d
            goto L_0x0033
        L_0x00f8:
            if (r9 < 0) goto L_0x00f0
        L_0x00fa:
            com.shenma.speechrecognition.ae r0 = r14.e
            if (r0 == 0) goto L_0x0117
            if (r3 != r4) goto L_0x0107
            com.shenma.speechrecognition.ae r0 = r14.e
            java.util.UUID r2 = r14.b
            r0.a(r2)
        L_0x0107:
            com.shenma.speechrecognition.ae r0 = r14.e
            java.util.UUID r2 = r14.b
            r0.a(r2, r6)
            com.shenma.speechrecognition.ae r0 = r14.e
            java.util.UUID r2 = r14.b
            byte[] r6 = r14.g
            r0.a(r2, r6)
        L_0x0117:
            int r5 = r5 + r9
            java.lang.String r0 = "readOffset:%d;readBufferSize:%d"
            java.lang.Object[] r2 = new java.lang.Object[r12]
            java.lang.Integer r6 = java.lang.Integer.valueOf(r5)
            r2[r1] = r6
            int r6 = r14.f
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r2[r4] = r6
            com.shenma.speechrecognition.aa.a(r0, r2)
            int r0 = r14.f
            if (r5 != r0) goto L_0x0151
            com.shenma.speechrecognition.m r0 = r14.i
            byte[] r2 = r14.g
            r0.a(r2, r5, r3)
            byte[] r0 = r14.g
            java.util.Arrays.fill(r0, r1)
            int r3 = r3 + 1
            r0 = r4
            r2 = r1
            r5 = r1
            goto L_0x00f0
        L_0x0143:
            com.shenma.speechrecognition.ae r0 = r14.e
            if (r0 == 0) goto L_0x0023
            com.shenma.speechrecognition.ae r0 = r14.e
            java.util.UUID r1 = r14.b
            r2 = -5
            r0.a(r1, r2)
            goto L_0x0023
        L_0x0151:
            r0 = r4
            r2 = r1
            goto L_0x00f0
        L_0x0154:
            r6 = r7
            goto L_0x00b6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shenma.speechrecognition.n.run():void");
    }
}
