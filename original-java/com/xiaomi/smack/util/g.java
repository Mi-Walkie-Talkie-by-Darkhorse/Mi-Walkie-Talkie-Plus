package com.xiaomi.smack.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.ifengyu.im.account.UserInfo;
import com.xiaomi.channel.commonutils.misc.i;
import com.xiaomi.channel.commonutils.misc.i.b;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class g {
    private static i a = new i(true);
    private static int b = -1;
    /* access modifiers changed from: private */
    public static final Object c = new Object();
    /* access modifiers changed from: private */
    public static List<a> d = Collections.synchronizedList(new ArrayList());
    private static String e = "";
    private static com.xiaomi.push.providers.a f = null;

    static class a {
        public String a = "";
        public long b = 0;
        public int c = -1;
        public int d = -1;
        public String e = "";
        public long f = 0;

        public a(String str, long j, int i, int i2, String str2, long j2) {
            this.a = str;
            this.b = j;
            this.c = i;
            this.d = i2;
            this.e = str2;
            this.f = j2;
        }

        public boolean a(a aVar) {
            return TextUtils.equals(aVar.a, this.a) && TextUtils.equals(aVar.e, this.e) && aVar.c == this.c && aVar.d == this.d && Math.abs(aVar.b - this.b) <= 5000;
        }
    }

    public static int a(String str) {
        try {
            return str.getBytes("UTF-8").length;
        } catch (UnsupportedEncodingException e2) {
            return str.getBytes().length;
        }
    }

    private static long a(int i, long j) {
        return (((long) (i == 0 ? 13 : 11)) * j) / 10;
    }

    public static void a(Context context) {
        b = c(context);
    }

    public static void a(Context context, String str, long j, boolean z, long j2) {
        boolean isEmpty;
        if (context != null && !TextUtils.isEmpty(str) && "com.xiaomi.xmsf".equals(context.getPackageName()) && !"com.xiaomi.xmsf".equals(str)) {
            int b2 = b(context);
            if (-1 != b2) {
                synchronized (c) {
                    isEmpty = d.isEmpty();
                    a(new a(str, j2, b2, z ? 1 : 0, b2 == 0 ? d(context) : "", a(b2, j)));
                }
                if (isEmpty) {
                    a.a((b) new h(context), 5000);
                }
            }
        }
    }

    private static void a(a aVar) {
        for (a aVar2 : d) {
            if (aVar2.a(aVar)) {
                aVar2.f += aVar.f;
                return;
            }
        }
        d.add(aVar);
    }

    private static int b(Context context) {
        if (b == -1) {
            b = c(context);
        }
        return b;
    }

    /* access modifiers changed from: private */
    public static void b(Context context, List<a> list) {
        try {
            synchronized (com.xiaomi.push.providers.a.a) {
                SQLiteDatabase writableDatabase = e(context).getWritableDatabase();
                writableDatabase.beginTransaction();
                try {
                    for (a aVar : list) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("package_name", aVar.a);
                        contentValues.put("message_ts", Long.valueOf(aVar.b));
                        contentValues.put("network_type", Integer.valueOf(aVar.c));
                        contentValues.put("bytes", Long.valueOf(aVar.f));
                        contentValues.put("rcv", Integer.valueOf(aVar.d));
                        contentValues.put("imsi", aVar.e);
                        writableDatabase.insert("traffic", null, contentValues);
                    }
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                    throw th;
                }
            }
        } catch (SQLiteException e2) {
            com.xiaomi.channel.commonutils.logger.b.a((Throwable) e2);
        }
    }

    private static int c(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return -1;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return -1;
                }
                return activeNetworkInfo.getType();
            } catch (Exception e2) {
                return -1;
            }
        } catch (Exception e3) {
            return -1;
        }
    }

    private static synchronized String d(Context context) {
        String str;
        synchronized (g.class) {
            if (!TextUtils.isEmpty(e)) {
                str = e;
            } else {
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE);
                    if (telephonyManager != null) {
                        e = telephonyManager.getSubscriberId();
                    }
                } catch (Exception e2) {
                }
                str = e;
            }
        }
        return str;
    }

    private static com.xiaomi.push.providers.a e(Context context) {
        if (f != null) {
            return f;
        }
        f = new com.xiaomi.push.providers.a(context);
        return f;
    }
}
