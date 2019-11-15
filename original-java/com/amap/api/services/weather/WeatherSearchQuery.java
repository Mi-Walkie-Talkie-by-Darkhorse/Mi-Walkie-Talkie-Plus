package com.amap.api.services.weather;

import com.amap.api.col.sl.t;

public class WeatherSearchQuery implements Cloneable {
    public static final int WEATHER_TYPE_FORECAST = 2;
    public static final int WEATHER_TYPE_LIVE = 1;
    private String a;
    private int b = 1;

    public WeatherSearchQuery(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public WeatherSearchQuery() {
    }

    public String getCity() {
        return this.a;
    }

    public int getType() {
        return this.b;
    }

    public WeatherSearchQuery clone() {
        try {
            super.clone();
        } catch (CloneNotSupportedException e) {
            t.a(e, "WeatherSearchQuery", "clone");
        }
        return new WeatherSearchQuery(this.a, this.b);
    }
}
