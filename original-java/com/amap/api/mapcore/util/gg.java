package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Looper;

/* compiled from: AnrLogProcessor */
public class gg extends gj {
    private static boolean b = true;
    private String[] c = new String[10];
    private int d = 0;
    private boolean e = false;
    private int f = 0;

    protected gg(int i) {
        super(i);
    }

    /* access modifiers changed from: protected */
    public boolean a(Context context) {
        if (fs.p(context) != 1 || !b) {
            return false;
        }
        b = false;
        synchronized (Looper.getMainLooper()) {
            gw gwVar = new gw(context);
            gx a = gwVar.a();
            if (a == null) {
                return true;
            }
            if (!a.c()) {
                return false;
            }
            a.c(false);
            gwVar.a(a);
            return true;
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x006f  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00ba A[SYNTHETIC, Splitter:B:59:0x00ba] */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x00bf A[SYNTHETIC, Splitter:B:62:0x00bf] */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x00d8 A[SYNTHETIC, Splitter:B:73:0x00d8] */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x00dd A[SYNTHETIC, Splitter:B:76:0x00dd] */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x00ec A[SYNTHETIC, Splitter:B:83:0x00ec] */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x00f1 A[SYNTHETIC, Splitter:B:86:0x00f1] */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x00f5  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x00fd A[SYNTHETIC, Splitter:B:93:0x00fd] */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x0102 A[SYNTHETIC, Splitter:B:96:0x0102] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String a(java.util.List<com.amap.api.mapcore.util.fx> r9) {
        /*
            r8 = this;
            r5 = 1024000(0xfa000, float:1.43493E-39)
            r1 = 0
            r0 = 0
            r2 = 0
            java.io.File r4 = new java.io.File     // Catch:{ FileNotFoundException -> 0x00f8, IOException -> 0x00ae, Throwable -> 0x00cc, all -> 0x00e7 }
            java.lang.String r3 = "/data/anr/traces.txt"
            r4.<init>(r3)     // Catch:{ FileNotFoundException -> 0x00f8, IOException -> 0x00ae, Throwable -> 0x00cc, all -> 0x00e7 }
            boolean r3 = r4.exists()     // Catch:{ FileNotFoundException -> 0x00f8, IOException -> 0x00ae, Throwable -> 0x00cc, all -> 0x00e7 }
            if (r3 != 0) goto L_0x001f
            if (r1 == 0) goto L_0x0018
            r2.close()     // Catch:{ IOException -> 0x0181, Throwable -> 0x018b }
        L_0x0018:
            if (r1 == 0) goto L_0x001d
            r0.close()     // Catch:{ IOException -> 0x0195, Throwable -> 0x019f }
        L_0x001d:
            r0 = r1
        L_0x001e:
            return r0
        L_0x001f:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ FileNotFoundException -> 0x00f8, IOException -> 0x00ae, Throwable -> 0x00cc, all -> 0x00e7 }
            r3.<init>(r4)     // Catch:{ FileNotFoundException -> 0x00f8, IOException -> 0x00ae, Throwable -> 0x00cc, all -> 0x00e7 }
            int r0 = r3.available()     // Catch:{ FileNotFoundException -> 0x01e0, IOException -> 0x01d9, Throwable -> 0x01d2, all -> 0x01cb }
            if (r0 <= r5) goto L_0x002f
            int r0 = r0 - r5
            long r4 = (long) r0     // Catch:{ FileNotFoundException -> 0x01e0, IOException -> 0x01d9, Throwable -> 0x01d2, all -> 0x01cb }
            r3.skip(r4)     // Catch:{ FileNotFoundException -> 0x01e0, IOException -> 0x01d9, Throwable -> 0x01d2, all -> 0x01cb }
        L_0x002f:
            com.amap.api.mapcore.util.hm r2 = new com.amap.api.mapcore.util.hm     // Catch:{ FileNotFoundException -> 0x01e0, IOException -> 0x01d9, Throwable -> 0x01d2, all -> 0x01cb }
            java.nio.charset.Charset r0 = com.amap.api.mapcore.util.hn.a     // Catch:{ FileNotFoundException -> 0x01e0, IOException -> 0x01d9, Throwable -> 0x01d2, all -> 0x01cb }
            r2.<init>(r3, r0)     // Catch:{ FileNotFoundException -> 0x01e0, IOException -> 0x01d9, Throwable -> 0x01d2, all -> 0x01cb }
            r4 = 0
        L_0x0037:
            java.lang.String r0 = r2.a()     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            java.lang.String r0 = r0.trim()     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            java.lang.String r5 = "pid"
            boolean r5 = r0.contains(r5)     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            if (r5 == 0) goto L_0x01ea
        L_0x0047:
            java.lang.String r4 = "\"main\""
            boolean r4 = r0.startsWith(r4)     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            if (r4 != 0) goto L_0x0054
            java.lang.String r0 = r2.a()     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            goto L_0x0047
        L_0x0054:
            r4 = 1
            r5 = r4
            r4 = r0
        L_0x0057:
            java.lang.String r0 = ""
            boolean r0 = r4.equals(r0)     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            if (r0 == 0) goto L_0x0074
            if (r5 == 0) goto L_0x0074
        L_0x0061:
            if (r2 == 0) goto L_0x0066
            r2.close()     // Catch:{ IOException -> 0x01a9, Throwable -> 0x01b3 }
        L_0x0066:
            if (r3 == 0) goto L_0x006b
            r3.close()     // Catch:{ IOException -> 0x01bd, Throwable -> 0x01c4 }
        L_0x006b:
            boolean r0 = r8.e
            if (r0 == 0) goto L_0x00f5
            java.lang.String r0 = r8.e()
            goto L_0x001e
        L_0x0074:
            if (r5 == 0) goto L_0x00a3
            r8.c(r4)     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            int r0 = r8.f     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            r6 = 5
            if (r0 == r6) goto L_0x0061
            boolean r0 = r8.e     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            if (r0 != 0) goto L_0x00a5
            java.util.Iterator r6 = r9.iterator()     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
        L_0x0086:
            boolean r0 = r6.hasNext()     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            if (r0 == 0) goto L_0x00a3
            java.lang.Object r0 = r6.next()     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            com.amap.api.mapcore.util.fx r0 = (com.amap.api.mapcore.util.fx) r0     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            java.lang.String[] r7 = r0.g()     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            boolean r7 = b(r7, r4)     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            r8.e = r7     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            boolean r7 = r8.e     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            if (r7 == 0) goto L_0x0086
            r8.a(r0)     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
        L_0x00a3:
            r4 = r5
            goto L_0x0037
        L_0x00a5:
            int r0 = r8.f     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            int r0 = r0 + 1
            r8.f = r0     // Catch:{ EOFException -> 0x00ac, FileNotFoundException -> 0x01e5, IOException -> 0x01dd, Throwable -> 0x01d6 }
            goto L_0x00a3
        L_0x00ac:
            r0 = move-exception
            goto L_0x0061
        L_0x00ae:
            r0 = move-exception
            r2 = r1
            r3 = r1
        L_0x00b1:
            java.lang.String r4 = "alg"
            java.lang.String r5 = "getA"
            com.amap.api.mapcore.util.gc.a(r0, r4, r5)     // Catch:{ all -> 0x01cf }
            if (r2 == 0) goto L_0x00bd
            r2.close()     // Catch:{ IOException -> 0x014d, Throwable -> 0x0157 }
        L_0x00bd:
            if (r3 == 0) goto L_0x006b
            r3.close()     // Catch:{ IOException -> 0x00c3, Throwable -> 0x0161 }
            goto L_0x006b
        L_0x00c3:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
        L_0x00c8:
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)
            goto L_0x006b
        L_0x00cc:
            r0 = move-exception
            r2 = r1
            r3 = r1
        L_0x00cf:
            java.lang.String r4 = "alg"
            java.lang.String r5 = "getA"
            com.amap.api.mapcore.util.gc.a(r0, r4, r5)     // Catch:{ all -> 0x01cf }
            if (r2 == 0) goto L_0x00db
            r2.close()     // Catch:{ IOException -> 0x0167, Throwable -> 0x0171 }
        L_0x00db:
            if (r3 == 0) goto L_0x006b
            r3.close()     // Catch:{ IOException -> 0x00e1, Throwable -> 0x017b }
            goto L_0x006b
        L_0x00e1:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            goto L_0x00c8
        L_0x00e7:
            r0 = move-exception
            r2 = r1
            r3 = r1
        L_0x00ea:
            if (r2 == 0) goto L_0x00ef
            r2.close()     // Catch:{ IOException -> 0x0129, Throwable -> 0x0132 }
        L_0x00ef:
            if (r3 == 0) goto L_0x00f4
            r3.close()     // Catch:{ IOException -> 0x013b, Throwable -> 0x0144 }
        L_0x00f4:
            throw r0
        L_0x00f5:
            r0 = r1
            goto L_0x001e
        L_0x00f8:
            r0 = move-exception
            r0 = r1
            r2 = r1
        L_0x00fb:
            if (r0 == 0) goto L_0x0100
            r0.close()     // Catch:{ IOException -> 0x010d, Throwable -> 0x0116 }
        L_0x0100:
            if (r2 == 0) goto L_0x006b
            r2.close()     // Catch:{ IOException -> 0x0107, Throwable -> 0x011f }
            goto L_0x006b
        L_0x0107:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            goto L_0x00c8
        L_0x010d:
            r0 = move-exception
            java.lang.String r3 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.mapcore.util.gc.a(r0, r3, r4)
            goto L_0x0100
        L_0x0116:
            r0 = move-exception
            java.lang.String r3 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.mapcore.util.gc.a(r0, r3, r4)
            goto L_0x0100
        L_0x011f:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
        L_0x0124:
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)
            goto L_0x006b
        L_0x0129:
            r1 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.mapcore.util.gc.a(r1, r2, r4)
            goto L_0x00ef
        L_0x0132:
            r1 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.mapcore.util.gc.a(r1, r2, r4)
            goto L_0x00ef
        L_0x013b:
            r1 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)
            goto L_0x00f4
        L_0x0144:
            r1 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)
            goto L_0x00f4
        L_0x014d:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.mapcore.util.gc.a(r0, r2, r4)
            goto L_0x00bd
        L_0x0157:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.mapcore.util.gc.a(r0, r2, r4)
            goto L_0x00bd
        L_0x0161:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            goto L_0x0124
        L_0x0167:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.mapcore.util.gc.a(r0, r2, r4)
            goto L_0x00db
        L_0x0171:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.mapcore.util.gc.a(r0, r2, r4)
            goto L_0x00db
        L_0x017b:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            goto L_0x0124
        L_0x0181:
            r2 = move-exception
            java.lang.String r3 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.mapcore.util.gc.a(r2, r3, r4)
            goto L_0x0018
        L_0x018b:
            r2 = move-exception
            java.lang.String r3 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.mapcore.util.gc.a(r2, r3, r4)
            goto L_0x0018
        L_0x0195:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)
            goto L_0x001d
        L_0x019f:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)
            goto L_0x001d
        L_0x01a9:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.mapcore.util.gc.a(r0, r2, r4)
            goto L_0x0066
        L_0x01b3:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r4 = "getA"
            com.amap.api.mapcore.util.gc.a(r0, r2, r4)
            goto L_0x0066
        L_0x01bd:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            goto L_0x00c8
        L_0x01c4:
            r0 = move-exception
            java.lang.String r2 = "alg"
            java.lang.String r3 = "getA"
            goto L_0x0124
        L_0x01cb:
            r0 = move-exception
            r2 = r1
            goto L_0x00ea
        L_0x01cf:
            r0 = move-exception
            goto L_0x00ea
        L_0x01d2:
            r0 = move-exception
            r2 = r1
            goto L_0x00cf
        L_0x01d6:
            r0 = move-exception
            goto L_0x00cf
        L_0x01d9:
            r0 = move-exception
            r2 = r1
            goto L_0x00b1
        L_0x01dd:
            r0 = move-exception
            goto L_0x00b1
        L_0x01e0:
            r0 = move-exception
            r0 = r1
            r2 = r3
            goto L_0x00fb
        L_0x01e5:
            r0 = move-exception
            r0 = r2
            r2 = r3
            goto L_0x00fb
        L_0x01ea:
            r5 = r4
            r4 = r0
            goto L_0x0057
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.gg.a(java.util.List):java.lang.String");
    }

    private String e() {
        StringBuilder sb = new StringBuilder();
        try {
            int i = this.d;
            while (i < 10 && i <= 9) {
                sb.append(this.c[i]);
                i++;
            }
            for (int i2 = 0; i2 < this.d; i2++) {
                sb.append(this.c[i2]);
            }
        } catch (Throwable th) {
            gc.a(th, "alg", "gLI");
        }
        return sb.toString();
    }

    private void c(String str) {
        try {
            if (this.d > 9) {
                this.d = 0;
            }
            this.c[this.d] = str;
            this.d++;
        } catch (Throwable th) {
            gc.a(th, "alg", "aDa");
        }
    }
}
