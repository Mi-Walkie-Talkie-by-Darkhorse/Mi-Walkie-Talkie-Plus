package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import com.xiaomi.channel.commonutils.logger.b;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class hr {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f9051a = false;

    /* loaded from: classes2.dex */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private Context f9052a;

        /* renamed from: a  reason: collision with other field name */
        private hu f483a;

        public a(Context context, hu huVar) {
            this.f483a = huVar;
            this.f9052a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            hr.c(this.f9052a, this.f483a);
        }
    }

    private static void a(Context context) {
        File file = new File(context.getFilesDir() + "/tdReadTemp");
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    public static void a(Context context, hu huVar) {
        ak.a(context).a(new a(context, huVar));
    }

    private static void a(Context context, hu huVar, File file, byte[] bArr) {
        Throwable th;
        Exception e;
        String str;
        int a2;
        ArrayList arrayList = new ArrayList();
        byte[] bArr2 = new byte[4];
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
                loop0: while (true) {
                    int i = 0;
                    int i2 = 0;
                    while (true) {
                        try {
                            int read = bufferedInputStream2.read(bArr2);
                            if (read != -1) {
                                if (read == 4) {
                                    a2 = ae.a(bArr2);
                                    if (a2 < 1 || a2 > 10240) {
                                        break loop0;
                                    }
                                    byte[] bArr3 = new byte[a2];
                                    int read2 = bufferedInputStream2.read(bArr3);
                                    if (read2 != a2) {
                                        str = "TinyData read from cache file failed cause buffer size not equal length. size:" + read2 + "__length:" + a2;
                                        break loop0;
                                    }
                                    byte[] a3 = h.a(bArr, bArr3);
                                    if (!(a3 == null || a3.length == 0)) {
                                        hz hzVar = new hz();
                                        jf.a(hzVar, a3);
                                        hzVar.a("item_size", String.valueOf(a3.length));
                                        arrayList.add(hzVar);
                                        i++;
                                        i2 += a3.length;
                                        if (i >= 8 || i2 >= 10240) {
                                        }
                                    }
                                    b.d("TinyData read from cache file failed cause decrypt fail");
                                } else {
                                    str = "TinyData read from cache file failed cause lengthBuffer error. size:" + read;
                                    break loop0;
                                }
                            } else {
                                break loop0;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            bufferedInputStream = bufferedInputStream2;
                            b.a(e);
                            aa.a(bufferedInputStream);
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedInputStream = bufferedInputStream2;
                            aa.a(bufferedInputStream);
                            throw th;
                        }
                    }
                    hs.a(context, huVar, arrayList);
                    arrayList.clear();
                }
                str = "TinyData read from cache file failed cause lengthBuffer < 1 || too big. length:" + a2;
                b.d(str);
                hs.a(context, huVar, arrayList);
                if (file != null && file.exists() && !file.delete()) {
                    b.m1a("TinyData delete reading temp file failed");
                }
                aa.a(bufferedInputStream2);
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static void b(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 4).edit();
        edit.putLong("last_tiny_data_upload_timestamp", System.currentTimeMillis() / 1000);
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void c(android.content.Context r11, com.xiaomi.push.hu r12) {
        /*
            java.lang.String r0 = "/"
            java.lang.String r1 = "/tdReadTemp"
            boolean r2 = com.xiaomi.push.hr.f9051a
            if (r2 != 0) goto L_0x00dd
            r2 = 1
            com.xiaomi.push.hr.f9051a = r2
            java.io.File r2 = new java.io.File
            java.io.File r3 = r11.getFilesDir()
            java.lang.String r4 = "tiny_data.data"
            r2.<init>(r3, r4)
            boolean r3 = r2.exists()
            java.lang.String r5 = "TinyData no ready file to get data."
            if (r3 != 0) goto L_0x0022
            com.xiaomi.channel.commonutils.logger.b.m1a(r5)
            return
        L_0x0022:
            a(r11)
            byte[] r3 = com.xiaomi.push.service.bx.a(r11)
            r6 = 0
            java.io.File r7 = new java.io.File     // Catch: all -> 0x0078, Exception -> 0x007b
            java.io.File r8 = r11.getFilesDir()     // Catch: all -> 0x0078, Exception -> 0x007b
            java.lang.String r9 = "tiny_data.lock"
            r7.<init>(r8, r9)     // Catch: all -> 0x0078, Exception -> 0x007b
            com.xiaomi.push.aa.m65a(r7)     // Catch: all -> 0x0078, Exception -> 0x007b
            java.io.RandomAccessFile r8 = new java.io.RandomAccessFile     // Catch: all -> 0x0078, Exception -> 0x007b
            java.lang.String r9 = "rw"
            r8.<init>(r7, r9)     // Catch: all -> 0x0078, Exception -> 0x007b
            java.nio.channels.FileChannel r7 = r8.getChannel()     // Catch: Exception -> 0x0076, all -> 0x00c8
            java.nio.channels.FileLock r6 = r7.lock()     // Catch: Exception -> 0x0076, all -> 0x00c8
            java.io.File r7 = new java.io.File     // Catch: Exception -> 0x0076, all -> 0x00c8
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: Exception -> 0x0076, all -> 0x00c8
            r9.<init>()     // Catch: Exception -> 0x0076, all -> 0x00c8
            java.io.File r10 = r11.getFilesDir()     // Catch: Exception -> 0x0076, all -> 0x00c8
            r9.append(r10)     // Catch: Exception -> 0x0076, all -> 0x00c8
            r9.append(r1)     // Catch: Exception -> 0x0076, all -> 0x00c8
            r9.append(r0)     // Catch: Exception -> 0x0076, all -> 0x00c8
            r9.append(r4)     // Catch: Exception -> 0x0076, all -> 0x00c8
            java.lang.String r9 = r9.toString()     // Catch: Exception -> 0x0076, all -> 0x00c8
            r7.<init>(r9)     // Catch: Exception -> 0x0076, all -> 0x00c8
            r2.renameTo(r7)     // Catch: Exception -> 0x0076, all -> 0x00c8
            if (r6 == 0) goto L_0x0090
            boolean r2 = r6.isValid()
            if (r2 == 0) goto L_0x0090
            r6.release()     // Catch: IOException -> 0x0074
            goto L_0x0090
        L_0x0074:
            r2 = move-exception
            goto L_0x008d
        L_0x0076:
            r2 = move-exception
            goto L_0x007d
        L_0x0078:
            r11 = move-exception
            r8 = r6
            goto L_0x00c9
        L_0x007b:
            r2 = move-exception
            r8 = r6
        L_0x007d:
            com.xiaomi.channel.commonutils.logger.b.a(r2)     // Catch: all -> 0x00c8
            if (r6 == 0) goto L_0x0090
            boolean r2 = r6.isValid()
            if (r2 == 0) goto L_0x0090
            r6.release()     // Catch: IOException -> 0x008c
            goto L_0x0090
        L_0x008c:
            r2 = move-exception
        L_0x008d:
            com.xiaomi.channel.commonutils.logger.b.a(r2)
        L_0x0090:
            com.xiaomi.push.aa.a(r8)
            java.io.File r2 = new java.io.File
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.io.File r7 = r11.getFilesDir()
            r6.append(r7)
            r6.append(r1)
            r6.append(r0)
            r6.append(r4)
            java.lang.String r0 = r6.toString()
            r2.<init>(r0)
            boolean r0 = r2.exists()
            if (r0 != 0) goto L_0x00bb
            com.xiaomi.channel.commonutils.logger.b.m1a(r5)
            return
        L_0x00bb:
            a(r11, r12, r2, r3)
            r12 = 0
            com.xiaomi.push.hq.a(r12)
            b(r11)
            com.xiaomi.push.hr.f9051a = r12
            return
        L_0x00c8:
            r11 = move-exception
        L_0x00c9:
            if (r6 == 0) goto L_0x00d9
            boolean r12 = r6.isValid()
            if (r12 == 0) goto L_0x00d9
            r6.release()     // Catch: IOException -> 0x00d5
            goto L_0x00d9
        L_0x00d5:
            r12 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r12)
        L_0x00d9:
            com.xiaomi.push.aa.a(r8)
            throw r11
        L_0x00dd:
            java.lang.String r11 = "TinyData extractTinyData is running"
            com.xiaomi.channel.commonutils.logger.b.m1a(r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.hr.c(android.content.Context, com.xiaomi.push.hu):void");
    }
}
