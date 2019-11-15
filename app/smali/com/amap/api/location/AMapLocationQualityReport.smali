.class public Lcom/amap/api/location/AMapLocationQualityReport;
.super Ljava/lang/Object;
.source "AMapLocationQualityReport.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final GPS_STATUS_MODE_SAVING:I = 0x3

.field public static final GPS_STATUS_NOGPSPERMISSION:I = 0x4

.field public static final GPS_STATUS_NOGPSPROVIDER:I = 0x1

.field public static final GPS_STATUS_OFF:I = 0x2

.field public static final GPS_STATUS_OK:I


# instance fields
.field a:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field private b:Z

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->b:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->c:I

    iput v1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->d:I

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->f:J

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->a:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/amap/api/location/AMapLocationQualityReport;
    .locals 4

    new-instance v1, Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationQualityReport;-><init>()V

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->c:I

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationQualityReport;->setGpsStatus(I)V

    iget v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->d:I

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationQualityReport;->setGPSSatellites(I)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->b:Z

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationQualityReport;->setWifiAble(Z)V

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocationQualityReport;->f:J

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/location/AMapLocationQualityReport;->setNetUseTime(J)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationQualityReport;->setNetworkType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->a:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationQualityReport;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "AMapLocationQualityReport"

    const-string v3, "clone"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationQualityReport;->clone()Lcom/amap/api/location/AMapLocationQualityReport;

    move-result-object v0

    return-object v0
.end method

.method public getAdviseMessage()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->a:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->c:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->c:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->a:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->e:Ljava/lang/String;

    const-string v2, "DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u60a8\u7684\u8bbe\u5907\u672a\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u65e0\u6cd5\u8fdb\u884c\u7f51\u7edc\u5b9a\u4f4d\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->b:Z

    if-nez v1, :cond_2

    const-string v1, "\u60a8\u7684\u8bbe\u5907WIFI\u5f00\u5173\u5df2\u5173\u95ed\uff0c\u6253\u5f00WIFI\u5f00\u5173\u6709\u52a9\u4e8e\u63d0\u9ad8\u5b9a\u4f4d\u7684\u6210\u529f\u7387\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v1, "\u60a8\u7684\u8bbe\u5907\u6ca1\u6709GPS\u6a21\u5757\u6216\u8005GPS\u6a21\u5757\u5f02\u5e38\uff0c\u65e0\u6cd5\u8fdb\u884cGPS\u5b9a\u4f4d\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string v1, "\u60a8\u7684\u8bbe\u7f6e\u7981\u7528\u4e86GPS\u5b9a\u4f4d\u6743\u9650\uff0c\u5f00\u542fGPS\u5b9a\u4f4d\u6743\u9650\u6709\u52a9\u4e8e\u63d0\u9ad8\u5b9a\u4f4d\u7684\u7cbe\u786e\u5ea6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const-string v1, "\u60a8\u7684\u8bbe\u5907\u5f53\u524d\u8bbe\u7f6e\u7684\u5b9a\u4f4d\u6a21\u5f0f\u4e0d\u5305\u542bGPS\u5b9a\u4f4d\uff0c\u9009\u62e9\u5305\u542bGPS\u6a21\u5f0f\u7684\u5b9a\u4f4d\u6a21\u5f0f\u6709\u52a9\u4e8e\u63d0\u9ad8\u5b9a\u4f4d\u7684\u7cbe\u786e\u5ea6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const-string v1, "\u60a8\u7684\u8bbe\u5907\u5173\u95ed\u4e86GPS\u5b9a\u4f4d\u529f\u80fd\uff0c\u5f00\u542fGPS\u5b9a\u4f4d\u529f\u80fd\u6709\u52a9\u4e8e\u63d0\u9ad8\u5b9a\u4f4d\u7684\u7cbe\u786e\u5ea6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->a:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->d:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    const-string v1, "\u5f53\u524dGPS\u4fe1\u53f7\u5f31\uff0c\u4f4d\u7f6e\u66f4\u65b0\u53ef\u80fd\u4f1a\u5ef6\u8fdf\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->e:Ljava/lang/String;

    const-string v2, "2G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u60a8\u7684\u8bbe\u5907\u7f51\u7edc\u72b6\u6001\u4e0d\u592a\u597d\uff0c\u7f51\u7edc\u5b9a\u4f4d\u53ef\u80fd\u4f1a\u6709\u5ef6\u8fdf\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getGPSSatellites()I
    .locals 1

    iget v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->d:I

    return v0
.end method

.method public getGPSStatus()I
    .locals 1

    iget v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->c:I

    return v0
.end method

.method public getNetUseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->f:J

    return-wide v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isWifiAble()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationQualityReport;->b:Z

    return v0
.end method

.method public setGPSSatellites(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->d:I

    return-void
.end method

.method public setGpsStatus(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->c:I

    return-void
.end method

.method public setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->a:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-void
.end method

.method public setNetUseTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->f:J

    return-void
.end method

.method public setNetworkType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->e:Ljava/lang/String;

    return-void
.end method

.method public setWifiAble(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationQualityReport;->b:Z

    return-void
.end method
