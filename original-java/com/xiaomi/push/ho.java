package com.xiaomi.push;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.umeng.analytics.pro.ai;
import com.umeng.analytics.pro.c;
import com.xiaomi.channel.commonutils.logger.b;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public class ho {

    /* renamed from: a  reason: collision with other field name */
    private static an f472a = new an(true);

    /* renamed from: a  reason: collision with root package name */
    private static volatile int f9045a = -1;

    /* renamed from: a  reason: collision with other field name */
    private static long f471a = System.currentTimeMillis();

    /* renamed from: a  reason: collision with other field name */
    private static final Object f474a = new Object();

    /* renamed from: a  reason: collision with other field name */
    private static List<a> f476a = Collections.synchronizedList(new ArrayList());

    /* renamed from: a  reason: collision with other field name */
    private static String f475a = "";

    /* renamed from: a  reason: collision with other field name */
    private static com.xiaomi.push.providers.a f473a = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f9046a;

        /* renamed from: a  reason: collision with other field name */
        public long f477a;

        /* renamed from: a  reason: collision with other field name */
        public String f478a;

        /* renamed from: b  reason: collision with root package name */
        public int f9047b;

        /* renamed from: b  reason: collision with other field name */
        public long f479b;

        /* renamed from: b  reason: collision with other field name */
        public String f480b;

        public a(String str, long j, int i, int i2, String str2, long j2) {
            this.f478a = "";
            this.f477a = 0L;
            this.f9046a = -1;
            this.f9047b = -1;
            this.f480b = "";
            this.f479b = 0L;
            this.f478a = str;
            this.f477a = j;
            this.f9046a = i;
            this.f9047b = i2;
            this.f480b = str2;
            this.f479b = j2;
        }

        public boolean a(a aVar) {
            return TextUtils.equals(aVar.f478a, this.f478a) && TextUtils.equals(aVar.f480b, this.f480b) && aVar.f9046a == this.f9046a && aVar.f9047b == this.f9047b && Math.abs(aVar.f477a - this.f477a) <= 5000;
        }
    }

    public static int a(Context context) {
        if (f9045a == -1) {
            f9045a = b(context);
        }
        return f9045a;
    }

    public static int a(String str) {
        try {
            return str.getBytes("UTF-8").length;
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes().length;
        }
    }

    private static long a(int i, long j, boolean z, long j2, boolean z2) {
        if (z && z2) {
            long j3 = f471a;
            f471a = j2;
            if (j2 - j3 > 30000 && j > 1024) {
                return j * 2;
            }
        }
        return (j * (i == 0 ? 13 : 11)) / 10;
    }

    /* renamed from: a  reason: collision with other method in class */
    private static com.xiaomi.push.providers.a m347a(Context context) {
        com.xiaomi.push.providers.a aVar = f473a;
        if (aVar != null) {
            return aVar;
        }
        com.xiaomi.push.providers.a aVar2 = new com.xiaomi.push.providers.a(context);
        f473a = aVar2;
        return aVar2;
    }

    /* renamed from: a  reason: collision with other method in class */
    private static synchronized String m348a(Context context) {
        synchronized (ho.class) {
            if (TextUtils.isEmpty(f475a)) {
                return "";
            }
            return f475a;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static void m349a(Context context) {
        f9045a = b(context);
    }

    private static void a(Context context, String str, long j, boolean z, long j2) {
        int a2;
        boolean isEmpty;
        if (context != null && !TextUtils.isEmpty(str) && "com.xiaomi.xmsf".equals(context.getPackageName()) && !"com.xiaomi.xmsf".equals(str) && -1 != (a2 = a(context))) {
            synchronized (f474a) {
                isEmpty = f476a.isEmpty();
                a(new a(str, j2, a2, z ? 1 : 0, a2 == 0 ? m348a(context) : "", j));
            }
            if (isEmpty) {
                f472a.a(new hp(context), 5000L);
            }
        }
    }

    public static void a(Context context, String str, long j, boolean z, boolean z2, long j2) {
        a(context, str, a(a(context), j, z, j2, z2), z, j2);
    }

    private static void a(a aVar) {
        for (a aVar2 : f476a) {
            if (aVar2.a(aVar)) {
                aVar2.f479b += aVar.f479b;
                return;
            }
        }
        f476a.add(aVar);
    }

    /* renamed from: a  reason: collision with other method in class */
    public static synchronized void m350a(String str) {
        synchronized (ho.class) {
            if (!l.m533d() && !TextUtils.isEmpty(str)) {
                f475a = str;
            }
        }
    }

    private static int b(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return -1;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return -1;
            }
            return activeNetworkInfo.getType();
        } catch (Exception unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, List<a> list) {
        try {
            synchronized (com.xiaomi.push.providers.a.f841a) {
                SQLiteDatabase writableDatabase = m347a(context).getWritableDatabase();
                writableDatabase.beginTransaction();
                for (a aVar : list) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("package_name", aVar.f478a);
                    contentValues.put("message_ts", Long.valueOf(aVar.f477a));
                    contentValues.put(ai.T, Integer.valueOf(aVar.f9046a));
                    contentValues.put("bytes", Long.valueOf(aVar.f479b));
                    contentValues.put("rcv", Integer.valueOf(aVar.f9047b));
                    contentValues.put("imsi", aVar.f480b);
                    writableDatabase.insert(c.F, null, contentValues);
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
            }
        } catch (Throwable th) {
            b.a(th);
        }
    }
}
