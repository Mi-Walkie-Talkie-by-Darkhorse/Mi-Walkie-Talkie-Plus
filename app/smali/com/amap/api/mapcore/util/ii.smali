.class public final Lcom/amap/api/mapcore/util/ii;
.super Ljava/lang/Object;
.source "AMapClientUtils.java"


# direct methods
.method public static a()Lcom/amap/api/location/AMapLocationClientOption;
    .locals 1

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/amap/api/location/AMapLocationClientOption;Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    sget-object v0, Lcom/amap/api/mapcore/util/ii$1;->a:[I

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isNeedAddress()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    :goto_1
    return-void

    :pswitch_0
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/util/ik;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/ik;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ik;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V

    check-cast p0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    return-void
.end method
