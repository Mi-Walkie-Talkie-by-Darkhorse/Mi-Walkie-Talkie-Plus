package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;

public class o {
    private static volatile o a;
    private SharedPreferences b;

    private o(Context context) {
        this.b = context.getSharedPreferences("mipush", 0);
    }

    public static o a(Context context) {
        if (a == null) {
            synchronized (o.class) {
                if (a == null) {
                    a = new o(context);
                }
            }
        }
        return a;
    }

    public synchronized void a() {
        Editor edit = this.b.edit();
        edit.remove(Constants.EXTRA_KEY_MIID);
        edit.commit();
    }

    public synchronized void a(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "0";
        }
        Editor edit = this.b.edit();
        edit.putString(Constants.EXTRA_KEY_MIID, str);
        edit.commit();
    }

    public synchronized String b() {
        return this.b.getString(Constants.EXTRA_KEY_MIID, "0");
    }

    public synchronized boolean c() {
        return !TextUtils.equals("0", b());
    }
}
