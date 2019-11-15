package com.amap.api.services.interfaces;

import com.amap.api.services.weather.WeatherSearch.OnWeatherSearchListener;
import com.amap.api.services.weather.WeatherSearchQuery;

public interface IWeatherSearch {
    WeatherSearchQuery getQuery();

    void searchWeatherAsyn();

    void setOnWeatherSearchListener(OnWeatherSearchListener onWeatherSearchListener);

    void setQuery(WeatherSearchQuery weatherSearchQuery);
}
