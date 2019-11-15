.class public Lcom/amap/api/services/weather/LocalWeatherForecastResult;
.super Ljava/lang/Object;
.source "LocalWeatherForecastResult.java"


# instance fields
.field private a:Lcom/amap/api/services/weather/WeatherSearchQuery;

.field private b:Lcom/amap/api/services/weather/LocalWeatherForecast;


# direct methods
.method private constructor <init>(Lcom/amap/api/services/weather/WeatherSearchQuery;Lcom/amap/api/services/weather/LocalWeatherForecast;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/services/weather/LocalWeatherForecastResult;->a:Lcom/amap/api/services/weather/WeatherSearchQuery;

    iput-object p2, p0, Lcom/amap/api/services/weather/LocalWeatherForecastResult;->b:Lcom/amap/api/services/weather/LocalWeatherForecast;

    return-void
.end method

.method public static createPagedResult(Lcom/amap/api/services/weather/WeatherSearchQuery;Lcom/amap/api/services/weather/LocalWeatherForecast;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 1

    new-instance v0, Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/weather/LocalWeatherForecastResult;-><init>(Lcom/amap/api/services/weather/WeatherSearchQuery;Lcom/amap/api/services/weather/LocalWeatherForecast;)V

    return-object v0
.end method


# virtual methods
.method public getForecastResult()Lcom/amap/api/services/weather/LocalWeatherForecast;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalWeatherForecastResult;->b:Lcom/amap/api/services/weather/LocalWeatherForecast;

    return-object v0
.end method

.method public getWeatherForecastQuery()Lcom/amap/api/services/weather/WeatherSearchQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalWeatherForecastResult;->a:Lcom/amap/api/services/weather/WeatherSearchQuery;

    return-object v0
.end method
