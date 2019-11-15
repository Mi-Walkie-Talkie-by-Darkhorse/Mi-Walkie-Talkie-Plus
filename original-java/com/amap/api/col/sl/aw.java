package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.weather.LocalWeatherLive;
import com.amap.api.services.weather.WeatherSearchQuery;

/* compiled from: WeatherLiveHandler */
public final class aw extends ax<WeatherSearchQuery, LocalWeatherLive> {
    private LocalWeatherLive i = new LocalWeatherLive();

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        this.i = z.d(str);
        return this.i;
    }

    public final /* bridge */ /* synthetic */ String f() {
        return super.f();
    }

    public aw(Context context, WeatherSearchQuery weatherSearchQuery) {
        super(context, weatherSearchQuery);
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("output=json");
        String city = ((WeatherSearchQuery) this.a).getCity();
        if (!z.f(city)) {
            stringBuffer.append("&city=").append(b(city));
        }
        stringBuffer.append("&extensions=base");
        stringBuffer.append("&key=" + bp.f(this.d));
        return stringBuffer.toString();
    }
}
