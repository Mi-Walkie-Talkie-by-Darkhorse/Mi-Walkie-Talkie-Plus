package com.amap.api.services.weather;

public class LocalWeatherForecastResult {
    private WeatherSearchQuery a;
    private LocalWeatherForecast b;

    public static LocalWeatherForecastResult createPagedResult(WeatherSearchQuery weatherSearchQuery, LocalWeatherForecast localWeatherForecast) {
        return new LocalWeatherForecastResult(weatherSearchQuery, localWeatherForecast);
    }

    private LocalWeatherForecastResult(WeatherSearchQuery weatherSearchQuery, LocalWeatherForecast localWeatherForecast) {
        this.a = weatherSearchQuery;
        this.b = localWeatherForecast;
    }

    public WeatherSearchQuery getWeatherForecastQuery() {
        return this.a;
    }

    public LocalWeatherForecast getForecastResult() {
        return this.b;
    }
}
