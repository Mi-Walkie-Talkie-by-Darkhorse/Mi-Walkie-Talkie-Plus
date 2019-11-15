package com.xiaomi.push.service;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import java.util.HashMap;
import java.util.Map;

public class ax {
    private static volatile ax a;
    private Context b;
    private Handler c = new Handler(Looper.getMainLooper());
    private Map<String, Map<String, String>> d = new HashMap();

    private ax(Context context) {
        this.b = context;
    }

    public static ax a(Context context) {
        if (a == null) {
            synchronized (ax.class) {
                if (a == null) {
                    a = new ax(context);
                }
            }
        }
        return a;
    }

    public synchronized boolean a(String str, String str2, boolean z) {
        if (this.d != null) {
            try {
                Map map = (Map) this.d.get(str);
                z = (map == null || TextUtils.isEmpty((CharSequence) map.get(str2))) ? this.b.getSharedPreferences(str, 0).getBoolean(str2, z) : Boolean.parseBoolean((String) map.get(str2));
            } catch (Throwable th) {
                b.a(th);
            }
        }
        return z;
    }
}
