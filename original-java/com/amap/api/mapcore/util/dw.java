package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

/* compiled from: PreferenceTools */
public class dw {
    private static dw a;
    private SharedPreferences b;

    public void a(Context context) {
        if (context != null) {
            this.b = context.getSharedPreferences("Map3DCache", 0);
            if (b() == 0) {
                a(System.currentTimeMillis());
            }
        }
    }

    public static dw a() {
        if (a == null) {
            a = new dw();
        }
        return a;
    }

    public void a(long j) {
        a(Values.TIME, j);
    }

    public long b() {
        if (this.b != null) {
            return this.b.getLong(Values.TIME, 0);
        }
        return 0;
    }

    private void a(String str, long j) {
        if (this.b != null) {
            Editor edit = this.b.edit();
            edit.putLong(str, j);
            edit.apply();
        }
    }
}
