package com.amap.api.col.sl;

import android.content.Context;

/* compiled from: PoiHandler */
abstract class ag<T, V> extends l<T, V> {
    public ag(Context context, T t) {
        super(context, t);
    }

    protected static boolean c(String str) {
        if (str == null || str.equals("") || str.equals("[]")) {
            return true;
        }
        return false;
    }
}
