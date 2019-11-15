package com.shenma.speechrecognition;

import java.util.UUID;

class z extends Thread {
    private final UUID a;
    private final l b;
    private final v c;
    private final ae d;
    private final int e = 640;
    private final byte[] f = new byte[this.e];
    private volatile boolean g;
    private m h;

    public z(UUID uuid, l lVar, v vVar, ae aeVar) {
        this.a = uuid;
        this.b = lVar;
        this.c = vVar;
        this.d = aeVar;
    }

    public synchronized void a() {
        aa.a("Start input thread. current reading status:%b", Boolean.valueOf(this.g));
        if (!this.g) {
            this.g = true;
            this.h = new m(this.a, this.b, this.c, this.d);
            this.h.a();
            super.start();
        }
    }

    public synchronized void b() {
        aa.a("Stop input thread. current reading status:%b", Boolean.valueOf(this.g));
        if (this.g) {
            this.g = false;
        }
    }

    public synchronized void c() {
        aa.a("Release input thread. current reading status:%b", Boolean.valueOf(this.g));
        if (this.g) {
            b();
        }
        this.h.b();
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x006f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r13 = this;
            r12 = 2
            r2 = 1
            r4 = 0
            java.lang.String r0 = "start new audio read."
            java.lang.Object[] r1 = new java.lang.Object[r4]
            com.shenma.speechrecognition.aa.a(r0, r1)
            r0 = -20
            android.os.Process.setThreadPriority(r0)
            r6 = 0
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch:{ FileNotFoundException -> 0x0118, IOException -> 0x00fb }
            com.shenma.speechrecognition.l r0 = r13.b     // Catch:{ FileNotFoundException -> 0x0118, IOException -> 0x00fb }
            java.lang.String r0 = r0.k()     // Catch:{ FileNotFoundException -> 0x0118, IOException -> 0x00fb }
            r5.<init>(r0)     // Catch:{ FileNotFoundException -> 0x0118, IOException -> 0x00fb }
            r0 = r2
            r1 = r4
        L_0x001e:
            byte[] r3 = r13.f     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            int r8 = r13.e     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            int r8 = r8 - r1
            int r8 = r5.read(r3, r1, r8)     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            java.lang.String r3 = "seq:%d; Request len:%d; Size read from read:%d"
            r9 = 3
            java.lang.Object[] r9 = new java.lang.Object[r9]     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            r10 = 0
            java.lang.Integer r11 = java.lang.Integer.valueOf(r0)     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            r9[r10] = r11     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            r10 = 1
            int r11 = r13.e     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            int r11 = r11 - r1
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            r9[r10] = r11     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            r10 = 2
            java.lang.Integer r11 = java.lang.Integer.valueOf(r8)     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            r9[r10] = r11     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            com.shenma.speechrecognition.aa.a(r3, r9)     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            if (r8 > 0) goto L_0x007f
            com.shenma.speechrecognition.ae r3 = r13.d     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            if (r3 == 0) goto L_0x0054
            com.shenma.speechrecognition.ae r3 = r13.d     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            java.util.UUID r6 = r13.a     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            r3.c(r6)     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
        L_0x0054:
            r5.close()     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
        L_0x0057:
            java.lang.String r3 = "Last block size:%d, finish collecting %d-th packet data."
            java.lang.Object[] r5 = new java.lang.Object[r12]
            java.lang.Integer r6 = java.lang.Integer.valueOf(r1)
            r5[r4] = r6
            int r4 = -r0
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r5[r2] = r4
            com.shenma.speechrecognition.aa.a(r3, r5)
            com.shenma.speechrecognition.ae r2 = r13.d
            if (r2 == 0) goto L_0x0076
            com.shenma.speechrecognition.ae r2 = r13.d
            java.util.UUID r3 = r13.a
            r2.b(r3)
        L_0x0076:
            com.shenma.speechrecognition.m r2 = r13.h
            byte[] r3 = r13.f
            int r0 = -r0
            r2.a(r3, r1, r0)
            return
        L_0x007f:
            r3 = r4
        L_0x0080:
            if (r3 >= r8) goto L_0x008f
            byte[] r9 = r13.f     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            byte r9 = r9[r3]     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            int r9 = java.lang.Math.abs(r9)     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            double r10 = (double) r9     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            double r6 = r6 + r10
            int r3 = r3 + 1
            goto L_0x0080
        L_0x008f:
            float r3 = (float) r8     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            double r10 = (double) r3     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            double r6 = r6 / r10
            com.shenma.speechrecognition.ae r3 = r13.d     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            if (r3 == 0) goto L_0x00b0
            if (r0 != r2) goto L_0x009f
            com.shenma.speechrecognition.ae r3 = r13.d     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            java.util.UUID r9 = r13.a     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            r3.a(r9)     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
        L_0x009f:
            com.shenma.speechrecognition.ae r3 = r13.d     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            java.util.UUID r9 = r13.a     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            float r10 = (float) r6     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            r3.a(r9, r10)     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            com.shenma.speechrecognition.ae r3 = r13.d     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            java.util.UUID r9 = r13.a     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            byte[] r10 = r13.f     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            r3.a(r9, r10)     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
        L_0x00b0:
            int r3 = r1 + r8
            java.lang.String r1 = "sizeReadInTotal:%d;readBufferSize:%d"
            r8 = 2
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch:{ FileNotFoundException -> 0x011c, IOException -> 0x0111 }
            r9 = 0
            java.lang.Integer r10 = java.lang.Integer.valueOf(r3)     // Catch:{ FileNotFoundException -> 0x011c, IOException -> 0x0111 }
            r8[r9] = r10     // Catch:{ FileNotFoundException -> 0x011c, IOException -> 0x0111 }
            r9 = 1
            int r10 = r13.e     // Catch:{ FileNotFoundException -> 0x011c, IOException -> 0x0111 }
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch:{ FileNotFoundException -> 0x011c, IOException -> 0x0111 }
            r8[r9] = r10     // Catch:{ FileNotFoundException -> 0x011c, IOException -> 0x0111 }
            com.shenma.speechrecognition.aa.a(r1, r8)     // Catch:{ FileNotFoundException -> 0x011c, IOException -> 0x0111 }
            int r1 = r13.e     // Catch:{ FileNotFoundException -> 0x011c, IOException -> 0x0111 }
            if (r3 != r1) goto L_0x0123
            com.shenma.speechrecognition.m r8 = r13.h     // Catch:{ FileNotFoundException -> 0x011c, IOException -> 0x0111 }
            byte[] r9 = r13.f     // Catch:{ FileNotFoundException -> 0x011c, IOException -> 0x0111 }
            int r1 = r0 + 1
            r8.a(r9, r3, r0)     // Catch:{ FileNotFoundException -> 0x011f, IOException -> 0x0114 }
            r0 = r1
            r1 = r4
        L_0x00d9:
            r8 = 10
            java.lang.Thread.sleep(r8)     // Catch:{ InterruptedException -> 0x00e4 }
        L_0x00de:
            boolean r3 = r13.g     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            if (r3 != 0) goto L_0x001e
            goto L_0x0054
        L_0x00e4:
            r3 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r3)     // Catch:{ FileNotFoundException -> 0x00e9, IOException -> 0x010f }
            goto L_0x00de
        L_0x00e9:
            r3 = move-exception
        L_0x00ea:
            java.lang.String r3 = "Input file not found:%s"
            java.lang.Object[] r5 = new java.lang.Object[r2]
            com.shenma.speechrecognition.l r6 = r13.b
            java.lang.String r6 = r6.k()
            r5[r4] = r6
            com.shenma.speechrecognition.aa.b(r3, r5)
            goto L_0x0057
        L_0x00fb:
            r0 = move-exception
            r0 = r2
            r1 = r4
        L_0x00fe:
            java.lang.String r3 = "Input file read exception:%s"
            java.lang.Object[] r5 = new java.lang.Object[r2]
            com.shenma.speechrecognition.l r6 = r13.b
            java.lang.String r6 = r6.k()
            r5[r4] = r6
            com.shenma.speechrecognition.aa.b(r3, r5)
            goto L_0x0057
        L_0x010f:
            r3 = move-exception
            goto L_0x00fe
        L_0x0111:
            r1 = move-exception
            r1 = r3
            goto L_0x00fe
        L_0x0114:
            r0 = move-exception
            r0 = r1
            r1 = r3
            goto L_0x00fe
        L_0x0118:
            r0 = move-exception
            r0 = r2
            r1 = r4
            goto L_0x00ea
        L_0x011c:
            r1 = move-exception
            r1 = r3
            goto L_0x00ea
        L_0x011f:
            r0 = move-exception
            r0 = r1
            r1 = r3
            goto L_0x00ea
        L_0x0123:
            r1 = r3
            goto L_0x00d9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shenma.speechrecognition.z.run():void");
    }
}
