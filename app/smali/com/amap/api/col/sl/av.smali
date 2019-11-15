.class public final Lcom/amap/api/col/sl/av;
.super Lcom/amap/api/col/sl/ax;
.source "WeatherForecastHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/sl/ax",
        "<",
        "Lcom/amap/api/services/weather/WeatherSearchQuery;",
        "Lcom/amap/api/services/weather/LocalWeatherForecast;",
        ">;"
    }
.end annotation


# instance fields
.field private i:Lcom/amap/api/services/weather/LocalWeatherForecast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/weather/WeatherSearchQuery;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/sl/ax;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    new-instance v0, Lcom/amap/api/services/weather/LocalWeatherForecast;

    invoke-direct {v0}, Lcom/amap/api/services/weather/LocalWeatherForecast;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/av;->i:Lcom/amap/api/services/weather/LocalWeatherForecast;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-static {p1}, Lcom/amap/api/col/sl/z;->e(Ljava/lang/String;)Lcom/amap/api/services/weather/LocalWeatherForecast;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/av;->i:Lcom/amap/api/services/weather/LocalWeatherForecast;

    iget-object v0, p0, Lcom/amap/api/col/sl/av;->i:Lcom/amap/api/services/weather/LocalWeatherForecast;

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "output=json"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/amap/api/col/sl/av;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/weather/WeatherSearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/weather/WeatherSearchQuery;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/sl/av;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, "&extensions=all"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/sl/av;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/sl/bp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/amap/api/col/sl/ax;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
