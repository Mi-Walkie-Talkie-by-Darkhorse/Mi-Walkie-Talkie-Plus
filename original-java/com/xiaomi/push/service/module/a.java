package com.xiaomi.push.service.module;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.channel.commonutils.android.c;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.MiPushClient;
import java.io.File;
import junit.framework.Assert;

class a {
    private Context a;
    private String b;
    private String c;
    private int d = 0;
    private int e = 0;
    private int f = 0;
    private String g;
    private SharedPreferences h;

    public a(Context context, String str) {
        boolean z = false;
        this.a = context.getApplicationContext();
        this.b = str;
        this.h = this.a.getSharedPreferences(MiPushClient.PREF_EXTRA, 0);
        if (!TextUtils.isEmpty(this.b)) {
            z = true;
        }
        Assert.assertEquals(true, z);
    }

    public static String a(Context context, String str) {
        return b(context, str) + "/" + str + ".apk";
    }

    private String a(String str) {
        try {
            return this.a.getPackageManager().getPackageArchiveInfo(str, 16512).applicationInfo.metaData.getString("Launcher");
        } catch (Exception e2) {
            return null;
        }
    }

    private void a(int i) {
        this.h.edit().putInt(this.b + "_asset_app_version", i).commit();
    }

    private void a(long j) {
        this.h.edit().putLong(this.b + "_asset_modified", j).commit();
    }

    private static String b(Context context, String str) {
        return context.getDir(str, 0).getAbsolutePath();
    }

    private void b(int i) {
        this.h.edit().putInt(this.b + "_asset_version", i).commit();
    }

    private void b(long j) {
        this.h.edit().putLong(this.b + "_local_modified", j).commit();
    }

    private void b(String str) {
        this.h.edit().putString(this.b + "_asset_launcher", str).commit();
    }

    private void c(int i) {
        this.h.edit().putInt(this.b + "_local_version", i).commit();
    }

    private void c(String str) {
        this.h.edit().putString(this.b + "_local_launcher", str).commit();
    }

    private boolean g() {
        File file = new File(l());
        return file.exists() && (s() != file.lastModified() || q() == 0);
    }

