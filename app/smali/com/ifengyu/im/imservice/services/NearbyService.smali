.class public Lcom/ifengyu/im/imservice/services/NearbyService;
.super Lcom/ifengyu/im/imservice/manager/IMManager;
.source "NearbyService.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;
.implements Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/services/NearbyService$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIMLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

.field private mLocationClient:Lcom/amap/api/location/AMapLocationClient;

.field private mMapLocation:Lcom/amap/api/location/AMapLocation;

.field private mNearbySearch:Lcom/amap/api/services/nearby/NearbySearch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amap/api/services/nearby/NearbySearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/imservice/services/NearbyService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;-><init>()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mIMLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/services/NearbyService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static instance()Lcom/ifengyu/im/imservice/services/NearbyService;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/services/NearbyService$Holder;->INSTANCE:Lcom/ifengyu/im/imservice/services/NearbyService;

    return-object v0
.end method


# virtual methods
.method public doOnStart()V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 8

    sget-object v0, Lcom/ifengyu/im/imservice/services/NearbyService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged#latitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "longitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mMapLocation:Lcom/amap/api/location/AMapLocation;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mIMLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    new-instance v1, Lcom/amap/api/services/nearby/UploadInfo;

    invoke-direct {v1}, Lcom/amap/api/services/nearby/UploadInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/services/nearby/UploadInfo;->setCoordType(I)V

    new-instance v2, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/amap/api/services/nearby/UploadInfo;->setPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/nearby/UploadInfo;->setUserID(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mNearbySearch:Lcom/amap/api/services/nearby/NearbySearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mNearbySearch:Lcom/amap/api/services/nearby/NearbySearch;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/nearby/NearbySearch;->uploadNearbyInfoAsyn(Lcom/amap/api/services/nearby/UploadInfo;)V

    :cond_0
    return-void
.end method

.method public onLoginSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mNearbySearch:Lcom/amap/api/services/nearby/NearbySearch;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/nearby/NearbySearch;->getInstance(Landroid/content/Context;)Lcom/amap/api/services/nearby/NearbySearch;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mNearbySearch:Lcom/amap/api/services/nearby/NearbySearch;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mNearbySearch:Lcom/amap/api/services/nearby/NearbySearch;

    invoke-virtual {v0, p0}, Lcom/amap/api/services/nearby/NearbySearch;->addNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    :cond_2
    return-void
.end method

.method public onNearbyInfoSearched(Lcom/amap/api/services/nearby/NearbySearchResult;I)V
    .locals 4

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/nearby/NearbySearchResult;->getNearbyInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/nearby/NearbySearchResult;->getNearbyInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/nearby/NearbySearchResult;->getNearbyInfoList()Ljava/util/List;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbyInfo;

    invoke-virtual {v0}, Lcom/amap/api/services/nearby/NearbyInfo;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/ifengyu/im/imservice/services/NearbyService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/event/NearbyEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;->QUERY_FAILED:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/im/imservice/event/NearbyEvent;-><init>(Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/im/imservice/services/NearbyService$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/im/imservice/services/NearbyService$1;-><init>(Lcom/ifengyu/im/imservice/services/NearbyService;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->reqUserInfo(Ljava/util/List;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onNearbyInfoUploaded(I)V
    .locals 0

    return-void
.end method

.method public onUserInfoCleared(I)V
    .locals 0

    return-void
.end method

.method public queryNearbyUser()V
    .locals 6

    new-instance v0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    invoke-direct {v0}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mMapLocation:Lcom/amap/api/location/AMapLocation;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/amap/api/services/core/LatLonPoint;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mMapLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mMapLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->setCoordType(I)V

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->setRadius(I)V

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->setTimeRange(I)V

    sget-object v1, Lcom/amap/api/services/nearby/NearbySearchFunctionType;->DISTANCE_SEARCH:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->setType(Lcom/amap/api/services/nearby/NearbySearchFunctionType;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mNearbySearch:Lcom/amap/api/services/nearby/NearbySearch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mNearbySearch:Lcom/amap/api/services/nearby/NearbySearch;

    invoke-virtual {v1, v0}, Lcom/amap/api/services/nearby/NearbySearch;->searchNearbyInfoAsyn(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    iput-object v1, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mNearbySearch:Lcom/amap/api/services/nearby/NearbySearch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mNearbySearch:Lcom/amap/api/services/nearby/NearbySearch;

    invoke-virtual {v0, p0}, Lcom/amap/api/services/nearby/NearbySearch;->removeNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V

    iput-object v1, p0, Lcom/ifengyu/im/imservice/services/NearbyService;->mNearbySearch:Lcom/amap/api/services/nearby/NearbySearch;

    :cond_1
    invoke-static {}, Lcom/amap/api/services/nearby/NearbySearch;->destroy()V

    return-void
.end method
