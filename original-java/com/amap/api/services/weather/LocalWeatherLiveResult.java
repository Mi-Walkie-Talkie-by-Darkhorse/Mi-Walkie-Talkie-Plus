package com.amap.api.services.weather;

public class LocalWeatherLiveResult {
    private WeatherSearchQuery a;
    private LocalWeatherLive b;

    public static LocalWeatherLiveResult createPagedResult(WeatherSearchQuery weatherSearchQuery, LocalWeatherLive localWeatherLive) {
        return new LocalWeatherLiveResult(weatherSearchQuery, localWeatherLive);
    }

    private LocalWeatherLiveResult(WeatherSearchQuery weatherSearchQuery, LocalWeatherLive localWeatherLive) {
        this.a = weatherSearchQuery;
        this.b = localWeatherLive;
    }

    public WeatherSearchQuery getWeatherLiveQuery() {
        return this.a;
    }

    public LocalWeatherLive getLiveResult() {
        return this.b;
    }
}
