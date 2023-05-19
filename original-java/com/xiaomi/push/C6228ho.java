package com.xiaomi.push;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.umeng.analytics.pro.UContent;
import com.umeng.analytics.pro.UMCommonContent;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.providers.C6311a;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: com.xiaomi.push.ho */
/* loaded from: classes2.dex */
public class C6228ho {

    /* renamed from: a */
    private static C5983an f21893a = new C5983an(true);

    /* renamed from: a */
    private static volatile int f21891a = -1;

    /* renamed from: a */
    private static long f21892a = System.currentTimeMillis();

    /* renamed from: a */
    private static final Object f21895a = new Object();

    /* renamed from: a */
    private static List<C6229a> f21897a = Collections.synchronizedList(new ArrayList());

    /* renamed from: a */
    private static String f21896a = "";

    /* renamed from: a */
    private static C6311a f21894a = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.ho$a */
    /* loaded from: classes2.dex */
    public static class C6229a {

        /* renamed from: a */
        public int f21898a;

        /* renamed from: a */
        public long f21899a;

        /* renamed from: a */
        public String f21900a;

        /* renamed from: b */
        public int f21901b;

        /* renamed from: b */
        public long f21902b;

        /* renamed from: b */
        public String f21903b;

        public C6229a(String str, long j, int i, int i2, String str2, long j2) {
            this.f21900a = "";
            this.f21899a = 0L;
            this.f21898a = -1;
            this.f21901b = -1;
            this.f21903b = "";
            this.f21902b = 0L;
            this.f21900a = str;
            this.f21899a = j;
            this.f21898a = i;
            this.f21901b = i2;
            this.f21903b = str2;
            this.f21902b = j2;
        }

        /* renamed from: a */
        public boolean m2589a(C6229a c6229a) {
            return TextUtils.equals(c6229a.f21900a, this.f21900a) && TextUtils.equals(c6229a.f21903b, this.f21903b) && c6229a.f21898a == this.f21898a && c6229a.f21901b == this.f21901b && Math.abs(c6229a.f21899a - this.f21899a) <= 5000;
        }
    }

    /* renamed from: a */
    public static int m2601a(Context context) {
        if (f21891a == -1) {
            f21891a = m2591b(context);
        }
        return f21891a;
    }

    /* renamed from: a */
    public static int m2593a(String str) {
        try {
            return str.getBytes("UTF-8").length;
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes().length;
        }
    }

    /* renamed from: a */
    private static long m2602a(int i, long j, boolean z, long j2, boolean z2) {
        if (z && z2) {
            long j3 = f21892a;
            f21892a = j2;
            if (j2 - j3 > 30000 && j > 1024) {
                return j * 2;
            }
        }
        return (j * (i == 0 ? 13 : 11)) / 10;
    }

    /* renamed from: a */
    private static C6311a m2600a(Context context) {
        C6311a c6311a = f21894a;
        if (c6311a != null) {
            return c6311a;
        }
        C6311a c6311a2 = new C6311a(context);
        f21894a = c6311a2;
        return c6311a2;
    }

    /* renamed from: a */
    private static synchronized String m2599a(Context context) {
        synchronized (C6228ho.class) {
            if (TextUtils.isEmpty(f21896a)) {
                return "";
            }
            return f21896a;
        }
    }

    /* renamed from: a */
    public static void m2598a(Context context) {
        f21891a = m2591b(context);
    }

    /* renamed from: a */
    private static void m2597a(Context context, String str, long j, boolean z, long j2) {
        int m2601a;
        boolean isEmpty;
        if (context == null || TextUtils.isEmpty(str) || !"com.xiaomi.xmsf".equals(context.getPackageName()) || "com.xiaomi.xmsf".equals(str) || -1 == (m2601a = m2601a(context))) {
            return;
        }
        synchronized (f21895a) {
            isEmpty = f21897a.isEmpty();
            m2594a(new C6229a(str, j2, m2601a, z ? 1 : 0, m2601a == 0 ? m2599a(context) : "", j));
        }
        if (isEmpty) {
            f21893a.m3766a(new C6230hp(context), 5000L);
        }
    }

    /* renamed from: a */
    public static void m2596a(Context context, String str, long j, boolean z, boolean z2, long j2) {
        m2597a(context, str, m2602a(m2601a(context), j, z, j2, z2), z, j2);
    }

    /* renamed from: a */
    private static void m2594a(C6229a c6229a) {
        for (C6229a c6229a2 : f21897a) {
            if (c6229a2.m2589a(c6229a)) {
                c6229a2.f21902b += c6229a.f21902b;
                return;
            }
        }
        f21897a.add(c6229a);
    }

    /* renamed from: a */
    public static synchronized void m2592a(String str) {
        synchronized (C6228ho.class) {
            if (!C6306l.m1837d() && !TextUtils.isEmpty(str)) {
                f21896a = str;
            }
        }
    }

    /* renamed from: b */
    private static int m2591b(Context context) {
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
    /* renamed from: b */
    public static void m2590b(Context context, List<C6229a> list) {
        try {
            synchronized (C6311a.f22843a) {
                SQLiteDatabase writableDatabase = m2600a(context).getWritableDatabase();
                writableDatabase.beginTransaction();
                for (C6229a c6229a : list) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("package_name", c6229a.f21900a);
                    contentValues.put("message_ts", Long.valueOf(c6229a.f21899a));
                    contentValues.put(UMCommonContent.f19339T, Integer.valueOf(c6229a.f21898a));
                    contentValues.put("bytes", Long.valueOf(c6229a.f21902b));
                    contentValues.put("rcv", Integer.valueOf(c6229a.f21901b));
                    contentValues.put("imsi", c6229a.f21903b);
                    writableDatabase.insert(UContent.f19641F, null, contentValues);
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
            }
        } catch (Throwable th) {
            AbstractC5876b.m4143a(th);
        }
    }
}
