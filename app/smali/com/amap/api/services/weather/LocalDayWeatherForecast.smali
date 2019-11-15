.class public Lcom/amap/api/services/weather/LocalDayWeatherForecast;
.super Ljava/lang/Object;
.source "LocalDayWeatherForecast.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/weather/LocalDayWeatherForecast;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/services/weather/LocalDayWeatherForecast$1;

    invoke-direct {v0}, Lcom/amap/api/services/weather/LocalDayWeatherForecast$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDayTemp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDayWeather()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDayWindDirection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDayWindPower()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getNightTemp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getNightWeather()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNightWindDirection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getNightWindPower()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->a:Ljava/lang/String;

    return-void
.end method

.method public setDayTemp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->e:Ljava/lang/String;

    return-void
.end method

.method public setDayWeather(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->c:Ljava/lang/String;

    return-void
.end method

.method public setDayWindDirection(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->g:Ljava/lang/String;

    return-void
.end method

.method public setDayWindPower(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->i:Ljava/lang/String;

    return-void
.end method

.method public setNightTemp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->f:Ljava/lang/String;

    return-void
.end method

.method public setNightWeather(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->d:Ljava/lang/String;

    return-void
.end method

.method public setNightWindDirection(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->h:Ljava/lang/String;

    return-void
.end method

.method public setNightWindPower(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->j:Ljava/lang/String;

    return-void
.end method

.method public setWeek(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->b:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
