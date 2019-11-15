package com.sina.weibo.sdk.component;

import android.content.Context;
import android.text.TextUtils;
import com.sina.weibo.sdk.a.b;
import com.sina.weibo.sdk.component.k.a;
import java.util.HashMap;
import java.util.Map;

/* compiled from: WeiboCallbackManager */
public class h {
    private static h a;
    private Context b;
    private Map<String, b> c = new HashMap();
    private Map<String, a> d = new HashMap();

    private h(Context context) {
        this.b = context;
    }

    public static synchronized h a(Context context) {
        h hVar;
        synchronized (h.class) {
            if (a == null) {
                a = new h(context);
            }
            hVar = a;
        }
        return hVar;
    }

    public synchronized b a(String str) {
        b bVar;
        if (TextUtils.isEmpty(str)) {
            bVar = null;
        } else {
            bVar = (b) this.c.get(str);
        }
        return bVar;
    }

    public synchronized void a(String str, b bVar) {
        if (!TextUtils.isEmpty(str) && bVar != null) {
            this.c.put(str, bVar);
        }
    }

    public synchronized void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.c.remove(str);
        }
    }

    public synchronized a c(String str) {
        a aVar;
        if (TextUtils.isEmpty(str)) {
            aVar = null;
        } else {
            aVar = (a) this.d.get(str);
        }
        return aVar;
    }

    public synchronized void a(String str, a aVar) {
        if (!TextUtils.isEmpty(str) && aVar != null) {
            this.d.put(str, aVar);
        }
    }

    public synchronized void d(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.d.remove(str);
        }
    }

    public String a() {
        return String.valueOf(System.currentTimeMillis());
    }
}