    private boolean h() {
        File file = new File(d());
        return file.exists() && (t() == file.lastModified() || r() == 0);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        com.xiaomi.channel.commonutils.logger.b.d("no " + r7.b + ".apk file in assets of app");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0066, code lost:
        if (r1 != null) goto L_0x0068;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0068, code lost:
        r1 = r1.getParcelFileDescriptor();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x006d, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x006e, code lost:
        r6 = r2;
        r2 = r1;
        r1 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0076, code lost:
        r1 = r2.getParcelFileDescriptor();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0047 A[ExcHandler: FileNotFoundException (e java.io.FileNotFoundException), Splitter:B:3:0x0011] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0076  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x007e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean i() {
        /*
            r7 = this;
            r0 = 0
            java.io.File r2 = new java.io.File
            java.lang.String r1 = r7.l()
            r2.<init>(r1)
            boolean r1 = r2.exists()
            if (r1 == 0) goto L_0x0046
            r1 = 0
            android.content.Context r3 = r7.a     // Catch:{ FileNotFoundException -> 0x0047, Exception -> 0x006d }
            android.content.res.AssetManager r3 = r3.getAssets()     // Catch:{ FileNotFoundException -> 0x0047, Exception -> 0x006d }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ FileNotFoundException -> 0x0047, Exception -> 0x006d }
            r4.<init>()     // Catch:{ FileNotFoundException -> 0x0047, Exception -> 0x006d }
            java.lang.String r5 = r7.b     // Catch:{ FileNotFoundException -> 0x0047, Exception -> 0x006d }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ FileNotFoundException -> 0x0047, Exception -> 0x006d }
            java.lang.String r5 = ".apk"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ FileNotFoundException -> 0x0047, Exception -> 0x006d }
            java.lang.String r4 = r4.toString()     // Catch:{ FileNotFoundException -> 0x0047, Exception -> 0x006d }
            android.content.res.AssetFileDescriptor r1 = r3.openFd(r4)     // Catch:{ FileNotFoundException -> 0x0047, Exception -> 0x006d }
            long r4 = r1.getLength()     // Catch:{ FileNotFoundException -> 0x0047, Exception -> 0x0089 }
            long r2 = r2.length()     // Catch:{ FileNotFoundException -> 0x0047, Exception -> 0x0089 }
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 == 0) goto L_0x003d
            r0 = 1
        L_0x003d:
            if (r1 == 0) goto L_0x0046
            android.os.ParcelFileDescriptor r1 = r1.getParcelFileDescriptor()
        L_0x0043:
            com.xiaomi.channel.commonutils.file.a.a(r1)
        L_0x0046:
            return r0
        L_0x0047:
            r2 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x007b }
            r2.<init>()     // Catch:{ all -> 0x007b }
            java.lang.String r3 = "no "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x007b }
            java.lang.String r3 = r7.b     // Catch:{ all -> 0x007b }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x007b }
            java.lang.String r3 = ".apk file in assets of app"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x007b }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x007b }
            com.xiaomi.channel.commonutils.logger.b.d(r2)     // Catch:{ all -> 0x007b }
            if (r1 == 0) goto L_0x0046
            android.os.ParcelFileDescriptor r1 = r1.getParcelFileDescriptor()
            goto L_0x0043
        L_0x006d:
            r2 = move-exception
            r6 = r2
            r2 = r1
            r1 = r6
        L_0x0071:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x0086 }
            if (r2 == 0) goto L_0x0046
            android.os.ParcelFileDescriptor r1 = r2.getParcelFileDescriptor()
            goto L_0x0043
        L_0x007b:
            r0 = move-exception
        L_0x007c:
            if (r1 == 0) goto L_0x0085
            android.os.ParcelFileDescriptor r1 = r1.getParcelFileDescriptor()
            com.xiaomi.channel.commonutils.file.a.a(r1)
        L_0x0085:
            throw r0
        L_0x0086:
            r0 = move-exception
            r1 = r2
            goto L_0x007c
        L_0x0089:
            r2 = move-exception
            r6 = r2
            r2 = r1
            r1 = r6
            goto L_0x0071
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.module.a.i():boolean");
    }

    private void j() {
        String str;
        try {
            b.b("copyAssetFile start");
            String[] list = this.a.getAssets().list("");
            if (list != null) {
                int length = list.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    String str2 = list[i];
                    if (!TextUtils.isEmpty(str2) && str2.startsWith(this.b)) {
                        c.a(this.a, str2, l());
                        str = "copyAssetFile end";
                        break;
                    }
                    i++;
                }
                b.b(str);
            }
            str = "copyAssetFile end";
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
            str = "copyAssetFile end";
        } catch (Throwable th) {
            b.b("copyAssetFile end");
            throw th;
        }
        b.b(str);
    }

    private String k() {
        return b(this.a, this.b);
    }

    private String l() {
        return k() + "/" + this.b + "_asset.apk";
    }

    private String m() {
        return k() + "/lib/";
    }

    private String n() {
        return k() + "/asset_lib/";
    }

    private boolean o() {
        try {
            return p() != com.xiaomi.channel.commonutils.android.b.b(this.a, this.a.getPackageName());
        } catch (Exception e2) {
            return true;
        }
    }

    private int p() {
        boolean z = false;
        try {
            return this.h.getInt(this.b + "_asset_app_version", 0);
        } catch (Exception e2) {
            return z;
        }
    }

    private int q() {
        boolean z = false;
        try {
            return this.h.getInt(this.b + "_asset_version", 0);
        } catch (Exception e2) {
            return z;
        }
    }

    private int r() {
        boolean z = false;
        try {
            return this.h.getInt(this.b + "_local_version", 0);
        } catch (Exception e2) {
            return z;
        }
    }

    private long s() {
        long j = 0;
        try {
            return this.h.getLong(this.b + "_asset_modified", 0);
        } catch (Exception e2) {
            return j;
        }
    }

    private long t() {
        long j = 0;
        try {
            return this.h.getLong(this.b + "_local_modified", 0);
        } catch (Exception e2) {
            return j;
        }
    }

    private String u() {
        boolean z = false;
        try {
            return this.h.getString(this.b + "_asset_launcher", null);
        } catch (Exception e2) {
            return z;
        }
    }

    private String v() {
        boolean z = false;
        try {
            return this.h.getString(this.b + "_local_launcher", null);
        } catch (Exception e2) {
            return z;
        }
    }

    public int a() {
        return this.d;
    }

    public String b() {
        return this.g;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x00a5 A[Catch:{ Exception -> 0x0184, all -> 0x022e }] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00f5 A[Catch:{ Exception -> 0x0184, all -> 0x022e }] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x01b3 A[SYNTHETIC, Splitter:B:47:0x01b3] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized dalvik.system.DexClassLoader c() {
        /*
            r7 = this;
            r0 = 1
            r1 = 0
            monitor-enter(r7)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0184 }
            r2.<init>()     // Catch:{ Exception -> 0x0184 }
            java.lang.String r3 = "load apk "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Exception -> 0x0184 }
            java.lang.String r3 = r7.b     // Catch:{ Exception -> 0x0184 }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Exception -> 0x0184 }
            java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x0184 }
            com.xiaomi.channel.commonutils.logger.b.b(r2)     // Catch:{ Exception -> 0x0184 }
            java.lang.String r2 = r7.l()     // Catch:{ Exception -> 0x0184 }
            java.io.File r3 = new java.io.File     // Catch:{ Exception -> 0x0184 }
            r3.<init>(r2)     // Catch:{ Exception -> 0x0184 }
            boolean r4 = r7.i()     // Catch:{ Exception -> 0x0184 }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0184 }
            r5.<init>()     // Catch:{ Exception -> 0x0184 }
            java.lang.String r6 = "assert app size changed : "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ Exception -> 0x0184 }
            java.lang.StringBuilder r5 = r5.append(r4)     // Catch:{ Exception -> 0x0184 }
            java.lang.String r5 = r5.toString()     // Catch:{ Exception -> 0x0184 }
            com.xiaomi.channel.commonutils.logger.b.b(r5)     // Catch:{ Exception -> 0x0184 }
            boolean r5 = r3.exists()     // Catch:{ Exception -> 0x0184 }
            if (r5 == 0) goto L_0x004c
            if (r4 != 0) goto L_0x004c
            boolean r5 = r7.o()     // Catch:{ Exception -> 0x0184 }
            if (r5 == 0) goto L_0x0054
        L_0x004c:
            java.lang.String r5 = "re-copy asset file"
            com.xiaomi.channel.commonutils.logger.b.b(r5)     // Catch:{ Exception -> 0x0184 }
            r7.j()     // Catch:{ Exception -> 0x0184 }
        L_0x0054:
            boolean r5 = r3.exists()     // Catch:{ Exception -> 0x0184 }
            if (r5 == 0) goto L_0x0171
            java.lang.String r5 = "check modify."
            com.xiaomi.channel.commonutils.logger.b.b(r5)     // Catch:{ Exception -> 0x0184 }
            boolean r5 = r7.g()     // Catch:{ Exception -> 0x0184 }
            if (r5 != 0) goto L_0x006d
            if (r4 != 0) goto L_0x006d
            boolean r4 = r7.o()     // Catch:{ Exception -> 0x0184 }
            if (r4 == 0) goto L_0x0166
        L_0x006d:
            java.lang.String r4 = "modified."
            com.xiaomi.channel.commonutils.logger.b.b(r4)     // Catch:{ Exception -> 0x0184 }
            android.content.Context r4 = r7.a     // Catch:{ Exception -> 0x0184 }
            int r2 = com.xiaomi.channel.commonutils.android.b.c(r4, r2)     // Catch:{ Exception -> 0x0184 }
            r7.e = r2     // Catch:{ Exception -> 0x0184 }
            int r2 = r7.e     // Catch:{ Exception -> 0x0184 }
            r7.b(r2)     // Catch:{ Exception -> 0x0184 }
            android.content.Context r2 = r7.a     // Catch:{ Exception -> 0x0184 }
            android.content.Context r4 = r7.a     // Catch:{ Exception -> 0x0184 }
            java.lang.String r4 = r4.getPackageName()     // Catch:{ Exception -> 0x0184 }
            int r2 = com.xiaomi.channel.commonutils.android.b.b(r2, r4)     // Catch:{ Exception -> 0x0184 }
            r7.a(r2)     // Catch:{ Exception -> 0x0184 }
            long r2 = r3.lastModified()     // Catch:{ Exception -> 0x0184 }
            r7.a(r2)     // Catch:{ Exception -> 0x0184 }
            r2 = r0
        L_0x0096:
            java.lang.String r3 = r7.d()     // Catch:{ Exception -> 0x0184 }
            java.io.File r4 = new java.io.File     // Catch:{ Exception -> 0x0184 }
            r4.<init>(r3)     // Catch:{ Exception -> 0x0184 }
            boolean r5 = r4.exists()     // Catch:{ Exception -> 0x0184 }
            if (r5 == 0) goto L_0x017a
            boolean r5 = r7.h()     // Catch:{ Exception -> 0x0184 }
            if (r5 == 0) goto L_0x0174
            android.content.Context r1 = r7.a     // Catch:{ Exception -> 0x0184 }
            int r1 = com.xiaomi.channel.commonutils.android.b.c(r1, r3)     // Catch:{ Exception -> 0x0184 }
            r7.f = r1     // Catch:{ Exception -> 0x0184 }
            int r1 = r7.f     // Catch:{ Exception -> 0x0184 }
            r7.c(r1)     // Catch:{ Exception -> 0x0184 }
            long r4 = r4.lastModified()     // Catch:{ Exception -> 0x0184 }
            r7.b(r4)     // Catch:{ Exception -> 0x0184 }
        L_0x00bf:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0184 }
            r1.<init>()     // Catch:{ Exception -> 0x0184 }
            java.lang.String r3 = "asset version "
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ Exception -> 0x0184 }
            int r3 = r7.e     // Catch:{ Exception -> 0x0184 }
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ Exception -> 0x0184 }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x0184 }
            com.xiaomi.channel.commonutils.logger.b.b(r1)     // Catch:{ Exception -> 0x0184 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0184 }
            r1.<init>()     // Catch:{ Exception -> 0x0184 }
            java.lang.String r3 = "local version "
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ Exception -> 0x0184 }
            int r3 = r7.f     // Catch:{ Exception -> 0x0184 }
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ Exception -> 0x0184 }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x0184 }
            com.xiaomi.channel.commonutils.logger.b.b(r1)     // Catch:{ Exception -> 0x0184 }
            int r1 = r7.e     // Catch:{ Exception -> 0x0184 }
            int r3 = r7.f     // Catch:{ Exception -> 0x0184 }
            if (r1 < r3) goto L_0x01b3
            int r0 = r7.e     // Catch:{ Exception -> 0x0184 }
            int r1 = r7.d     // Catch:{ Exception -> 0x0184 }
            if (r0 <= r1) goto L_0x0259
            int r0 = r7.e     // Catch:{ Exception -> 0x0184 }
            r7.d = r0     // Catch:{ Exception -> 0x0184 }
            java.lang.String r0 = r7.l()     // Catch:{ Exception -> 0x0184 }
            r7.c = r0     // Catch:{ Exception -> 0x0184 }
            if (r2 == 0) goto L_0x017d
            java.lang.String r0 = r7.c     // Catch:{ Exception -> 0x0184 }
            java.lang.String r0 = r7.a(r0)     // Catch:{ Exception -> 0x0184 }
            r7.g = r0     // Catch:{ Exception -> 0x0184 }
            java.lang.String r0 = r7.g     // Catch:{ Exception -> 0x0184 }
            r7.b(r0)     // Catch:{ Exception -> 0x0184 }
            android.content.Context r0 = r7.a     // Catch:{ Exception -> 0x0184 }
            java.lang.String r1 = r7.c     // Catch:{ Exception -> 0x0184 }
            java.lang.String r2 = r7.n()     // Catch:{ Exception -> 0x0184 }
            com.xiaomi.channel.commonutils.android.a.a(r0, r1, r2)     // Catch:{ Exception -> 0x0184 }
        L_0x011f:
            dalvik.system.DexClassLoader r0 = new dalvik.system.DexClassLoader     // Catch:{ Exception -> 0x0184 }
            java.lang.String r1 = r7.c     // Catch:{ Exception -> 0x0184 }
            android.content.Context r2 = r7.a     // Catch:{ Exception -> 0x0184 }
            java.lang.String r3 = "dex"
            r4 = 0
            java.io.File r2 = r2.getDir(r3, r4)     // Catch:{ Exception -> 0x0184 }
            java.lang.String r2 = r2.getAbsolutePath()     // Catch:{ Exception -> 0x0184 }
            java.lang.String r3 = r7.n()     // Catch:{ Exception -> 0x0184 }
            java.lang.ClassLoader r4 = java.lang.ClassLoader.getSystemClassLoader()     // Catch:{ Exception -> 0x0184 }
            r0.<init>(r1, r2, r3, r4)     // Catch:{ Exception -> 0x0184 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0224 }
            r1.<init>()     // Catch:{ all -> 0x0224 }
            java.lang.String r2 = "load apk : "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0224 }
            java.lang.String r2 = r7.c     // Catch:{ all -> 0x0224 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0224 }
            java.lang.String r2 = ", version : "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0224 }
            int r2 = r7.d     // Catch:{ all -> 0x0224 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0224 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0224 }
            com.xiaomi.channel.commonutils.logger.b.b(r1)     // Catch:{ all -> 0x0224 }
            java.lang.String r1 = "load apk done."
            com.xiaomi.channel.commonutils.logger.b.b(r1)     // Catch:{ all -> 0x0224 }
        L_0x0164:
            monitor-exit(r7)
            return r0
        L_0x0166:
            java.lang.String r2 = "not modified."
            com.xiaomi.channel.commonutils.logger.b.b(r2)     // Catch:{ Exception -> 0x0184 }
            int r2 = r7.q()     // Catch:{ Exception -> 0x0184 }
            r7.e = r2     // Catch:{ Exception -> 0x0184 }
        L_0x0171:
            r2 = r1
            goto L_0x0096
        L_0x0174:
            int r0 = r7.r()     // Catch:{ Exception -> 0x0184 }
            r7.f = r0     // Catch:{ Exception -> 0x0184 }
        L_0x017a:
            r0 = r1
            goto L_0x00bf
        L_0x017d:
            java.lang.String r0 = r7.u()     // Catch:{ Exception -> 0x0184 }
            r7.g = r0     // Catch:{ Exception -> 0x0184 }
            goto L_0x011f
        L_0x0184:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)     // Catch:{ all -> 0x022e }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x0224 }
            r0.<init>()     // Catch:{ all -> 0x0224 }
            java.lang.String r1 = "load apk : "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ all -> 0x0224 }
            java.lang.String r1 = r7.c     // Catch:{ all -> 0x0224 }
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ all -> 0x0224 }
            java.lang.String r1 = ", version : "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ all -> 0x0224 }
            int r1 = r7.d     // Catch:{ all -> 0x0224 }
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ all -> 0x0224 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0224 }
            com.xiaomi.channel.commonutils.logger.b.b(r0)     // Catch:{ all -> 0x0224 }
            java.lang.String r0 = "load apk done."
            com.xiaomi.channel.commonutils.logger.b.b(r0)     // Catch:{ all -> 0x0224 }
        L_0x01b1:
            r0 = 0
            goto L_0x0164
        L_0x01b3:
            int r1 = r7.f     // Catch:{ Exception -> 0x0184 }
            int r2 = r7.d     // Catch:{ Exception -> 0x0184 }
            if (r1 <= r2) goto L_0x0259
            int r1 = r7.f     // Catch:{ Exception -> 0x0184 }
            r7.d = r1     // Catch:{ Exception -> 0x0184 }
            java.lang.String r1 = r7.d()     // Catch:{ Exception -> 0x0184 }
            r7.c = r1     // Catch:{ Exception -> 0x0184 }
            if (r0 == 0) goto L_0x0227
            java.lang.String r0 = r7.c     // Catch:{ Exception -> 0x0184 }
            java.lang.String r0 = r7.a(r0)     // Catch:{ Exception -> 0x0184 }
            r7.g = r0     // Catch:{ Exception -> 0x0184 }
            java.lang.String r0 = r7.g     // Catch:{ Exception -> 0x0184 }
            r7.c(r0)     // Catch:{ Exception -> 0x0184 }
            android.content.Context r0 = r7.a     // Catch:{ Exception -> 0x0184 }
            java.lang.String r1 = r7.c     // Catch:{ Exception -> 0x0184 }
            java.lang.String r2 = r7.m()     // Catch:{ Exception -> 0x0184 }
            com.xiaomi.channel.commonutils.android.a.a(r0, r1, r2)     // Catch:{ Exception -> 0x0184 }
        L_0x01dd:
            dalvik.system.DexClassLoader r0 = new dalvik.system.DexClassLoader     // Catch:{ Exception -> 0x0184 }
            java.lang.String r1 = r7.c     // Catch:{ Exception -> 0x0184 }
            android.content.Context r2 = r7.a     // Catch:{ Exception -> 0x0184 }
            java.lang.String r3 = "dex"
            r4 = 0
            java.io.File r2 = r2.getDir(r3, r4)     // Catch:{ Exception -> 0x0184 }
            java.lang.String r2 = r2.getAbsolutePath()     // Catch:{ Exception -> 0x0184 }
            java.lang.String r3 = r7.m()     // Catch:{ Exception -> 0x0184 }
            java.lang.ClassLoader r4 = java.lang.ClassLoader.getSystemClassLoader()     // Catch:{ Exception -> 0x0184 }
            r0.<init>(r1, r2, r3, r4)     // Catch:{ Exception -> 0x0184 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0224 }
            r1.<init>()     // Catch:{ all -> 0x0224 }
            java.lang.String r2 = "load apk : "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0224 }
            java.lang.String r2 = r7.c     // Catch:{ all -> 0x0224 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0224 }
            java.lang.String r2 = ", version : "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0224 }
            int r2 = r7.d     // Catch:{ all -> 0x0224 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0224 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0224 }
            com.xiaomi.channel.commonutils.logger.b.b(r1)     // Catch:{ all -> 0x0224 }
            java.lang.String r1 = "load apk done."
            com.xiaomi.channel.commonutils.logger.b.b(r1)     // Catch:{ all -> 0x0224 }
            goto L_0x0164
        L_0x0224:
            r0 = move-exception
            monitor-exit(r7)
            throw r0
        L_0x0227:
            java.lang.String r0 = r7.v()     // Catch:{ Exception -> 0x0184 }
            r7.g = r0     // Catch:{ Exception -> 0x0184 }
            goto L_0x01dd
        L_0x022e:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0224 }
            r1.<init>()     // Catch:{ all -> 0x0224 }
            java.lang.String r2 = "load apk : "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0224 }
            java.lang.String r2 = r7.c     // Catch:{ all -> 0x0224 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0224 }
            java.lang.String r2 = ", version : "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0224 }
            int r2 = r7.d     // Catch:{ all -> 0x0224 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0224 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0224 }
            com.xiaomi.channel.commonutils.logger.b.b(r1)     // Catch:{ all -> 0x0224 }
            java.lang.String r1 = "load apk done."
            com.xiaomi.channel.commonutils.logger.b.b(r1)     // Catch:{ all -> 0x0224 }
            throw r0     // Catch:{ all -> 0x0224 }
        L_0x0259:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x0224 }
            r0.<init>()     // Catch:{ all -> 0x0224 }
            java.lang.String r1 = "load apk : "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ all -> 0x0224 }
            java.lang.String r1 = r7.c     // Catch:{ all -> 0x0224 }
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ all -> 0x0224 }
            java.lang.String r1 = ", version : "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ all -> 0x0224 }
            int r1 = r7.d     // Catch:{ all -> 0x0224 }
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ all -> 0x0224 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0224 }
            com.xiaomi.channel.commonutils.logger.b.b(r0)     // Catch:{ all -> 0x0224 }
            java.lang.String r0 = "load apk done."
            com.xiaomi.channel.commonutils.logger.b.b(r0)     // Catch:{ all -> 0x0224 }
            goto L_0x01b1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.module.a.c():dalvik.system.DexClassLoader");
    }

    public String d() {
        return a(this.a, this.b);
    }

    public String e() {
        return this.b;
    }

    public String f() {
        return this.c;
    }
}
