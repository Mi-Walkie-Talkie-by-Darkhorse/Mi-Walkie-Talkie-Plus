package com.amap.api.col.sl;

import android.content.Context;

/* compiled from: WeatherSearchHandler */
abstract class ax<T, V> extends l<T, V> {
    public ax(Context context, T t) {
        super(context, t);
    }

    public final T g() {
        return this.a;
    }

    public String f() {
        return s.a() + "/weather/weatherInfo?";
    }
}
