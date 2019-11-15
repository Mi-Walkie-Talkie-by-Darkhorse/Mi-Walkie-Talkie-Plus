package com.sina.weibo.sdk.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.sina.weibo.sdk.net.f;
import com.sina.weibo.sdk.utils.c;
import com.sina.weibo.sdk.utils.i;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* compiled from: WbAppActivator */
public class g {
    /* access modifiers changed from: private */
    public static final String a = g.class.getName();
    private static g c;
    /* access modifiers changed from: private */
    public Context b;
    /* access modifiers changed from: private */
    public String d;
    /* access modifiers changed from: private */
    public volatile ReentrantLock e = new ReentrantLock(true);
    private d f;
    private b g;

    /* compiled from: WbAppActivator */
    private static class a {
        public static SharedPreferences a(Context context) {
            return context.getSharedPreferences("com_sina_weibo_sdk", 0);
        }

        public static long a(Context context, SharedPreferences sharedPreferences) {
            if (sharedPreferences != null) {
                return sharedPreferences.getLong("frequency_get_cmd", OpenStreetMapTileProviderConstants.ONE_HOUR);
            }
            return OpenStreetMapTileProviderConstants.ONE_HOUR;
        }

        public static void a(Context context, SharedPreferences sharedPreferences, long j) {
            if (sharedPreferences != null && j > 0) {
                Editor edit = sharedPreferences.edit();
                edit.putLong("frequency_get_cmd", j);
                edit.commit();
            }
        }

        public static long b(Context context, SharedPreferences sharedPreferences) {
            if (sharedPreferences != null) {
                return sharedPreferences.getLong("last_time_get_cmd", 0);
            }
            return 0;
        }

        public static void b(Context context, SharedPreferences sharedPreferences, long j) {
            if (sharedPreferences != null) {
                Editor edit = sharedPreferences.edit();
                edit.putLong("last_time_get_cmd", j);
                edit.commit();
            }
        }
    }

    private g(Context context, String str) {
        this.b = context.getApplicationContext();
        this.f = new d(this.b);
        this.g = new b(this.b);
        this.d = str;
    }

    public static synchronized g a(Context context, String str) {
        g gVar;
        synchronized (g.class) {
            if (c == null) {
                c = new g(context, str);
            }
            gVar = c;
        }
        return gVar;
    }

