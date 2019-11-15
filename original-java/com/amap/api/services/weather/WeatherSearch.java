package com.amap.api.services.weather;

import android.content.Context;
import com.amap.api.col.sl.bm;
import com.amap.api.col.sl.bo;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.s;
import com.amap.api.services.interfaces.IWeatherSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class WeatherSearch {
    private IWeatherSearch a = null;

    public interface OnWeatherSearchListener {
        void onWeatherForecastSearched(LocalWeatherForecastResult localWeatherForecastResult, int i);

        void onWeatherLiveSearched(LocalWeatherLiveResult localWeatherLiveResult, int i);
    }

    public WeatherSearch(Context context) {
        try {
            Context context2 = context;
            this.a = (IWeatherSearch) cy.a(context2, s.a(true), "com.amap.api.services.dynamic.WeatherSearchWrapper", bm.class, new Class[]{Context.class}, new Object[]{context});
        } catch (bo e) {
            ThrowableExtension.printStackTrace(e);
        }
        if (this.a == null) {
            try {
                this.a = new bm(context);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public WeatherSearchQuery getQuery() {
        if (this.a != null) {
            return this.a.getQuery();
        }
        return null;
    }

    public void setQuery(WeatherSearchQuery weatherSearchQuery) {
        if (this.a != null) {
            this.a.setQuery(weatherSearchQuery);
        }
    }

    public void searchWeatherAsyn() {
        if (this.a != null) {
            this.a.searchWeatherAsyn();
        }
    }

    public void setOnWeatherSearchListener(OnWeatherSearchListener onWeatherSearchListener) {
        if (this.a != null) {
            this.a.setOnWeatherSearchListener(onWeatherSearchListener);
        }
    }
}
