package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.Map;

@Deprecated
/* compiled from: SDKCoordinatorDownload */
public class by extends Thread implements com.amap.api.col.sl.dp.a {
    private static String h = "sodownload";
    private static String i = "sofail";
    protected a a;
    protected RandomAccessFile b;
    protected String c;
    protected String d;
    protected String e;
    protected Context f;
    private dp g = new dp(this.a);

    /* compiled from: SDKCoordinatorDownload */
    public static class a extends ds {
        private String a;

        a(String str) {
            this.a = str;
        }

        public final Map<String, String> c() {
            return null;
        }

        public final Map<String, String> b() {
            return null;
        }

        public final String f() {
            return this.a;
        }
    }

    public by(Context context, String str, String str2, String str3) {
        this.f = context;
        this.e = str3;
        this.c = a(context, str + "temp.so");
        this.d = a(context, "libwgs2gcj.so");
        this.a = new a(str2);
    }

    public static String a(Context context, String str) {
        return context.getFilesDir().getAbsolutePath() + File.separator + "libso" + File.separator + str;
    }

    public void a() {
        if (this.a != null && !TextUtils.isEmpty(this.a.f()) && this.a.f().contains("libJni_wgs2gcj.so") && this.a.f().contains(ca.a(this.f)) && !new File(this.d).exists()) {
            start();
        }
    }

    public void run() {
        try {
            File file = new File(a(this.f, "tempfile"));
            if (file.exists()) {
                file.delete();
            }
            this.g.a(this);
        } catch (Throwable th) {
            cm.c(th, "sdl", "run");
            e();
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(byte[] r5, long r6) {
        /*
            r4 = this;
            java.io.RandomAccessFile r0 = r4.b     // Catch:{ Throwable -> 0x0032 }
            if (r0 != 0) goto L_0x0021
            java.io.File r0 = new java.io.File     // Catch:{ Throwable -> 0x0032 }
            java.lang.String r1 = r4.c     // Catch:{ Throwable -> 0x0032 }
            r0.<init>(r1)     // Catch:{ Throwable -> 0x0032 }
            java.io.File r1 = r0.getParentFile()     // Catch:{ Throwable -> 0x0032 }
            boolean r2 = r1.exists()     // Catch:{ Throwable -> 0x0032 }
            if (r2 != 0) goto L_0x0018
            r1.mkdirs()     // Catch:{ Throwable -> 0x0032 }
        L_0x0018:
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch:{ FileNotFoundException -> 0x0026 }
            java.lang.String r2 = "rw"
            r1.<init>(r0, r2)     // Catch:{ FileNotFoundException -> 0x0026 }
            r4.b = r1     // Catch:{ FileNotFoundException -> 0x0026 }
        L_0x0021:
            java.io.RandomAccessFile r0 = r4.b     // Catch:{ Throwable -> 0x0032 }
            if (r0 != 0) goto L_0x003e
        L_0x0025:
            return
        L_0x0026:
            r0 = move-exception
            java.lang.String r1 = "sdl"
            java.lang.String r2 = "oDd"
            com.amap.api.col.sl.cm.c(r0, r1, r2)     // Catch:{ Throwable -> 0x0032 }
            r4.e()     // Catch:{ Throwable -> 0x0032 }
            goto L_0x0021
        L_0x0032:
            r0 = move-exception
            r4.e()
            java.lang.String r1 = "sdl"
            java.lang.String r2 = "oDd"
            com.amap.api.col.sl.cm.c(r0, r1, r2)
            goto L_0x0025
        L_0x003e:
            java.io.RandomAccessFile r0 = r4.b     // Catch:{ IOException -> 0x0049 }
            r0.seek(r6)     // Catch:{ IOException -> 0x0049 }
            java.io.RandomAccessFile r0 = r4.b     // Catch:{ IOException -> 0x0049 }
            r0.write(r5)     // Catch:{ IOException -> 0x0049 }
            goto L_0x0025
        L_0x0049:
            r0 = move-exception
            r4.e()     // Catch:{ Throwable -> 0x0032 }
            java.lang.String r1 = "sdl"
            java.lang.String r2 = "oDd"
            com.amap.api.col.sl.cm.c(r0, r1, r2)     // Catch:{ Throwable -> 0x0032 }
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.by.a(byte[], long):void");
    }

    public final void c() {
        e();
    }

    public void b() {
        try {
            if (this.b != null) {
                this.b.close();
            }
            String a2 = bw.a(this.c);
            if (a2 == null || !a2.equalsIgnoreCase(this.e)) {
                e();
            } else if (new File(this.d).exists()) {
                e();
            } else {
                new File(this.c).renameTo(new File(this.d));
            }
        } catch (Throwable th) {
            e();
            File file = new File(this.d);
            if (file.exists()) {
                file.delete();
            }
            cm.c(th, "sdl", "ofs");
        }
    }

    public final void d() {
        try {
            if (this.b != null) {
                this.b.close();
            }
            e();
            File file = new File(a(this.f, "tempfile"));
            if (!file.exists()) {
                File parentFile = file.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdir();
                }
                file.createNewFile();
            }
        } catch (Throwable th) {
            cm.c(th, "sdl", "oe");
        }
    }

    /* access modifiers changed from: protected */
    public final void e() {
        File file = new File(this.c);
        if (file.exists()) {
            file.delete();
        }
    }
}