    public void a() {
        final SharedPreferences a2 = a.a(this.b);
        long currentTimeMillis = System.currentTimeMillis() - a.b(this.b, a2);
        if (currentTimeMillis < a.a(this.b, a2)) {
            c.e(a, String.format("it's only %d ms from last time get cmd", new Object[]{Long.valueOf(currentTimeMillis)}));
            return;
        }
        new Thread(new Runnable() {
            /* JADX WARNING: Removed duplicated region for block: B:18:0x00bd  */
            /* JADX WARNING: Removed duplicated region for block: B:23:0x010a  */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r7 = this;
                    java.lang.String r0 = com.sina.weibo.sdk.b.g.a
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    java.lang.String r2 = "mLock.isLocked()--->"
                    r1.<init>(r2)
                    com.sina.weibo.sdk.b.g r2 = com.sina.weibo.sdk.b.g.this
                    java.util.concurrent.locks.ReentrantLock r2 = r2.e
                    boolean r2 = r2.isLocked()
                    java.lang.StringBuilder r1 = r1.append(r2)
                    java.lang.String r1 = r1.toString()
                    com.sina.weibo.sdk.utils.c.e(r0, r1)
                    com.sina.weibo.sdk.b.g r0 = com.sina.weibo.sdk.b.g.this
                    java.util.concurrent.locks.ReentrantLock r0 = r0.e
                    boolean r0 = r0.tryLock()
                    if (r0 != 0) goto L_0x002d
                L_0x002c:
                    return
                L_0x002d:
                    r1 = 0
                    com.sina.weibo.sdk.b.g r0 = com.sina.weibo.sdk.b.g.this     // Catch:{ WeiboException -> 0x00a6 }
                    android.content.Context r0 = r0.b     // Catch:{ WeiboException -> 0x00a6 }
                    com.sina.weibo.sdk.b.g r2 = com.sina.weibo.sdk.b.g.this     // Catch:{ WeiboException -> 0x00a6 }
                    java.lang.String r2 = r2.d     // Catch:{ WeiboException -> 0x00a6 }
                    java.lang.String r0 = com.sina.weibo.sdk.b.g.c(r0, r2)     // Catch:{ WeiboException -> 0x00a6 }
                    if (r0 == 0) goto L_0x0155
                    java.lang.String r2 = com.sina.weibo.sdk.utils.a.a(r0)     // Catch:{ WeiboException -> 0x00a6 }
                    com.sina.weibo.sdk.b.f r0 = new com.sina.weibo.sdk.b.f     // Catch:{ WeiboException -> 0x00a6 }
                    r0.<init>(r2)     // Catch:{ WeiboException -> 0x00a6 }
                    com.sina.weibo.sdk.b.g r1 = com.sina.weibo.sdk.b.g.this     // Catch:{ WeiboException -> 0x014f, all -> 0x014a }
                    java.util.List r2 = r0.a()     // Catch:{ WeiboException -> 0x014f, all -> 0x014a }
                    r1.a(r2)     // Catch:{ WeiboException -> 0x014f, all -> 0x014a }
                    com.sina.weibo.sdk.b.g r1 = com.sina.weibo.sdk.b.g.this     // Catch:{ WeiboException -> 0x014f, all -> 0x014a }
                    java.util.List r2 = r0.b()     // Catch:{ WeiboException -> 0x014f, all -> 0x014a }
                    r1.b(r2)     // Catch:{ WeiboException -> 0x014f, all -> 0x014a }
                L_0x005b:
                    com.sina.weibo.sdk.b.g r1 = com.sina.weibo.sdk.b.g.this
                    java.util.concurrent.locks.ReentrantLock r1 = r1.e
                    r1.unlock()
                    if (r0 == 0) goto L_0x0085
                    com.sina.weibo.sdk.b.g r1 = com.sina.weibo.sdk.b.g.this
                    android.content.Context r1 = r1.b
                    android.content.SharedPreferences r2 = r0
                    int r0 = r0.c()
                    long r4 = (long) r0
                    com.sina.weibo.sdk.b.g.a.a(r1, r2, r4)
                    com.sina.weibo.sdk.b.g r0 = com.sina.weibo.sdk.b.g.this
                    android.content.Context r0 = r0.b
                    android.content.SharedPreferences r1 = r0
                    long r2 = java.lang.System.currentTimeMillis()
                    com.sina.weibo.sdk.b.g.a.b(r0, r1, r2)
                L_0x0085:
                    java.lang.String r0 = com.sina.weibo.sdk.b.g.a
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    java.lang.String r2 = "after unlock \n mLock.isLocked()--->"
                    r1.<init>(r2)
                    com.sina.weibo.sdk.b.g r2 = com.sina.weibo.sdk.b.g.this
                    java.util.concurrent.locks.ReentrantLock r2 = r2.e
                    boolean r2 = r2.isLocked()
                    java.lang.StringBuilder r1 = r1.append(r2)
                    java.lang.String r1 = r1.toString()
                    com.sina.weibo.sdk.utils.c.e(r0, r1)
                    goto L_0x002c
                L_0x00a6:
                    r0 = move-exception
                L_0x00a7:
                    java.lang.String r2 = com.sina.weibo.sdk.b.g.a     // Catch:{ all -> 0x00fe }
                    java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x00fe }
                    com.sina.weibo.sdk.utils.c.c(r2, r0)     // Catch:{ all -> 0x00fe }
                    com.sina.weibo.sdk.b.g r0 = com.sina.weibo.sdk.b.g.this
                    java.util.concurrent.locks.ReentrantLock r0 = r0.e
                    r0.unlock()
                    if (r1 == 0) goto L_0x00dc
                    com.sina.weibo.sdk.b.g r0 = com.sina.weibo.sdk.b.g.this
                    android.content.Context r0 = r0.b
                    android.content.SharedPreferences r2 = r0
                    int r1 = r1.c()
                    long r4 = (long) r1
                    com.sina.weibo.sdk.b.g.a.a(r0, r2, r4)
                    com.sina.weibo.sdk.b.g r0 = com.sina.weibo.sdk.b.g.this
                    android.content.Context r0 = r0.b
                    android.content.SharedPreferences r1 = r0
                    long r2 = java.lang.System.currentTimeMillis()
                    com.sina.weibo.sdk.b.g.a.b(r0, r1, r2)
                L_0x00dc:
                    java.lang.String r0 = com.sina.weibo.sdk.b.g.a
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    java.lang.String r2 = "after unlock \n mLock.isLocked()--->"
                    r1.<init>(r2)
                    com.sina.weibo.sdk.b.g r2 = com.sina.weibo.sdk.b.g.this
                    java.util.concurrent.locks.ReentrantLock r2 = r2.e
                    boolean r2 = r2.isLocked()
                    java.lang.StringBuilder r1 = r1.append(r2)
                    java.lang.String r1 = r1.toString()
                    com.sina.weibo.sdk.utils.c.e(r0, r1)
                    goto L_0x002c
                L_0x00fe:
                    r0 = move-exception
                L_0x00ff:
                    com.sina.weibo.sdk.b.g r2 = com.sina.weibo.sdk.b.g.this
                    java.util.concurrent.locks.ReentrantLock r2 = r2.e
                    r2.unlock()
                    if (r1 == 0) goto L_0x0129
                    com.sina.weibo.sdk.b.g r2 = com.sina.weibo.sdk.b.g.this
                    android.content.Context r2 = r2.b
                    android.content.SharedPreferences r3 = r0
                    int r1 = r1.c()
                    long r4 = (long) r1
                    com.sina.weibo.sdk.b.g.a.a(r2, r3, r4)
                    com.sina.weibo.sdk.b.g r1 = com.sina.weibo.sdk.b.g.this
                    android.content.Context r1 = r1.b
                    android.content.SharedPreferences r2 = r0
                    long r4 = java.lang.System.currentTimeMillis()
                    com.sina.weibo.sdk.b.g.a.b(r1, r2, r4)
                L_0x0129:
                    java.lang.String r1 = com.sina.weibo.sdk.b.g.a
                    java.lang.StringBuilder r2 = new java.lang.StringBuilder
                    java.lang.String r3 = "after unlock \n mLock.isLocked()--->"
                    r2.<init>(r3)
                    com.sina.weibo.sdk.b.g r3 = com.sina.weibo.sdk.b.g.this
                    java.util.concurrent.locks.ReentrantLock r3 = r3.e
                    boolean r3 = r3.isLocked()
                    java.lang.StringBuilder r2 = r2.append(r3)
                    java.lang.String r2 = r2.toString()
                    com.sina.weibo.sdk.utils.c.e(r1, r2)
                    throw r0
                L_0x014a:
                    r1 = move-exception
                    r6 = r1
                    r1 = r0
                    r0 = r6
                    goto L_0x00ff
                L_0x014f:
                    r1 = move-exception
                    r6 = r1
                    r1 = r0
                    r0 = r6
                    goto L_0x00a7
                L_0x0155:
                    r0 = r1
                    goto L_0x005b
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.b.g.AnonymousClass1.run():void");
            }
        }).start();
    }

    /* access modifiers changed from: private */
    public static String c(Context context, String str) {
        String str2 = "http://api.weibo.cn/2/client/common_config";
        String packageName = context.getPackageName();
        String a2 = i.a(context, packageName);
        f fVar = new f(str);
        fVar.a("appkey", str);
        fVar.a("packagename", packageName);
        fVar.a("key_hash", a2);
        fVar.a("version", "0031405000");
        return com.sina.weibo.sdk.net.c.b(context, "http://api.weibo.cn/2/client/common_config", "GET", fVar);
    }

    /* access modifiers changed from: private */
    public void a(List<a> list) {
        if (list != null) {
            this.g.a();
            for (a a2 : list) {
                this.g.a(a2);
            }
            this.g.b();
        }
    }

    /* access modifiers changed from: private */
    public void b(List<c> list) {
        if (list != null) {
            for (c a2 : list) {
                this.f.a(a2);
            }
        }
    }
}
