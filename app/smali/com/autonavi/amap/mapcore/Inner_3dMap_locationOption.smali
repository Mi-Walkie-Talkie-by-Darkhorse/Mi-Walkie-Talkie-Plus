.class public Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;,
        Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;
    }
.end annotation


# static fields
.field static APIKEY:Ljava/lang/String;

.field private static locationProtocol:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;


# instance fields
.field private httpTimeOut:J

.field private interval:J

.field private isGpsFirst:Z

.field private isKillProcess:Z

.field private isLocationCacheEnable:Z

.field private isMockEnable:Z

.field private isNeedAddress:Z

.field private isOffset:Z

.field private isOnceLocation:Z

.field private isOnceLocationLatest:Z

.field private isWifiActiveScan:Z

.field private isWifiScan:Z

.field private lastWifiActiveScan:Z

.field private locationMode:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

.field private sensorEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;->HTTP:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;

    sput-object v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->locationProtocol:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;

    const-string v0, ""

    sput-object v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->APIKEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->interval:J

    sget v0, Lcom/amap/api/col/l3/lg;->f:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->httpTimeOut:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocation:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isMockEnable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isNeedAddress:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiActiveScan:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->lastWifiActiveScan:Z

    sget-object v2, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Hight_Accuracy:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    iput-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->locationMode:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isKillProcess:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isGpsFirst:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOffset:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isLocationCacheEnable:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocationLatest:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->sensorEnable:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiScan:Z

    return-void
.end method

.method private clone(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;
    .locals 2

    iget-wide v0, p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->interval:J

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->interval:J

    iget-boolean v0, p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocation:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocation:Z

    iget-object v0, p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->locationMode:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->locationMode:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    iget-boolean v0, p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isMockEnable:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isMockEnable:Z

    iget-boolean v0, p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isKillProcess:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isKillProcess:Z

    iget-boolean v0, p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isGpsFirst:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isGpsFirst:Z

    iget-boolean v0, p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isNeedAddress:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isNeedAddress:Z

    iget-boolean v0, p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiActiveScan:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiActiveScan:Z

    iget-wide v0, p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->httpTimeOut:J

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->httpTimeOut:J

    iget-boolean v0, p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOffset:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOffset:Z

    iget-boolean v0, p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isLocationCacheEnable:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isLocationCacheEnable:Z

    iget-boolean v0, p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocationLatest:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocationLatest:Z

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isSensorEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->sensorEnable:Z

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiScan()Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiScan:Z

    return-object p0
.end method

.method public static getAPIKEY()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->APIKEY:Ljava/lang/String;

    return-object v0
.end method

.method public static setLocationProtocol(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;)V
    .locals 0

    sput-object p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->locationProtocol:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;

    return-void
.end method


# virtual methods
.method public clone()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    invoke-direct {v0, p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->clone(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->clone()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    move-result-object v0

    return-object v0
.end method

.method public getHttpTimeOut()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->httpTimeOut:J

    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->interval:J

    return-wide v0
.end method

.method public getLocationMode()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->locationMode:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    return-object v0
.end method

.method public getLocationProtocol()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;
    .locals 1

    sget-object v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->locationProtocol:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;

    return-object v0
.end method

.method public isGpsFirst()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isGpsFirst:Z

    return v0
.end method

.method public isKillProcess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isKillProcess:Z

    return v0
.end method

.method public isLocationCacheEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isLocationCacheEnable:Z

    return v0
.end method

.method public isMockEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isMockEnable:Z

    return v0
.end method

.method public isNeedAddress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isNeedAddress:Z

    return v0
.end method

.method public isOffset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOffset:Z

    return v0
.end method

.method public isOnceLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocationLatest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocation:Z

    return v0
.end method

.method public isOnceLocationLatest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocationLatest:Z

    return v0
.end method

.method public isSensorEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->sensorEnable:Z

    return v0
.end method

.method public isWifiActiveScan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiActiveScan:Z

    return v0
.end method

.method public isWifiScan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiScan:Z

    return v0
.end method

.method public setGpsFirst(Z)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isGpsFirst:Z

    return-object p0
.end method

.method public setHttpTimeOut(J)V
    .locals 0

    iput-wide p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->httpTimeOut:J

    return-void
.end method

.method public setInterval(J)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;
    .locals 3

    const-wide/16 v0, 0x320

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->interval:J

    return-object p0
.end method

.method public setKillProcess(Z)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isKillProcess:Z

    return-object p0
.end method

.method public setLocationCacheEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isLocationCacheEnable:Z

    return-void
.end method

.method public setLocationMode(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->locationMode:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    return-object p0
.end method

.method public setMockEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isMockEnable:Z

    return-void
.end method

.method public setNeedAddress(Z)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isNeedAddress:Z

    return-object p0
.end method

.method public setOffset(Z)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOffset:Z

    return-object p0
.end method

.method public setOnceLocation(Z)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocation:Z

    return-object p0
.end method

.method public setOnceLocationLatest(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocationLatest:Z

    return-void
.end method

.method public setSensorEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->sensorEnable:Z

    return-void
.end method

.method public setWifiActiveScan(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiActiveScan:Z

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->lastWifiActiveScan:Z

    return-void
.end method

.method public setWifiScan(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiScan:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->lastWifiActiveScan:Z

    :goto_0
    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiActiveScan:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->interval:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isOnceLocation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocation:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "locationMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->locationMode:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isMockEnable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isMockEnable:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isKillProcess:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isKillProcess:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isGpsFirst:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isGpsFirst:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isNeedAddress:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isNeedAddress:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isWifiActiveScan:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiActiveScan:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "httpTimeOut:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->httpTimeOut:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isOffset:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOffset:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isLocationCacheEnable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isLocationCacheEnable:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isLocationCacheEnable:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isOnceLocationLatest:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocationLatest:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sensorEnable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->sensorEnable:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
