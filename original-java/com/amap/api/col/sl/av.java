package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.weather.LocalWeatherForecast;
import com.amap.api.services.weather.WeatherSearchQuery;

/* compiled from: WeatherForecastHandler */
public final class av extends ax<WeatherSearchQuery, LocalWeatherForecast> {
    private LocalWeatherForecast i = new LocalWeatherForecast();

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        this.i = z.e(str);
        return this.i;
    }

    public final /* bridge */ /* synthetic */ String f() {
        return super.f();
    }

    public av(Context context, WeatherSearchQuery weatherSearchQuery) {
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
        stringBuffer.append("&extensions=all");
        stringBuffer.append("&key=" + bp.f(this.d));
        return stringBuffer.toString();
    }
}
