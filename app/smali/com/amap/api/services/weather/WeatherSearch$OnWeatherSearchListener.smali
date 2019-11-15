.class public interface abstract Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;
.super Ljava/lang/Object;
.source "WeatherSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/weather/WeatherSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnWeatherSearchListener"
.end annotation


# virtual methods
.method public abstract onWeatherForecastSearched(Lcom/amap/api/services/weather/LocalWeatherForecastResult;I)V
.end method

.method public abstract onWeatherLiveSearched(Lcom/amap/api/services/weather/LocalWeatherLiveResult;I)V
.end method
