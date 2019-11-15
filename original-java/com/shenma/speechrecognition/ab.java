package com.shenma.speechrecognition;

import java.io.File;
import java.util.UUID;
import org.apache.http.util.ByteArrayBuffer;

class ab implements y {
    private final UUID a;
    private final boolean b;
    private final String c;
    private final boolean d;
    private ByteArrayBuffer e;

    public ab(UUID uuid, l lVar, boolean z) {
        this.a = uuid;
        this.c = lVar.j() + File.separator;
        this.b = lVar.j() != null && lVar.j().length() > 0;
        this.d = z;
        this.e = new ByteArrayBuffer(1024);
    }

    public void a() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x00bd A[SYNTHETIC, Splitter:B:30:0x00bd] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00db A[SYNTHETIC, Splitter:B:40:0x00db] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00ee A[SYNTHETIC, Splitter:B:47:0x00ee] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(byte[] r10, int r11, int r12) {
        /*
            r9 = this;
            r1 = 0
            r7 = 1
            r6 = 0
            java.lang.String r0 = "The %d-th length %d."
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Integer r3 = java.lang.Integer.valueOf(r12)
            r2[r6] = r3
            java.lang.Integer r3 = java.lang.Integer.valueOf(r11)
            r2[r7] = r3
            com.shenma.speechrecognition.aa.a(r0, r2)
            boolean r0 = r9.b
            if (r0 != 0) goto L_0x001c
        L_0x001b:
            return
        L_0x001c:
            java.lang.String r0 = "OutputDebugger receives %d-th packet."
            java.lang.Object[] r2 = new java.lang.Object[r7]
            java.lang.Integer r3 = java.lang.Integer.valueOf(r12)
            r2[r6] = r3
            com.shenma.speechrecognition.aa.a(r0, r2)
            java.lang.String r0 = "received buffer length is:%d"
            java.lang.Object[] r2 = new java.lang.Object[r7]
            java.lang.Integer r3 = java.lang.Integer.valueOf(r11)
            r2[r6] = r3
            com.shenma.speechrecognition.aa.a(r0, r2)
            java.io.File r0 = new java.io.File
            java.lang.String r2 = r9.c
            r0.<init>(r2)
            boolean r2 = r0.isDirectory()
            if (r2 != 0) goto L_0x0046
            r0.mkdirs()
        L_0x0046:
            org.apache.http.util.ByteArrayBuffer r0 = r9.e
            r0.append(r10, r6, r11)
            if (r12 >= 0) goto L_0x0091
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ FileNotFoundException -> 0x00ae, IOException -> 0x00cc, all -> 0x00ea }
            r0.<init>()     // Catch:{ FileNotFoundException -> 0x00ae, IOException -> 0x00cc, all -> 0x00ea }
            java.lang.String r2 = r9.c     // Catch:{ FileNotFoundException -> 0x00ae, IOException -> 0x00cc, all -> 0x00ea }
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch:{ FileNotFoundException -> 0x00ae, IOException -> 0x00cc, all -> 0x00ea }
            java.util.UUID r2 = r9.a     // Catch:{ FileNotFoundException -> 0x00ae, IOException -> 0x00cc, all -> 0x00ea }
            java.lang.StringBuilder r2 = r0.append(r2)     // Catch:{ FileNotFoundException -> 0x00ae, IOException -> 0x00cc, all -> 0x00ea }
            boolean r0 = r9.d     // Catch:{ FileNotFoundException -> 0x00ae, IOException -> 0x00cc, all -> 0x00ea }
            if (r0 == 0) goto L_0x00a0
            java.lang.String r0 = ".opus.pcm"
        L_0x0064:
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch:{ FileNotFoundException -> 0x00ae, IOException -> 0x00cc, all -> 0x00ea }
            java.lang.String r2 = r0.toString()     // Catch:{ FileNotFoundException -> 0x00ae, IOException -> 0x00cc, all -> 0x00ea }
            java.lang.String r0 = "file:%s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ FileNotFoundException -> 0x0110, IOException -> 0x0109, all -> 0x00fd }
            r4 = 0
            r3[r4] = r2     // Catch:{ FileNotFoundException -> 0x0110, IOException -> 0x0109, all -> 0x00fd }
            com.shenma.speechrecognition.aa.a(r0, r3)     // Catch:{ FileNotFoundException -> 0x0110, IOException -> 0x0109, all -> 0x00fd }
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch:{ FileNotFoundException -> 0x0110, IOException -> 0x0109, all -> 0x00fd }
            r3.<init>(r2)     // Catch:{ FileNotFoundException -> 0x0110, IOException -> 0x0109, all -> 0x00fd }
            org.apache.http.util.ByteArrayBuffer r0 = r9.e     // Catch:{ FileNotFoundException -> 0x0115, IOException -> 0x010d, all -> 0x0101 }
            byte[] r0 = r0.buffer()     // Catch:{ FileNotFoundException -> 0x0115, IOException -> 0x010d, all -> 0x0101 }
            r1 = 0
            org.apache.http.util.ByteArrayBuffer r4 = r9.e     // Catch:{ FileNotFoundException -> 0x0115, IOException -> 0x010d, all -> 0x0101 }
            int r4 = r4.length()     // Catch:{ FileNotFoundException -> 0x0115, IOException -> 0x010d, all -> 0x0101 }
            r3.write(r0, r1, r4)     // Catch:{ FileNotFoundException -> 0x0115, IOException -> 0x010d, all -> 0x0101 }
            if (r3 == 0) goto L_0x0091
            r3.close()     // Catch:{ IOException -> 0x00a3 }
        L_0x0091:
            java.lang.String r0 = "OutputDebugger finishes collecting %d-th packet."
            java.lang.Object[] r1 = new java.lang.Object[r7]
            java.lang.Integer r2 = java.lang.Integer.valueOf(r12)
            r1[r6] = r2
            com.shenma.speechrecognition.aa.a(r0, r1)
            goto L_0x001b
        L_0x00a0:
            java.lang.String r0 = ".pcm"
            goto L_0x0064
        L_0x00a3:
            r0 = move-exception
            java.lang.String r1 = "file %s close io exception."
            java.lang.Object[] r3 = new java.lang.Object[r7]
            r3[r6] = r2
            com.shenma.speechrecognition.aa.a(r0, r1, r3)
            goto L_0x0091
        L_0x00ae:
            r0 = move-exception
            r2 = r1
        L_0x00b0:
            java.lang.String r3 = "file %s not found."
            r4 = 1
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ all -> 0x0104 }
            r5 = 0
            r4[r5] = r1     // Catch:{ all -> 0x0104 }
            com.shenma.speechrecognition.aa.a(r0, r3, r4)     // Catch:{ all -> 0x0104 }
            if (r2 == 0) goto L_0x0091
            r2.close()     // Catch:{ IOException -> 0x00c1 }
            goto L_0x0091
        L_0x00c1:
            r0 = move-exception
            java.lang.String r2 = "file %s close io exception."
            java.lang.Object[] r3 = new java.lang.Object[r7]
            r3[r6] = r1
            com.shenma.speechrecognition.aa.a(r0, r2, r3)
            goto L_0x0091
        L_0x00cc:
            r0 = move-exception
            r3 = r1
        L_0x00ce:
            java.lang.String r2 = "file %s io exception."
            r4 = 1
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ all -> 0x0107 }
            r5 = 0
            r4[r5] = r1     // Catch:{ all -> 0x0107 }
            com.shenma.speechrecognition.aa.a(r0, r2, r4)     // Catch:{ all -> 0x0107 }
            if (r3 == 0) goto L_0x0091
            r3.close()     // Catch:{ IOException -> 0x00df }
            goto L_0x0091
        L_0x00df:
            r0 = move-exception
            java.lang.String r2 = "file %s close io exception."
            java.lang.Object[] r3 = new java.lang.Object[r7]
            r3[r6] = r1
            com.shenma.speechrecognition.aa.a(r0, r2, r3)
            goto L_0x0091
        L_0x00ea:
            r0 = move-exception
            r3 = r1
        L_0x00ec:
            if (r3 == 0) goto L_0x00f1
            r3.close()     // Catch:{ IOException -> 0x00f2 }
        L_0x00f1:
            throw r0
        L_0x00f2:
            r2 = move-exception
            java.lang.String r3 = "file %s close io exception."
            java.lang.Object[] r4 = new java.lang.Object[r7]
            r4[r6] = r1
            com.shenma.speechrecognition.aa.a(r2, r3, r4)
            goto L_0x00f1
        L_0x00fd:
            r0 = move-exception
            r3 = r1
            r1 = r2
            goto L_0x00ec
        L_0x0101:
            r0 = move-exception
            r1 = r2
            goto L_0x00ec
        L_0x0104:
            r0 = move-exception
            r3 = r2
            goto L_0x00ec
        L_0x0107:
            r0 = move-exception
            goto L_0x00ec
        L_0x0109:
            r0 = move-exception
            r3 = r1
            r1 = r2
            goto L_0x00ce
        L_0x010d:
            r0 = move-exception
            r1 = r2
            goto L_0x00ce
        L_0x0110:
            r0 = move-exception
            r8 = r2
            r2 = r1
            r1 = r8
            goto L_0x00b0
        L_0x0115:
            r0 = move-exception
            r1 = r2
            r2 = r3
            goto L_0x00b0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shenma.speechrecognition.ab.a(byte[], int, int):void");
    }

    public void b() {
        this.e.clear();
    }
}
