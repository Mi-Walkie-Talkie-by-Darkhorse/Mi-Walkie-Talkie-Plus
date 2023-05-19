package com.xiaomi.push;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.xiaomi.push.q */
/* loaded from: classes2.dex */
public class C6312q {

    /* renamed from: a */
    private static volatile C6312q f22845a;

    /* renamed from: a */
    private Context f22846a;

    /* renamed from: a */
    private Handler f22847a = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    private Map<String, Map<String, String>> f22848a = new HashMap();

    private C6312q(Context context) {
        this.f22846a = context;
    }

    /* renamed from: a */
    public static C6312q m1822a(Context context) {
        if (f22845a == null) {
            synchronized (C6312q.class) {
                if (f22845a == null) {
                    f22845a = new C6312q(context);
                }
            }
        }
        return f22845a;
    }

    /* renamed from: a */
    private synchronized String m1820a(String str, String str2) {
        if (this.f22848a != null && !TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(str2)) {
                try {
                    Map<String, String> map = this.f22848a.get(str);
                    if (map != null) {
                        return map.get(str2);
                    }
                    return "";
                } catch (Throwable unused) {
                    return "";
                }
            }
        }
        return "";
    }

    /* renamed from: b */
    private synchronized void m1817b(String str, String str2, String str3) {
        if (this.f22848a == null) {
            this.f22848a = new HashMap();
        }
        Map<String, String> map = this.f22848a.get(str);
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(str2, str3);
        this.f22848a.put(str, map);
    }

    /* renamed from: a */
    public synchronized String m1819a(String str, String str2, String str3) {
        String m1820a = m1820a(str, str2);
        if (TextUtils.isEmpty(m1820a)) {
            return this.f22846a.getSharedPreferences(str, 4).getString(str2, str3);
        }
        return m1820a;
    }

    /* renamed from: a */
    public synchronized void m1818a(String str, String str2, String str3) {
        m1817b(str, str2, str3);
        this.f22847a.post(new RunnableC6313r(this, str, str2, str3));
    }
}
