package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.Map;

/* compiled from: SDKCoordinatorDownload */
public class fw extends Thread implements com.amap.api.mapcore.util.hr.a {
    private static String h = "sodownload";
    private static String i = "sofail";
    private hr a = new hr(this.b);
    private a b;
    private RandomAccessFile c;
    private String d;
    private String e;
    private String f;
    private Context g;

    /* compiled from: SDKCoordinatorDownload */
    private static class a extends hv {
        private String a;

        a(String str) {
            this.a = str;
        }

        public Map<String, String> a() {
            return null;
        }

        public Map<String, String> b() {
            return null;
        }

        public String c() {
            return this.a;
        }
    }

    public fw(Context context, String str, String str2, String str3) {
        this.g = context;
        this.f = str3;
        this.d = a(context, str + "temp.so");
        this.e = a(context, "libwgs2gcj.so");
        this.b = new a(str2);
    }

    public static String a(Context context, String str) {
        return context.getFilesDir().getAbsolutePath() + File.separator + "libso" + File.separator + str;
    }

    private static String b(Context context, String str) {
        return a(context, str);
    }

    public void a() {
        if (this.b != null && !TextUtils.isEmpty(this.b.c()) && this.b.c().contains("libJni_wgs2gcj.so") && this.b.c().contains(fy.a(this.g)) && !new File(this.e).exists()) {
            start();
        }
    }

    public void run() {
        try {
            File file = new File(b(this.g, "tempfile"));
            if (file.exists()) {
                file.delete();
            }
            this.a.a(this);
        } catch (Throwable th) {
            gc.a(th, "sdl", "run");
            b();
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(byte[] r5, long r6) {
        /*
            r4 = this;
            java.io.RandomAccessFile r0 = r4.c     // Catch:{ Throwable -> 0x0032 }
            if (r0 != 0) goto L_0x0021
            java.io.File r0 = new java.io.File     // Catch:{ Throwable -> 0x0032 }
            java.lang.String r1 = r4.d     // Catch:{ Throwable -> 0x0032 }
            r0.<init>(r1)     // Catch:{ Throwable -> 0x0032 }
            java.io.File r1 = r0.getParentFile()     // Catch:{ Throwable -> 0x0032 }
            boolean r2 = r1.exists()     // Catch:{ Throwable -> 0x0032 }
            if (r2 != 0) goto L_0x0018
            r1.mkdirs()     // Catch:{ Throwable -> 0x0032 }
        L_0x0018:
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch:{ FileNotFoundException -> 0x0026 }
            java.lang.String r2 = "rw"
            r1.<init>(r0, r2)     // Catch:{ FileNotFoundException -> 0x0026 }
            r4.c = r1     // Catch:{ FileNotFoundException -> 0x0026 }
        L_0x0021:
            java.io.RandomAccessFile r0 = r4.c     // Catch:{ Throwable -> 0x0032 }
            if (r0 != 0) goto L_0x003e
        L_0x0025:
            return
        L_0x0026:
            r0 = move-exception
            java.lang.String r1 = "sdl"
            java.lang.String r2 = "oDd"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0032 }
            r4.b()     // Catch:{ Throwable -> 0x0032 }
            goto L_0x0021
        L_0x0032:
            r0 = move-exception
            r4.b()
            java.lang.String r1 = "sdl"
            java.lang.String r2 = "oDd"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)
            goto L_0x0025
        L_0x003e:
            java.io.RandomAccessFile r0 = r4.c     // Catch:{ IOException -> 0x0049 }
            r0.seek(r6)     // Catch:{ IOException -> 0x0049 }
            java.io.RandomAccessFile r0 = r4.c     // Catch:{ IOException -> 0x0049 }
            r0.write(r5)     // Catch:{ IOException -> 0x0049 }
            goto L_0x0025
        L_0x0049:
            r0 = move-exception
            r4.b()     // Catch:{ Throwable -> 0x0032 }
            java.lang.String r1 = "sdl"
            java.lang.String r2 = "oDd"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)     // Catch:{ Throwable -> 0x0032 }
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fw.a(byte[], long):void");
    }

    public void d() {
        b();
    }

    public void e() {
        try {
            if (this.c != null) {
                this.c.close();
            }
            String a2 = fu.a(this.d);
            if (a2 == null || !a2.equalsIgnoreCase(this.f)) {
                b();
            } else if (new File(this.e).exists()) {
                b();
            } else {
                new File(this.d).renameTo(new File(this.e));
            }
        } catch (Throwable th) {
            b();
            File file = new File(this.e);
            if (file.exists()) {
                file.delete();
            }
            gc.a(th, "sdl", "ofs");
        }
    }

    public void a(Throwable th) {
        try {
            if (this.c != null) {
                this.c.close();
            }
            b();
            File file = new File(b(this.g, "tempfile"));
            if (!file.exists()) {
                File parentFile = file.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdir();
                }
                file.createNewFile();
            }
        } catch (Throwable th2) {
            gc.a(th2, "sdl", "oe");
        }
    }

    private void b() {
        File file = new File(this.d);
        if (file.exists()) {
            file.delete();
        }
    }
}
