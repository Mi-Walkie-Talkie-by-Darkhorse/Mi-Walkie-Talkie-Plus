.class public final Lcom/amap/api/col/sl/ac;
.super Landroid/os/Handler;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/ac$j;,
        Lcom/amap/api/col/sl/ac$k;,
        Lcom/amap/api/col/sl/ac$l;,
        Lcom/amap/api/col/sl/ac$c;,
        Lcom/amap/api/col/sl/ac$d;,
        Lcom/amap/api/col/sl/ac$f;,
        Lcom/amap/api/col/sl/ac$i;,
        Lcom/amap/api/col/sl/ac$e;,
        Lcom/amap/api/col/sl/ac$h;,
        Lcom/amap/api/col/sl/ac$g;,
        Lcom/amap/api/col/sl/ac$b;,
        Lcom/amap/api/col/sl/ac$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/col/sl/ac;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/col/sl/ac;
    .locals 3

    const-class v1, Lcom/amap/api/col/sl/ac;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/ac;->a:Lcom/amap/api/col/sl/ac;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_2

    :cond_0
    new-instance v0, Lcom/amap/api/col/sl/ac;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/ac;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/amap/api/col/sl/ac;->a:Lcom/amap/api/col/sl/ac;

    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/api/col/sl/ac;->a:Lcom/amap/api/col/sl/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/amap/api/col/sl/ac;

    invoke-direct {v0}, Lcom/amap/api/col/sl/ac;-><init>()V

    sput-object v0, Lcom/amap/api/col/sl/ac;->a:Lcom/amap/api/col/sl/ac;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v3, 0x68

    const/4 v1, 0x0

    const/16 v4, 0x3e8

    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/BusRouteResult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onBusRouteSearched(Lcom/amap/api/services/route/BusRouteResult;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MessageHandler"

    const-string v2, "handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/DriveRouteResult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onDriveRouteSearched(Lcom/amap/api/services/route/DriveRouteResult;I)V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/WalkRouteResult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onWalkRouteSearched(Lcom/amap/api/services/route/WalkRouteResult;I)V

    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/RideRouteResult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onRideRouteSearched(Lcom/amap/api/services/route/RideRouteResult;I)V

    goto/16 :goto_0

    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/RideRouteResult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onRideRouteSearched(Lcom/amap/api/services/route/RideRouteResult;I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/TruckRouteRestult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;->onTruckRouteSearched(Lcom/amap/api/services/route/TruckRouteRestult;I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/sl/ac$a;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/amap/api/col/sl/ac$a;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    if-eqz v2, :cond_0

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_5

    iget-object v1, v0, Lcom/amap/api/col/sl/ac$a;->a:Lcom/amap/api/services/busline/BusLineResult;

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v1, v0}, Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;->onBusLineSearched(Lcom/amap/api/services/busline/BusLineResult;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/district/DistrictResult;

    invoke-interface {v0, v1}, Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;->onDistrictSearched(Lcom/amap/api/services/district/DistrictResult;)V

    goto/16 :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/sl/ac$i;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/sl/ac$i;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/amap/api/col/sl/ac$i;->a:Lcom/amap/api/services/geocoder/RegeocodeResult;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;->onRegeocodeSearched(Lcom/amap/api/services/geocoder/RegeocodeResult;I)V

    goto/16 :goto_0

    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/sl/ac$e;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/sl/ac$e;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/amap/api/col/sl/ac$e;->a:Lcom/amap/api/services/geocoder/GeocodeResult;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;->onGeocodeSearched(Lcom/amap/api/services/geocoder/GeocodeResult;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    if-eqz v0, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_7
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/help/Inputtips$InputtipsListener;->onGetInputtips(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/sl/ac$h;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/sl/ac$h;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/col/sl/ac$h;->a:Lcom/amap/api/services/poisearch/PoiResult;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;->onPoiSearched(Lcom/amap/api/services/poisearch/PoiResult;I)V

    goto/16 :goto_0

    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x25a

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/sl/ac$g;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/sl/ac$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/col/sl/ac$g;->a:Lcom/amap/api/services/core/PoiItem;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;->onPoiItemSearched(Lcom/amap/api/services/core/PoiItem;I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/sl/ac$b;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/amap/api/col/sl/ac$b;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    if-eqz v2, :cond_0

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_9

    iget-object v1, v0, Lcom/amap/api/col/sl/ac$b;->a:Lcom/amap/api/services/busline/BusStationResult;

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v1, v0}, Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;->onBusStationSearched(Lcom/amap/api/services/busline/BusStationResult;I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onUserInfoCleared(I)V

    goto :goto_1

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/sl/ac$f;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/amap/api/col/sl/ac$f;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_a

    iget-object v0, v0, Lcom/amap/api/col/sl/ac$f;->b:Lcom/amap/api/services/nearby/NearbySearchResult;

    move-object v1, v0

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, v3}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onNearbyInfoSearched(Lcom/amap/api/services/nearby/NearbySearchResult;I)V

    goto :goto_2

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onNearbyInfoUploaded(I)V

    goto :goto_3

    :pswitch_b
    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "shareurlkey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_c
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onPoiShareUrlSearched(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onBusRouteShareUrlSearched(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_e
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onDrivingRouteShareUrlSearched(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_f
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onWalkRouteShareUrlSearched(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_10
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onLocationShareUrlSearched(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_11
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onNaviShareUrlSearched(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_12
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/sl/ac$d;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/sl/ac$d;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    iget-object v0, v0, Lcom/amap/api/col/sl/ac$d;->a:Lcom/amap/api/services/cloud/CloudResult;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;->onCloudSearched(Lcom/amap/api/services/cloud/CloudResult;I)V

    goto/16 :goto_0

    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/sl/ac$c;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/sl/ac$c;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    iget-object v0, v0, Lcom/amap/api/col/sl/ac$c;->a:Lcom/amap/api/services/cloud/CloudItemDetail;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;->onCloudItemDetailSearched(Lcom/amap/api/services/cloud/CloudItemDetail;I)V

    goto/16 :goto_0

    :pswitch_13
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x515

    if-ne v0, v1, :cond_c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/sl/ac$l;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/sl/ac$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/col/sl/ac$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;->onWeatherLiveSearched(Lcom/amap/api/services/weather/LocalWeatherLiveResult;I)V

    goto/16 :goto_0

    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x516

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/sl/ac$k;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/sl/ac$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/col/sl/ac$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;->onWeatherForecastSearched(Lcom/amap/api/services/weather/LocalWeatherForecastResult;I)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/sl/ac$j;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/sl/ac$j;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/col/sl/ac$j;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;->onRoutePoiSearched(Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;I)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_d

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/traffic/TrafficStatusResult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;->onRoadTrafficSearched(Lcom/amap/api/services/traffic/TrafficStatusResult;I)V

    goto/16 :goto_0

    :cond_d
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_e

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/traffic/TrafficStatusResult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;->onRoadTrafficSearched(Lcom/amap/api/services/traffic/TrafficStatusResult;I)V

    goto/16 :goto_0

    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x190

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/DistanceResult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;->onDistanceSearched(Lcom/amap/api/services/route/DistanceResult;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44c
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
