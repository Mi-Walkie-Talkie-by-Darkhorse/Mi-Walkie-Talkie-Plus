package com.shenma.speechrecognition;

import java.util.UUID;
import java.util.concurrent.BlockingQueue;

class r extends Thread {
    private final BlockingQueue a;
    private volatile boolean b = false;
    private final UUID c;
    private final ae d;
    private final String e;
    private final String f;
    private final String g;
    private final int h;
    private final int i;
    private final int j;

    public r(UUID uuid, l lVar, ae aeVar, BlockingQueue blockingQueue) {
        this.c = uuid;
        this.d = aeVar;
        this.a = blockingQueue;
        this.e = lVar.f();
        this.f = lVar.g();
        this.g = lVar.h();
        this.h = 6400;
        this.i = 32000;
        this.j = 217600;
    }

    public synchronized void a() {
        this.b = true;
        interrupt();
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x01e8  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x020b  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x023a  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x023c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r20 = this;
            java.lang.String r2 = "start vader."
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]
            com.shenma.speechrecognition.aa.a(r2, r3)
            r2 = -20
            android.os.Process.setThreadPriority(r2)
            long r2 = java.lang.System.currentTimeMillis()
            com.shenma.speechjni.ShenmaVad r9 = new com.shenma.speechjni.ShenmaVad
            r9.<init>()
            r0 = r20
            java.lang.String r4 = r0.e
            r0 = r20
            java.lang.String r5 = r0.f
            r0 = r20
            java.lang.String r6 = r0.g
            int r4 = r9.init(r4, r5, r6)
            if (r4 == 0) goto L_0x0046
            java.lang.String r2 = "VAD initialization failure. FbPath:%s, FtPath:%s, NnPath:%s"
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = 0
            r0 = r20
            java.lang.String r5 = r0.e
            r3[r4] = r5
            r4 = 1
            r0 = r20
            java.lang.String r5 = r0.f
            r3[r4] = r5
            r4 = 2
            r0 = r20
            java.lang.String r5 = r0.g
            r3[r4] = r5
            com.shenma.speechrecognition.aa.b(r2, r3)
        L_0x0045:
            return
        L_0x0046:
            r9.reset()
            java.lang.String r4 = "VAD has been initialized for %dms."
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r6 = 0
            long r10 = java.lang.System.currentTimeMillis()
            long r2 = r10 - r2
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            r5[r6] = r2
            com.shenma.speechrecognition.aa.a(r4, r5)
            r6 = 0
            r5 = 0
            r4 = 0
            r2 = 2
            int[] r2 = new int[r2]
            r2 = {-1, -1} // fill-array
            r3 = 0
            org.apache.http.util.ByteArrayBuffer r10 = new org.apache.http.util.ByteArrayBuffer
            r0 = r20
            int r2 = r0.h
            r10.<init>(r2)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            r0 = r20
            int r2 = r0.h
            byte[] r12 = new byte[r2]
            r2 = 0
            r7 = r6
            r6 = r5
            r5 = r4
            r4 = r3
            r3 = r2
        L_0x0082:
            long r14 = java.lang.System.currentTimeMillis()
            r0 = r20
            java.util.concurrent.BlockingQueue r2 = r0.a     // Catch:{ InterruptedException -> 0x00cc }
            java.lang.Object r2 = r2.take()     // Catch:{ InterruptedException -> 0x00cc }
            com.shenma.speechrecognition.f r2 = (com.shenma.speechrecognition.f) r2     // Catch:{ InterruptedException -> 0x00cc }
            java.lang.String r8 = "VAD process %d-th packet length[%d] take %dms."
            r13 = 3
            java.lang.Object[] r13 = new java.lang.Object[r13]     // Catch:{ InterruptedException -> 0x00cc }
            r16 = 0
            java.lang.Integer r17 = r2.a()     // Catch:{ InterruptedException -> 0x00cc }
            r13[r16] = r17     // Catch:{ InterruptedException -> 0x00cc }
            r16 = 1
            java.lang.Integer r17 = r2.c()     // Catch:{ InterruptedException -> 0x00cc }
            r13[r16] = r17     // Catch:{ InterruptedException -> 0x00cc }
            r16 = 2
            long r18 = java.lang.System.currentTimeMillis()     // Catch:{ InterruptedException -> 0x00cc }
            long r14 = r18 - r14
            java.lang.Long r14 = java.lang.Long.valueOf(r14)     // Catch:{ InterruptedException -> 0x00cc }
            r13[r16] = r14     // Catch:{ InterruptedException -> 0x00cc }
            com.shenma.speechrecognition.aa.a(r8, r13)     // Catch:{ InterruptedException -> 0x00cc }
            java.lang.Integer r8 = r2.a()
            int r8 = r8.intValue()
            if (r8 >= 0) goto L_0x00d4
        L_0x00c0:
            r10.clear()
            r2 = 0
            java.util.Arrays.fill(r12, r2)
            r9.release()
            goto L_0x0045
        L_0x00cc:
            r2 = move-exception
            r0 = r20
            boolean r2 = r0.b
            if (r2 == 0) goto L_0x0082
            goto L_0x00c0
        L_0x00d4:
            byte[] r8 = r2.b()
            r13 = 0
            java.lang.Integer r2 = r2.c()
            int r2 = r2.intValue()
            r10.append(r8, r13, r2)
            r0 = r20
            int r2 = r0.h
            int r2 = r2 + r3
            int r8 = r10.length()
            if (r2 > r8) goto L_0x0082
            java.lang.String r2 = "Copy %d length array from total length %d subscript %d."
            r8 = 3
            java.lang.Object[] r8 = new java.lang.Object[r8]
            r13 = 0
            r0 = r20
            int r14 = r0.h
            java.lang.Integer r14 = java.lang.Integer.valueOf(r14)
            r8[r13] = r14
            r13 = 1
            int r14 = r10.length()
            java.lang.Integer r14 = java.lang.Integer.valueOf(r14)
            r8[r13] = r14
            r13 = 2
            java.lang.Integer r14 = java.lang.Integer.valueOf(r3)
            r8[r13] = r14
            com.shenma.speechrecognition.aa.a(r2, r8)
            byte[] r2 = r10.buffer()
            r8 = 0
            r0 = r20
            int r13 = r0.h
            java.lang.System.arraycopy(r2, r3, r12, r8, r13)
            long r14 = java.lang.System.currentTimeMillis()
            java.lang.String r2 = "Copied buffer length: %d"
            r8 = 1
            java.lang.Object[] r8 = new java.lang.Object[r8]
            r13 = 0
            int r0 = r12.length
            r16 = r0
            java.lang.Integer r16 = java.lang.Integer.valueOf(r16)
            r8[r13] = r16
            com.shenma.speechrecognition.aa.a(r2, r8)
            int r2 = r12.length
            int[] r13 = r9.check(r12, r2)
            java.lang.String r2 = "VAD processing uses %d ms."
            r8 = 1
            java.lang.Object[] r8 = new java.lang.Object[r8]
            r16 = 0
            long r18 = java.lang.System.currentTimeMillis()
            long r14 = r18 - r14
            java.lang.Long r14 = java.lang.Long.valueOf(r14)
            r8[r16] = r14
            com.shenma.speechrecognition.aa.a(r2, r8)
            r2 = 0
            java.util.Arrays.fill(r12, r2)
            r0 = r20
            int r2 = r0.h
            int r2 = r2 + r3
            r3 = 0
            int r8 = r11.length()
            r11.delete(r3, r8)
            java.lang.String r3 = "{"
            r11.append(r3)
            r3 = 0
        L_0x0168:
            int r8 = r13.length
            if (r3 >= r8) goto L_0x017a
            if (r3 <= 0) goto L_0x0172
            java.lang.String r8 = " , "
            r11.append(r8)
        L_0x0172:
            r8 = r13[r3]
            r11.append(r8)
            int r3 = r3 + 1
            goto L_0x0168
        L_0x017a:
            java.lang.String r3 = "}"
            r11.append(r3)
            java.lang.String r3 = "Effective VAD check: %s"
            r8 = 1
            java.lang.Object[] r8 = new java.lang.Object[r8]
            r14 = 0
            java.lang.String r15 = r11.toString()
            r8[r14] = r15
            com.shenma.speechrecognition.aa.a(r3, r8)
            int r3 = r13.length
            r8 = 2
            if (r3 != r8) goto L_0x00c0
            r3 = 0
            r3 = r13[r3]
            if (r3 < 0) goto L_0x00c0
            r3 = 1
            r3 = r13[r3]
            if (r3 < 0) goto L_0x00c0
            r3 = 0
            r8 = r13[r3]
            r3 = 1
            r13 = r13[r3]
            if (r4 != 0) goto L_0x0236
            if (r13 <= 0) goto L_0x0220
            r4 = 1
            r3 = r4
            r4 = r8
        L_0x01a9:
            int r5 = r12.length
            int r5 = r5 / 2
            int r7 = r7 + r5
            int r5 = r6 + r13
            int r6 = r7 - r4
            int r14 = r6 - r5
            java.lang.String r15 = "total_length=%d, valid_length=%d, header_silence_length=%d, tail_silence_length=%d, current_valid_length=%d, start_pos=%d, hasSpeechVoice=%d, vadTailThreshold=%d, vadSilenceThreshold=%d"
            r6 = 9
            java.lang.Object[] r0 = new java.lang.Object[r6]
            r16 = r0
            r6 = 0
            java.lang.Integer r17 = java.lang.Integer.valueOf(r7)
            r16[r6] = r17
            r6 = 1
            java.lang.Integer r17 = java.lang.Integer.valueOf(r5)
            r16[r6] = r17
            r6 = 2
            java.lang.Integer r17 = java.lang.Integer.valueOf(r4)
            r16[r6] = r17
            r6 = 3
            java.lang.Integer r17 = java.lang.Integer.valueOf(r14)
            r16[r6] = r17
            r6 = 4
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)
            r16[r6] = r13
            r6 = 5
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            r16[r6] = r8
            r8 = 6
            if (r3 == 0) goto L_0x023a
            r6 = 1
        L_0x01e9:
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r16[r8] = r6
            r6 = 7
            r0 = r20
            int r8 = r0.i
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            r16[r6] = r8
            r6 = 8
            r0 = r20
            int r8 = r0.j
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            r16[r6] = r8
            com.shenma.speechrecognition.aa.a(r15, r16)
            if (r3 == 0) goto L_0x023c
            int r6 = r14 * 2
            r0 = r20
            int r8 = r0.i
            if (r6 < r8) goto L_0x0251
            r0 = r20
            com.shenma.speechrecognition.ae r2 = r0.d
            r0 = r20
            java.util.UUID r3 = r0.c
            r2.c(r3)
            goto L_0x00c0
        L_0x0220:
            java.lang.String r3 = "start_pos=%d, current_valid_length=%d"
            r14 = 2
            java.lang.Object[] r14 = new java.lang.Object[r14]
            r15 = 0
            java.lang.Integer r16 = java.lang.Integer.valueOf(r8)
            r14[r15] = r16
            r15 = 1
            java.lang.Integer r16 = java.lang.Integer.valueOf(r13)
            r14[r15] = r16
            com.shenma.speechrecognition.aa.a(r3, r14)
        L_0x0236:
            r3 = r4
            r4 = r5
            goto L_0x01a9
        L_0x023a:
            r6 = 0
            goto L_0x01e9
        L_0x023c:
            int r6 = r14 * 2
            r0 = r20
            int r8 = r0.j
            if (r6 < r8) goto L_0x0251
            r0 = r20
            com.shenma.speechrecognition.ae r2 = r0.d
            r0 = r20
            java.util.UUID r3 = r0.c
            r2.c(r3)
            goto L_0x00c0
        L_0x0251:
            r6 = r5
            r5 = r4
            r4 = r3
            r3 = r2
            goto L_0x0082
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shenma.speechrecognition.r.run():void");
    }
}
