package com.xiaomi.push;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static volatile q f9191a;

    /* renamed from: a  reason: collision with other field name */
    private Context f843a;

    /* renamed from: a  reason: collision with other field name */
    private Handler f844a = new Handler(Looper.getMainLooper());

    /* renamed from: a  reason: collision with other field name */
    private Map<String, Map<String, String>> f845a = new HashMap();

    private q(Context context) {
        this.f843a = context;
    }

    public static q a(Context context) {
        if (f9191a == null) {
            synchronized (q.class) {
                if (f9191a == null) {
                    f9191a = new q(context);
                }
            }
        }
        return f9191a;
    }

    private synchronized String a(String str, String str2) {
        if (this.f845a != null && !TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(str2)) {
                try {
                    Map<String, String> map = this.f845a.get(str);
                    if (map == null) {
                        return "";
                    }
                    return map.get(str2);
                } catch (Throwable unused) {
                    return "";
                }
            }
        }
        return "";
    }

    private synchronized void b(String str, String str2, String str3) {
        if (this.f845a == null) {
            this.f845a = new HashMap();
        }
        Map<String, String> map = this.f845a.get(str);
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(str2, str3);
        this.f845a.put(str, map);
    }

    public synchronized String a(String str, String str2, String str3) {
        String a2 = a(str, str2);
        if (!TextUtils.isEmpty(a2)) {
            return a2;
        }
        return this.f843a.getSharedPreferences(str, 4).getString(str2, str3);
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized void m536a(String str, String str2, String str3) {
        b(str, str2, str3);
        this.f844a.post(new r(this, str, str2, str3));
    }
}
