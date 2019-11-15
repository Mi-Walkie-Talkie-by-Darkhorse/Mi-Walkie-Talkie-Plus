.class public final Lcom/amap/api/col/sl/z;
.super Ljava/lang/Object;
.source "JSONHelper.java"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "021"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "022"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "023"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "1852"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1853"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/col/sl/z;->a:[Ljava/lang/String;

    return-void
.end method

.method private static A(Lorg/json/JSONObject;)Lcom/amap/api/services/traffic/TrafficStatusInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/services/traffic/TrafficStatusInfo;

    invoke-direct {v0}, Lcom/amap/api/services/traffic/TrafficStatusInfo;-><init>()V

    :try_start_0
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/traffic/TrafficStatusInfo;->setName(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/traffic/TrafficStatusInfo;->setStatus(Ljava/lang/String;)V

    const-string v1, "angle"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/traffic/TrafficStatusInfo;->setAngle(I)V

    const-string v1, "speed"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/traffic/TrafficStatusInfo;->setSpeed(F)V

    const-string v1, "direction"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/traffic/TrafficStatusInfo;->setDirection(Ljava/lang/String;)V

    const-string v1, "lcodes"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/traffic/TrafficStatusInfo;->setLcodes(Ljava/lang/String;)V

    const-string v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/traffic/TrafficStatusInfo;->setCoordinates(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseRoadInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lcom/amap/api/services/route/BusRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "route"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/amap/api/services/route/BusRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/BusRouteResult;-><init>()V

    const-string v2, "route"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "origin"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v2, "destination"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v2, "taxi_cost"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setTaxiCost(F)V

    const-string v2, "transits"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "transits"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "cities"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cities"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "citycode"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "adcode"

    invoke-static {v3, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "num"

    invoke-static {v3, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v3

    new-instance v7, Lcom/amap/api/services/core/SuggestionCity;

    invoke-direct {v7, v4, v5, v6, v3}, Lcom/amap/api/services/core/SuggestionCity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/nearby/NearbyInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "datas"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v7, :cond_4

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v0, "userid"

    invoke-static {v8, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "location"

    invoke-static {v8, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    if-eqz v10, :cond_2

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->o(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v0, 0x1

    aget-object v0, v10, v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->o(Ljava/lang/String;)D

    move-result-wide v0

    :cond_2
    const-string v10, "distance"

    invoke-static {v8, v10}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "updatetime"

    invoke-static {v8, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/col/sl/z;->p(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v10}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v8

    new-instance v10, Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    new-instance v0, Lcom/amap/api/services/nearby/NearbyInfo;

    invoke-direct {v0}, Lcom/amap/api/services/nearby/NearbyInfo;-><init>()V

    invoke-virtual {v0, v9}, Lcom/amap/api/services/nearby/NearbyInfo;->setUserID(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Lcom/amap/api/services/nearby/NearbyInfo;->setTimeStamp(J)V

    invoke-virtual {v0, v10}, Lcom/amap/api/services/nearby/NearbyInfo;->setPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    if-eqz p1, :cond_3

    invoke-virtual {v0, v8}, Lcom/amap/api/services/nearby/NearbyInfo;->setDrivingDistance(I)V

    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v8}, Lcom/amap/api/services/nearby/NearbyInfo;->setDistance(I)V

    goto :goto_2

    :cond_4
    move-object v0, v4

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/BusPath;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_10

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v7, Lcom/amap/api/services/route/BusPath;

    invoke-direct {v7}, Lcom/amap/api/services/route/BusPath;-><init>()V

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v4, "cost"

    invoke-static {v0, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v7, v4}, Lcom/amap/api/services/route/BusPath;->setCost(F)V

    const-string v4, "duration"

    invoke-static {v0, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->p(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/amap/api/services/route/BusPath;->setDuration(J)V

    const-string v4, "nightflag"

    invoke-static {v0, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->q(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v7, v4}, Lcom/amap/api/services/route/BusPath;->setNightBus(Z)V

    const-string v4, "walking_distance"

    invoke-static {v0, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v7, v4}, Lcom/amap/api/services/route/BusPath;->setWalkDistance(F)V

    const-string v4, "distance"

    invoke-static {v0, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v7, v4}, Lcom/amap/api/services/route/BusPath;->setDistance(F)V

    const-string v4, "segments"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_f

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v13, v0

    move v0, v2

    move v2, v13

    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_e

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_13

    if-nez v10, :cond_2

    const/4 v4, 0x0

    move-object v6, v4

    :cond_1
    :goto_3
    if-eqz v6, :cond_13

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v6}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/services/route/RouteBusWalkItem;->getDistance()F

    move-result v4

    add-float/2addr v0, v4

    move v4, v0

    :goto_4
    invoke-virtual {v6}, Lcom/amap/api/services/route/BusStep;->getBusLines()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v6}, Lcom/amap/api/services/route/BusStep;->getBusLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {v6}, Lcom/amap/api/services/route/BusStep;->getBusLines()Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteBusLineItem;

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteBusLineItem;->getDistance()F

    move-result v0

    add-float/2addr v3, v0

    move v13, v4

    move v4, v3

    move v3, v13

    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    move v3, v4

    goto :goto_2

    :cond_2
    new-instance v6, Lcom/amap/api/services/route/BusStep;

    invoke-direct {v6}, Lcom/amap/api/services/route/BusStep;-><init>()V

    const-string v4, "walking"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->o(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/amap/api/services/route/BusStep;->setWalk(Lcom/amap/api/services/route/RouteBusWalkItem;)V

    :cond_3
    const-string v4, "bus"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->p(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/amap/api/services/route/BusStep;->setBusLines(Ljava/util/List;)V

    :cond_4
    const-string v4, "entrance"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->q(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/amap/api/services/route/BusStep;->setEntrance(Lcom/amap/api/services/route/Doorway;)V

    :cond_5
    const-string v4, "exit"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->q(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/amap/api/services/route/BusStep;->setExit(Lcom/amap/api/services/route/Doorway;)V

    :cond_6
    const-string v4, "railway"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_7

    if-nez v11, :cond_a

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v6, v4}, Lcom/amap/api/services/route/BusStep;->setRailway(Lcom/amap/api/services/route/RouteRailwayItem;)V

    :cond_7
    const-string v4, "taxi"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_8

    if-nez v10, :cond_d

    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v6, v4}, Lcom/amap/api/services/route/BusStep;->setTaxi(Lcom/amap/api/services/route/TaxiItem;)V

    :cond_8
    invoke-virtual {v6}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v6}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_9
    invoke-virtual {v6}, Lcom/amap/api/services/route/BusStep;->getBusLines()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v6}, Lcom/amap/api/services/route/BusStep;->getRailway()Lcom/amap/api/services/route/RouteRailwayItem;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v6}, Lcom/amap/api/services/route/BusStep;->getTaxi()Lcom/amap/api/services/route/TaxiItem;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move-object v6, v4

    goto/16 :goto_3

    :cond_a
    const-string v4, "id"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "name"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    const/4 v4, 0x0

    goto :goto_6

    :cond_c
    new-instance v4, Lcom/amap/api/services/route/RouteRailwayItem;

    invoke-direct {v4}, Lcom/amap/api/services/route/RouteRailwayItem;-><init>()V

    const-string v12, "id"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/amap/api/services/route/RouteRailwayItem;->setID(Ljava/lang/String;)V

    const-string v12, "name"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/amap/api/services/route/RouteRailwayItem;->setName(Ljava/lang/String;)V

    const-string v12, "time"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/amap/api/services/route/RouteRailwayItem;->setTime(Ljava/lang/String;)V

    const-string v12, "trip"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/amap/api/services/route/RouteRailwayItem;->setTrip(Ljava/lang/String;)V

    const-string v12, "distance"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v4, v12}, Lcom/amap/api/services/route/RouteRailwayItem;->setDistance(F)V

    const-string v12, "type"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/amap/api/services/route/RouteRailwayItem;->setType(Ljava/lang/String;)V

    const-string v12, "departure_stop"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/amap/api/col/sl/z;->t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwayStationItem;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/amap/api/services/route/RouteRailwayItem;->setDeparturestop(Lcom/amap/api/services/route/RailwayStationItem;)V

    const-string v12, "arrival_stop"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/amap/api/col/sl/z;->t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwayStationItem;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/amap/api/services/route/RouteRailwayItem;->setArrivalstop(Lcom/amap/api/services/route/RailwayStationItem;)V

    invoke-static {v11}, Lcom/amap/api/col/sl/z;->u(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/amap/api/services/route/RouteRailwayItem;->setViastops(Ljava/util/List;)V

    invoke-static {v11}, Lcom/amap/api/col/sl/z;->v(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/amap/api/services/route/RouteRailwayItem;->setAlters(Ljava/util/List;)V

    invoke-static {v11}, Lcom/amap/api/col/sl/z;->w(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/amap/api/services/route/RouteRailwayItem;->setSpaces(Ljava/util/List;)V

    goto/16 :goto_6

    :cond_d
    new-instance v4, Lcom/amap/api/services/route/TaxiItem;

    invoke-direct {v4}, Lcom/amap/api/services/route/TaxiItem;-><init>()V

    const-string v11, "origin"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/amap/api/services/route/TaxiItem;->setOrigin(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v11, "destination"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/amap/api/services/route/TaxiItem;->setDestination(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v11, "distance"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v4, v11}, Lcom/amap/api/services/route/TaxiItem;->setDistance(F)V

    const-string v11, "duration"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v4, v11}, Lcom/amap/api/services/route/TaxiItem;->setDuration(F)V

    const-string v11, "sname"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/amap/api/services/route/TaxiItem;->setSname(Ljava/lang/String;)V

    const-string v11, "tname"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/amap/api/services/route/TaxiItem;->setTname(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_e
    invoke-virtual {v7, v9}, Lcom/amap/api/services/route/BusPath;->setSteps(Ljava/util/List;)V

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/BusPath;->setBusDistance(F)V

    invoke-virtual {v7, v0}, Lcom/amap/api/services/route/BusPath;->setWalkDistance(F)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_10
    move-object v0, v5

    goto/16 :goto_0

    :cond_11
    move v13, v4

    move v4, v3

    move v3, v13

    goto/16 :goto_5

    :cond_12
    move v4, v0

    goto/16 :goto_4

    :cond_13
    move v4, v3

    move v3, v0

    goto/16 :goto_5
.end method

.method private static a(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "tmcs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v3, Lcom/amap/api/services/route/TMC;

    invoke-direct {v3}, Lcom/amap/api/services/route/TMC;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "distance"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/TMC;->setDistance(I)V

    const-string v5, "status"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/TMC;->setStatus(Ljava/lang/String;)V

    const-string v5, "polyline"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/route/TMC;->setPolyline(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/DriveStep;->setTMCs(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseTMCs"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/amap/api/services/route/RouteSearchCity;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const-string v0, "districts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "districts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/RouteSearchCity;->setDistricts(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseCrossDistricts"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/amap/api/services/route/District;

    invoke-direct {v3}, Lcom/amap/api/services/route/District;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/District;->setDistrictName(Ljava/lang/String;)V

    const-string v5, "adcode"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/route/District;->setDistrictAdcode(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/RouteSearchCity;->setDistricts(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Lcom/amap/api/services/route/TruckStep;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "cities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v3, Lcom/amap/api/services/route/RouteSearchCity;

    invoke-direct {v3}, Lcom/amap/api/services/route/RouteSearchCity;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCityName(Ljava/lang/String;)V

    const-string v5, "citycode"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCitycode(Ljava/lang/String;)V

    const-string v5, "adcode"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCityhAdCode(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lcom/amap/api/services/route/RouteSearchCity;Lorg/json/JSONObject;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/TruckStep;->setRouteSearchCityList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseCrossCity"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/amap/api/services/road/Crossroad;

    invoke-direct {v2}, Lcom/amap/api/services/road/Crossroad;-><init>()V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setId(Ljava/lang/String;)V

    const-string v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setDirection(Ljava/lang/String;)V

    const-string v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setDistance(F)V

    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v4, "first_id"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setFirstRoadId(Ljava/lang/String;)V

    const-string v4, "first_name"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setFirstRoadName(Ljava/lang/String;)V

    const-string v4, "second_id"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setSecondRoadId(Ljava/lang/String;)V

    const-string v4, "second_name"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/road/Crossroad;->setSecondRoadName(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCrossroads(Ljava/util/List;)V

    return-void
.end method

.method public static a(Lorg/json/JSONArray;Ljava/util/ArrayList;Lcom/amap/api/services/district/DistrictItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;",
            "Lcom/amap/api/services/district/DistrictItem;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Lcom/amap/api/services/district/DistrictItem;

    invoke-direct {v2}, Lcom/amap/api/services/district/DistrictItem;-><init>()V

    const-string v3, "citycode"

    invoke-static {v1, v3}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/district/DistrictItem;->setCitycode(Ljava/lang/String;)V

    const-string v3, "adcode"

    invoke-static {v1, v3}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/district/DistrictItem;->setAdcode(Ljava/lang/String;)V

    const-string v3, "name"

    invoke-static {v1, v3}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/district/DistrictItem;->setName(Ljava/lang/String;)V

    const-string v3, "level"

    invoke-static {v1, v3}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/district/DistrictItem;->setLevel(Ljava/lang/String;)V

    const-string v3, "center"

    invoke-static {v1, v3}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/district/DistrictItem;->setCenter(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v3, "polyline"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "polyline"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/district/DistrictItem;->setDistrictBoundary([Ljava/lang/String;)V

    :cond_2
    const-string v3, "districts"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v3, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONArray;Ljava/util/ArrayList;Lcom/amap/api/services/district/DistrictItem;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/amap/api/services/district/DistrictItem;->setSubDistrict(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "country"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCountry(Ljava/lang/String;)V

    const-string v0, "province"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setProvince(Ljava/lang/String;)V

    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCity(Ljava/lang/String;)V

    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCityCode(Ljava/lang/String;)V

    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setAdCode(Ljava/lang/String;)V

    const-string v0, "district"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setDistrict(Ljava/lang/String;)V

    const-string v0, "township"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setTownship(Ljava/lang/String;)V

    const-string v0, "neighborhood"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setNeighborhood(Ljava/lang/String;)V

    const-string v0, "building"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setBuilding(Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/geocoder/StreetNumber;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/StreetNumber;-><init>()V

    const-string v1, "streetNumber"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "street"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setStreet(Ljava/lang/String;)V

    const-string v2, "number"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setNumber(Ljava/lang/String;)V

    const-string v2, "location"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v2, "direction"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setDirection(Ljava/lang/String;)V

    const-string v2, "distance"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/geocoder/StreetNumber;->setDistance(F)V

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setStreetNumber(Lcom/amap/api/services/geocoder/StreetNumber;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "businessAreas"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setBusinessAreas(Ljava/util/List;)V

    const-string v0, "towncode"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setTowncode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getCityCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCity(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    new-instance v3, Lcom/amap/api/services/geocoder/BusinessArea;

    invoke-direct {v3}, Lcom/amap/api/services/geocoder/BusinessArea;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "location"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/geocoder/BusinessArea;->setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/geocoder/BusinessArea;->setName(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->l(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/amap/api/services/route/DriveRouteResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "route"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/amap/api/services/route/DriveRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/DriveRouteResult;-><init>()V

    const-string v3, "route"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "origin"

    invoke-static {v1, v3}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v3, "destination"

    invoke-static {v1, v3}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v3, "taxi_cost"

    invoke-static {v1, v3}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setTaxiCost(F)V

    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_5

    new-instance v6, Lcom/amap/api/services/route/DrivePath;

    invoke-direct {v6}, Lcom/amap/api/services/route/DrivePath;-><init>()V

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v7, "distance"

    invoke-static {v1, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setDistance(F)V

    const-string v7, "duration"

    invoke-static {v1, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/col/sl/z;->p(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/amap/api/services/route/DrivePath;->setDuration(J)V

    const-string v7, "strategy"

    invoke-static {v1, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setStrategy(Ljava/lang/String;)V

    const-string v7, "tolls"

    invoke-static {v1, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setTolls(F)V

    const-string v7, "toll_distance"

    invoke-static {v1, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setTollDistance(F)V

    const-string v7, "traffic_lights"

    invoke-static {v1, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setTotalTrafficlights(I)V

    const-string v7, "restriction"

    invoke-static {v1, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setRestriction(I)V

    const-string v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_3

    new-instance v9, Lcom/amap/api/services/route/DriveStep;

    invoke-direct {v9}, Lcom/amap/api/services/route/DriveStep;-><init>()V

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v11, "instruction"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setInstruction(Ljava/lang/String;)V

    const-string v11, "orientation"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setOrientation(Ljava/lang/String;)V

    const-string v11, "road"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setRoad(Ljava/lang/String;)V

    const-string v11, "distance"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setDistance(F)V

    const-string v11, "tolls"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setTolls(F)V

    const-string v11, "toll_distance"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setTollDistance(F)V

    const-string v11, "toll_road"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setTollRoad(Ljava/lang/String;)V

    const-string v11, "duration"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setDuration(F)V

    const-string v11, "polyline"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setPolyline(Ljava/util/List;)V

    const-string v11, "action"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setAction(Ljava/lang/String;)V

    const-string v11, "assistant_action"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setAssistantAction(Ljava/lang/String;)V

    invoke-static {v9, v10}, Lcom/amap/api/col/sl/z;->b(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V

    invoke-static {v9, v10}, Lcom/amap/api/col/sl/z;->a(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v6, v8}, Lcom/amap/api/services/route/DrivePath;->setSteps(Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0, v5}, Lcom/amap/api/services/route/DriveRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseDriveRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseDriveRouteThrowable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "keywords"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "cities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v3, Lcom/amap/api/services/route/RouteSearchCity;

    invoke-direct {v3}, Lcom/amap/api/services/route/RouteSearchCity;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCityName(Ljava/lang/String;)V

    const-string v5, "citycode"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCitycode(Ljava/lang/String;)V

    const-string v5, "adcode"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCityhAdCode(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lcom/amap/api/services/route/RouteSearchCity;Lorg/json/JSONObject;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/DriveStep;->setRouteSearchCityList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseCrossCity"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Lcom/amap/api/services/route/TruckStep;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "tmcs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v3, Lcom/amap/api/services/route/TMC;

    invoke-direct {v3}, Lcom/amap/api/services/route/TMC;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "distance"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/TMC;->setDistance(I)V

    const-string v5, "status"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/TMC;->setStatus(Ljava/lang/String;)V

    const-string v5, "polyline"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/route/TMC;->setPolyline(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/TruckStep;->setTMCs(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseTMCs"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/amap/api/services/geocoder/RegeocodeRoad;

    invoke-direct {v2}, Lcom/amap/api/services/geocoder/RegeocodeRoad;-><init>()V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setId(Ljava/lang/String;)V

    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setName(Ljava/lang/String;)V

    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setLatLngPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setDirection(Ljava/lang/String;)V

    const-string v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setDistance(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setRoads(Ljava/util/List;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/amap/api/services/route/WalkRouteResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "route"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/amap/api/services/route/WalkRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/WalkRouteResult;-><init>()V

    const-string v3, "route"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "origin"

    invoke-static {v1, v3}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/WalkRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v3, "destination"

    invoke-static {v1, v3}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/WalkRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v4}, Lcom/amap/api/services/route/WalkRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseWalkRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v3, v2

    :goto_1
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_7

    new-instance v6, Lcom/amap/api/services/route/WalkPath;

    invoke-direct {v6}, Lcom/amap/api/services/route/WalkPath;-><init>()V

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v7, "distance"

    invoke-static {v1, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/WalkPath;->setDistance(F)V

    const-string v7, "duration"

    invoke-static {v1, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/col/sl/z;->p(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/amap/api/services/route/WalkPath;->setDuration(J)V

    const-string v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_4

    new-instance v9, Lcom/amap/api/services/route/WalkStep;

    invoke-direct {v9}, Lcom/amap/api/services/route/WalkStep;-><init>()V

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_3

    const-string v11, "instruction"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setInstruction(Ljava/lang/String;)V

    const-string v11, "orientation"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setOrientation(Ljava/lang/String;)V

    const-string v11, "road"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setRoad(Ljava/lang/String;)V

    const-string v11, "distance"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setDistance(F)V

    const-string v11, "duration"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setDuration(F)V

    const-string v11, "polyline"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setPolyline(Ljava/util/List;)V

    const-string v11, "action"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setAction(Ljava/lang/String;)V

    const-string v11, "assistant_action"

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/amap/api/services/route/WalkStep;->setAssistantAction(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v8}, Lcom/amap/api/services/route/WalkPath;->setSteps(Ljava/util/List;)V

    :cond_5
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0, v4}, Lcom/amap/api/services/route/WalkRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static c(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "pois"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/amap/api/col/sl/z;->d(Lorg/json/JSONObject;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/amap/api/col/sl/z;->l(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static c(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/amap/api/services/geocoder/AoiItem;

    invoke-direct {v2}, Lcom/amap/api/services/geocoder/AoiItem;-><init>()V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setId(Ljava/lang/String;)V

    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setName(Ljava/lang/String;)V

    const-string v4, "adcode"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setAdcode(Ljava/lang/String;)V

    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setLocation(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v4, "area"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/geocoder/AoiItem;->setArea(Ljava/lang/Float;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setAois(Ljava/util/List;)V

    return-void
.end method

.method public static d(Lorg/json/JSONObject;)Lcom/amap/api/services/core/PoiItem;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "location"

    invoke-static {p0, v3}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    const-string v4, "name"

    invoke-static {p0, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    invoke-static {p0, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/amap/api/services/core/PoiItem;

    invoke-direct {v6, v0, v3, v4, v5}, Lcom/amap/api/services/core/PoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setAdCode(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setProvinceName(Ljava/lang/String;)V

    const-string v0, "cityname"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setCityName(Ljava/lang/String;)V

    const-string v0, "adname"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setAdName(Ljava/lang/String;)V

    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setCityCode(Ljava/lang/String;)V

    const-string v0, "pcode"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setProvinceCode(Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setDirection(Ljava/lang/String;)V

    const-string v0, "distance"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->f(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setDistance(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    const-string v0, "tel"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setTel(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setTypeDes(Ljava/lang/String;)V

    const-string v0, "entr_location"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setEnter(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v0, "exit_location"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setExit(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v0, "website"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setWebsite(Ljava/lang/String;)V

    const-string v0, "postcode"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setPostcode(Ljava/lang/String;)V

    const-string v0, "business_area"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setBusinessArea(Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setEmail(Ljava/lang/String;)V

    const-string v0, "indoor_map"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v6, v1}, Lcom/amap/api/services/core/PoiItem;->setIndoorMap(Z)V

    :goto_2
    const-string v0, "parking_type"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setParkingType(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "children"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "children"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->j(Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/SubPoiItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v3, "JSONHelper"

    const-string v4, "parseBasePoi"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v3, "JSONHelper"

    const-string v4, "parseBasePoi"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v2}, Lcom/amap/api/services/core/PoiItem;->setIndoorMap(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {v6, v2}, Lcom/amap/api/services/core/PoiItem;->setSubPois(Ljava/util/List;)V

    :cond_6
    const-string v3, "indoor_data"

    const-string v2, ""

    const-string v0, ""

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "cpid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "floor"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, "cpid"

    invoke-static {v3, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "floor"

    invoke-static {v3, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v1

    const-string v0, "truefloor"

    invoke-static {v3, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    new-instance v3, Lcom/amap/api/services/poisearch/IndoorData;

    invoke-direct {v3, v2, v1, v0}, Lcom/amap/api/services/poisearch/IndoorData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/amap/api/services/core/PoiItem;->setIndoorDate(Lcom/amap/api/services/poisearch/IndoorData;)V

    const-string v2, "biz_ext"

    const-string v1, ""

    const-string v0, ""

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v0, "open_time"

    invoke-static {v2, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "rating"

    invoke-static {v2, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    new-instance v2, Lcom/amap/api/services/poisearch/PoiItemExtension;

    invoke-direct {v2, v1, v0}, Lcom/amap/api/services/poisearch/PoiItemExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/amap/api/services/core/PoiItem;->setPoiExtension(Lcom/amap/api/services/poisearch/PoiItemExtension;)V

    const-string v0, "typecode"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setTypeCode(Ljava/lang/String;)V

    const-string v0, "shopid"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setShopID(Ljava/lang/String;)V

    const-string v0, "deep_info"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->x(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    invoke-static {p0}, Lcom/amap/api/col/sl/z;->x(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    :cond_9
    invoke-virtual {v6, v0}, Lcom/amap/api/services/core/PoiItem;->setPhotos(Ljava/util/List;)V

    return-object v6
.end method

.method public static d(Ljava/lang/String;)Lcom/amap/api/services/weather/LocalWeatherLive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "lives"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/amap/api/services/weather/LocalWeatherLive;

    invoke-direct {v0}, Lcom/amap/api/services/weather/LocalWeatherLive;-><init>()V

    const-string v2, "lives"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "adcode"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setAdCode(Ljava/lang/String;)V

    const-string v2, "province"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setProvince(Ljava/lang/String;)V

    const-string v2, "city"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setCity(Ljava/lang/String;)V

    const-string v2, "weather"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setWeather(Ljava/lang/String;)V

    const-string v2, "temperature"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setTemperature(Ljava/lang/String;)V

    const-string v2, "winddirection"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setWindDirection(Ljava/lang/String;)V

    const-string v2, "windpower"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setWindPower(Ljava/lang/String;)V

    const-string v2, "humidity"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setHumidity(Ljava/lang/String;)V

    const-string v2, "reporttime"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/weather/LocalWeatherLive;->setReportTime(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "WeatherForecastResult"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Ljava/lang/String;)Lcom/amap/api/services/weather/LocalWeatherForecast;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "forecasts"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/amap/api/services/weather/LocalWeatherForecast;

    invoke-direct {v0}, Lcom/amap/api/services/weather/LocalWeatherForecast;-><init>()V

    const-string v3, "forecasts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "city"

    invoke-static {v2, v3}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setCity(Ljava/lang/String;)V

    const-string v3, "adcode"

    invoke-static {v2, v3}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setAdCode(Ljava/lang/String;)V

    const-string v3, "province"

    invoke-static {v2, v3}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setProvince(Ljava/lang/String;)V

    const-string v3, "reporttime"

    invoke-static {v2, v3}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setReportTime(Ljava/lang/String;)V

    const-string v3, "casts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "casts"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_2
    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setWeatherForecast(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "WeatherForecastResult"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    new-instance v4, Lcom/amap/api/services/weather/LocalDayWeatherForecast;

    invoke-direct {v4}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "date"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDate(Ljava/lang/String;)V

    const-string v6, "week"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setWeek(Ljava/lang/String;)V

    const-string v6, "dayweather"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDayWeather(Ljava/lang/String;)V

    const-string v6, "nightweather"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setNightWeather(Ljava/lang/String;)V

    const-string v6, "daytemp"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDayTemp(Ljava/lang/String;)V

    const-string v6, "nighttemp"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setNightTemp(Ljava/lang/String;)V

    const-string v6, "daywind"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDayWindDirection(Ljava/lang/String;)V

    const-string v6, "nightwind"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setNightWindDirection(Ljava/lang/String;)V

    const-string v6, "daypower"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDayWindPower(Ljava/lang/String;)V

    const-string v6, "nightpower"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setNightWindPower(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setWeatherForecast(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static e(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "busstops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/amap/api/col/sl/z;->k(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static f(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/amap/api/col/sl/z;->n(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Lcom/amap/api/services/route/RideRouteResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amap/api/services/route/RideRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/RideRouteResult;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "origin"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/RideRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v2, "destination"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/RideRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/RideRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseRideRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->z(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RidePath;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "path"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/RideRouteResult;->setPaths(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    const-string v3, "path"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/sl/z;->z(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RidePath;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/RideRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static g(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "geocodes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Lcom/amap/api/services/geocoder/GeocodeAddress;

    invoke-direct {v4}, Lcom/amap/api/services/geocoder/GeocodeAddress;-><init>()V

    const-string v5, "formatted_address"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setFormatAddress(Ljava/lang/String;)V

    const-string v5, "province"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setProvince(Ljava/lang/String;)V

    const-string v5, "city"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setCity(Ljava/lang/String;)V

    const-string v5, "district"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setDistrict(Ljava/lang/String;)V

    const-string v5, "township"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setTownship(Ljava/lang/String;)V

    const-string v5, "neighborhood"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setNeighborhood(Ljava/lang/String;)V

    const-string v5, "building"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setBuilding(Ljava/lang/String;)V

    const-string v5, "adcode"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setAdcode(Ljava/lang/String;)V

    const-string v5, "location"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v5, "level"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setLevel(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static h(Ljava/lang/String;)Lcom/amap/api/services/traffic/TrafficStatusResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "trafficinfo"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/amap/api/services/traffic/TrafficStatusResult;

    invoke-direct {v0}, Lcom/amap/api/services/traffic/TrafficStatusResult;-><init>()V

    const-string v2, "trafficinfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "description"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/traffic/TrafficStatusResult;->setDescription(Ljava/lang/String;)V

    const-string v2, "evaluation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/amap/api/services/traffic/TrafficStatusEvaluation;

    invoke-direct {v2}, Lcom/amap/api/services/traffic/TrafficStatusEvaluation;-><init>()V

    const-string v3, "evaluation"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "expedite"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/traffic/TrafficStatusEvaluation;->setExpedite(Ljava/lang/String;)V

    const-string v4, "congested"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/traffic/TrafficStatusEvaluation;->setCongested(Ljava/lang/String;)V

    const-string v4, "blocked"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/traffic/TrafficStatusEvaluation;->setBlocked(Ljava/lang/String;)V

    const-string v4, "unknown"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/traffic/TrafficStatusEvaluation;->setUnknown(Ljava/lang/String;)V

    const-string v4, "status"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/traffic/TrafficStatusEvaluation;->setStatus(Ljava/lang/String;)V

    const-string v4, "description"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/traffic/TrafficStatusEvaluation;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/amap/api/services/traffic/TrafficStatusResult;->setEvaluation(Lcom/amap/api/services/traffic/TrafficStatusEvaluation;)V

    :cond_2
    const-string v2, "roads"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "roads"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/amap/api/services/traffic/TrafficStatusResult;->setRoads(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseRideRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_1
    instance-of v3, v3, Lorg/json/JSONArray;

    if-eqz v3, :cond_5

    const-string v3, "roads"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->A(Lorg/json/JSONObject;)Lcom/amap/api/services/traffic/TrafficStatusInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v2}, Lcom/amap/api/services/traffic/TrafficStatusResult;->setRoads(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static h(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "tips"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    new-instance v4, Lcom/amap/api/services/help/Tip;

    invoke-direct {v4}, Lcom/amap/api/services/help/Tip;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setName(Ljava/lang/String;)V

    const-string v6, "district"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setDistrict(Ljava/lang/String;)V

    const-string v6, "adcode"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setAdcode(Ljava/lang/String;)V

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setID(Ljava/lang/String;)V

    const-string v6, "address"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setAddress(Ljava/lang/String;)V

    const-string v6, "typecode"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setTypeCode(Ljava/lang/String;)V

    const-string v6, "location"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    new-instance v6, Lcom/amap/api/services/core/LatLonPoint;

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aget-object v5, v5, v1

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setPostion(Lcom/amap/api/services/core/LatLonPoint;)V

    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Lcom/amap/api/services/route/DistanceResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "results"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amap/api/services/route/DistanceResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/DistanceResult;-><init>()V

    const-string v2, "results"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    new-instance v5, Lcom/amap/api/services/route/DistanceItem;

    invoke-direct {v5}, Lcom/amap/api/services/route/DistanceItem;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "origin_id"

    invoke-static {v6, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/amap/api/services/route/DistanceItem;->setOriginId(I)V

    const-string v7, "dest_id"

    invoke-static {v6, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/amap/api/services/route/DistanceItem;->setDestId(I)V

    const-string v7, "distance"

    invoke-static {v6, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v5, v7}, Lcom/amap/api/services/route/DistanceItem;->setDistance(F)V

    const-string v7, "duration"

    invoke-static {v6, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v5, v7}, Lcom/amap/api/services/route/DistanceItem;->setDuration(F)V

    const-string v7, "info"

    invoke-static {v6, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5, v7}, Lcom/amap/api/services/route/DistanceItem;->setErrorInfo(Ljava/lang/String;)V

    const-string v7, "code"

    invoke-static {v6, v7}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/services/route/DistanceItem;->setErrorCode(I)V

    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DistanceResult;->setDistanceResults(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseRouteDistance"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/routepoisearch/RoutePOIItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "pois"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_4

    const-string v0, "pois"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/amap/api/col/sl/z;->y(Lorg/json/JSONObject;)Lcom/amap/api/services/routepoisearch/RoutePOIItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "poi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->y(Lorg/json/JSONObject;)Lcom/amap/api/services/routepoisearch/RoutePOIItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private static j(Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/SubPoiItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    const-string v2, "name"

    invoke-static {p0, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "address"

    invoke-static {p0, v3}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/amap/api/services/poisearch/SubPoiItem;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/services/poisearch/SubPoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sname"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/SubPoiItem;->setSubName(Ljava/lang/String;)V

    const-string v0, "subtype"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/SubPoiItem;->setSubTypeDes(Ljava/lang/String;)V

    const-string v0, "distance"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/SubPoiItem;->setDistance(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseSubPoiItem"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseSubPoiItem"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Lcom/amap/api/services/route/TruckRouteRestult;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/amap/api/services/route/TruckRouteRestult;

    invoke-direct {v0}, Lcom/amap/api/services/route/TruckRouteRestult;-><init>()V

    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "route"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "origin"

    invoke-static {v1, v3}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/TruckRouteRestult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v3, "destination"

    invoke-static {v1, v3}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/TruckRouteRestult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_5

    new-instance v7, Lcom/amap/api/services/route/TruckPath;

    invoke-direct {v7}, Lcom/amap/api/services/route/TruckPath;-><init>()V

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v8, "distance"

    invoke-static {v1, v8}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/amap/api/services/route/TruckPath;->setDistance(F)V

    const-string v8, "duration"

    invoke-static {v1, v8}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/col/sl/z;->p(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/amap/api/services/route/TruckPath;->setDuration(J)V

    const-string v8, "strategy"

    invoke-static {v1, v8}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amap/api/services/route/TruckPath;->setStrategy(Ljava/lang/String;)V

    const-string v8, "tolls"

    invoke-static {v1, v8}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/amap/api/services/route/TruckPath;->setTolls(F)V

    const-string v8, "toll_distance"

    invoke-static {v1, v8}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/amap/api/services/route/TruckPath;->setTollDistance(F)V

    const-string v8, "traffic_lights"

    invoke-static {v1, v8}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/amap/api/services/route/TruckPath;->setTotalTrafficlights(I)V

    const-string v8, "restriction"

    invoke-static {v1, v8}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/amap/api/services/route/TruckPath;->setRestriction(I)V

    const-string v8, "steps"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_3

    new-instance v10, Lcom/amap/api/services/route/TruckStep;

    invoke-direct {v10}, Lcom/amap/api/services/route/TruckStep;-><init>()V

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_2

    const-string v12, "instruction"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/amap/api/services/route/TruckStep;->setInstruction(Ljava/lang/String;)V

    const-string v12, "orientation"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/amap/api/services/route/TruckStep;->setOrientation(Ljava/lang/String;)V

    const-string v12, "road"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/amap/api/services/route/TruckStep;->setRoad(Ljava/lang/String;)V

    const-string v12, "distance"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v10, v12}, Lcom/amap/api/services/route/TruckStep;->setDistance(F)V

    const-string v12, "tolls"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v10, v12}, Lcom/amap/api/services/route/TruckStep;->setTolls(F)V

    const-string v12, "toll_distance"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v10, v12}, Lcom/amap/api/services/route/TruckStep;->setTollDistance(F)V

    const-string v12, "toll_road"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/amap/api/services/route/TruckStep;->setTollRoad(Ljava/lang/String;)V

    const-string v12, "duration"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v10, v12}, Lcom/amap/api/services/route/TruckStep;->setDuration(F)V

    const-string v12, "polyline"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/amap/api/services/route/TruckStep;->setPolyline(Ljava/util/List;)V

    const-string v12, "action"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/amap/api/services/route/TruckStep;->setAction(Ljava/lang/String;)V

    const-string v12, "assistant_action"

    invoke-static {v11, v12}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/amap/api/services/route/TruckStep;->setAssistantAction(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->a(Lcom/amap/api/services/route/TruckStep;Lorg/json/JSONObject;)V

    invoke-static {v10, v11}, Lcom/amap/api/col/sl/z;->b(Lcom/amap/api/services/route/TruckStep;Lorg/json/JSONObject;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v7, v9}, Lcom/amap/api/services/route/TruckPath;->setSteps(Ljava/util/List;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0, v5}, Lcom/amap/api/services/route/TruckRouteRestult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseTruckRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static k(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0}, Lcom/amap/api/col/sl/z;->l(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusStationItem;->setAdCode(Ljava/lang/String;)V

    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusStationItem;->setCityCode(Ljava/lang/String;)V

    const-string v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_1

    invoke-virtual {v1, v3}, Lcom/amap/api/services/busline/BusStationItem;->setBusLineItems(Ljava/util/List;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->m(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Lcom/amap/api/services/busline/BusStationItem;->setBusLineItems(Ljava/util/List;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static k(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/amap/api/col/sl/z;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static l(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/services/busline/BusStationItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusStationItem;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationId(Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationName(Ljava/lang/String;)V

    return-object v0
.end method

.method private static l(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, ",| "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    new-instance v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    goto :goto_0
.end method

.method private static m(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "JSONHelper"

    const-string v3, "str2int"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static m(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/services/busline/BusLineItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusLineItem;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineId(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineType(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineName(Ljava/lang/String;)V

    const-string v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setDirectionsCoordinates(Ljava/util/List;)V

    const-string v1, "citycode"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setCityCode(Ljava/lang/String;)V

    const-string v1, "start_stop"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setOriginatingStation(Ljava/lang/String;)V

    const-string v1, "end_stop"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setTerminalStation(Ljava/lang/String;)V

    return-object v0
.end method

.method private static n(Ljava/lang/String;)F
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "JSONHelper"

    const-string v3, "str2float"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static n(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0}, Lcom/amap/api/col/sl/z;->m(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "start_time"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/t;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setFirstBusTime(Ljava/util/Date;)V

    const-string v0, "end_time"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/t;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setLastBusTime(Ljava/util/Date;)V

    const-string v0, "company"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBusCompany(Ljava/lang/String;)V

    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setDistance(F)V

    const-string v0, "basic_price"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBasicPrice(F)V

    const-string v0, "total_price"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setTotalPrice(F)V

    const-string v0, "bounds"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBounds(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "busstops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Lcom/amap/api/services/busline/BusLineItem;->setBusStations(Ljava/util/List;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->l(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Lcom/amap/api/services/busline/BusLineItem;->setBusStations(Ljava/util/List;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private static o(Ljava/lang/String;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "JSONHelper"

    const-string v4, "str2float"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static o(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusWalkItem;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amap/api/services/route/RouteBusWalkItem;

    invoke-direct {v1}, Lcom/amap/api/services/route/RouteBusWalkItem;-><init>()V

    const-string v0, "origin"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setOrigin(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v0, "destination"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDestination(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDistance(F)V

    const-string v0, "duration"

    invoke-static {p0, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/z;->p(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDuration(J)V

    const-string v0, "steps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "steps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v5, Lcom/amap/api/services/route/WalkStep;

    invoke-direct {v5}, Lcom/amap/api/services/route/WalkStep;-><init>()V

    const-string v6, "instruction"

    invoke-static {v4, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/services/route/WalkStep;->setInstruction(Ljava/lang/String;)V

    const-string v6, "orientation"

    invoke-static {v4, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/services/route/WalkStep;->setOrientation(Ljava/lang/String;)V

    const-string v6, "road"

    invoke-static {v4, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/services/route/WalkStep;->setRoad(Ljava/lang/String;)V

    const-string v6, "distance"

    invoke-static {v4, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/services/route/WalkStep;->setDistance(F)V

    const-string v6, "duration"

    invoke-static {v4, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/services/route/WalkStep;->setDuration(F)V

    const-string v6, "polyline"

    invoke-static {v4, v6}, Lcom/amap/api/col/sl/z;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/services/route/WalkStep;->setPolyline(Ljava/util/List;)V

    const-string v6, "action"

    invoke-static {v4, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/services/route/WalkStep;->setAction(Ljava/lang/String;)V

    const-string v6, "assistant_action"

    invoke-static {v4, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/amap/api/services/route/WalkStep;->setAssistantAction(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v3}, Lcom/amap/api/services/route/RouteBusWalkItem;->setSteps(Ljava/util/List;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private static p(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "JSONHelper"

    const-string v4, "str2long"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static p(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RouteBusLineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    if-nez v4, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/amap/api/services/route/RouteBusLineItem;

    invoke-direct {v1}, Lcom/amap/api/services/route/RouteBusLineItem;-><init>()V

    const-string v5, "departure_stop"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/sl/z;->s(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/services/route/RouteBusLineItem;->setDepartureBusStation(Lcom/amap/api/services/busline/BusStationItem;)V

    const-string v5, "arrival_stop"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/sl/z;->s(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/services/route/RouteBusLineItem;->setArrivalBusStation(Lcom/amap/api/services/busline/BusStationItem;)V

    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineName(Ljava/lang/String;)V

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineId(Ljava/lang/String;)V

    const-string v5, "type"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineType(Ljava/lang/String;)V

    const-string v5, "distance"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/amap/api/services/route/RouteBusLineItem;->setDistance(F)V

    const-string v5, "duration"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/amap/api/services/route/RouteBusLineItem;->setDuration(F)V

    const-string v5, "polyline"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/services/route/RouteBusLineItem;->setPolyline(Ljava/util/List;)V

    const-string v5, "start_time"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/sl/t;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/services/route/RouteBusLineItem;->setFirstBusTime(Ljava/util/Date;)V

    const-string v5, "end_time"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/sl/t;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/services/route/RouteBusLineItem;->setLastBusTime(Ljava/util/Date;)V

    const-string v5, "via_num"

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/sl/z;->m(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/amap/api/services/route/RouteBusLineItem;->setPassStationNum(I)V

    invoke-static {v4}, Lcom/amap/api/col/sl/z;->r(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amap/api/services/route/RouteBusLineItem;->setPassStations(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_4
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private static q(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/services/route/Doorway;

    invoke-direct {v0}, Lcom/amap/api/services/route/Doorway;-><init>()V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/Doorway;->setName(Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/Doorway;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    return-object v0
.end method

.method private static q(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static r(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "via_stops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/amap/api/col/sl/z;->s(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static s(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/services/busline/BusStationItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusStationItem;-><init>()V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationName(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationId(Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    return-object v0
.end method

.method private static t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwayStationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/services/route/RailwayStationItem;

    invoke-direct {v0}, Lcom/amap/api/services/route/RailwayStationItem;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setID(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setName(Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setLocation(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v1, "adcode"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setAdcode(Ljava/lang/String;)V

    const-string v1, "time"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setTime(Ljava/lang/String;)V

    const-string v1, "start"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/sl/z;->q(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setisStart(Z)V

    const-string v1, "end"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/sl/z;->q(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setisEnd(Z)V

    const-string v1, "wait"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setWait(F)V

    return-object v0
.end method

.method private static u(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RailwayStationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "via_stops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/amap/api/col/sl/z;->t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwayStationItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static v(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/Railway;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "alters"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Lcom/amap/api/services/route/Railway;

    invoke-direct {v4}, Lcom/amap/api/services/route/Railway;-><init>()V

    const-string v5, "id"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/route/Railway;->setID(Ljava/lang/String;)V

    const-string v5, "name"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/services/route/Railway;->setName(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static w(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RailwaySpace;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "spaces"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "code"

    invoke-static {v3, v4}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cost"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v3

    new-instance v5, Lcom/amap/api/services/route/RailwaySpace;

    invoke-direct {v5, v4, v3}, Lcom/amap/api/services/route/RailwaySpace;-><init>(Ljava/lang/String;F)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static x(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "photos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "photos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/amap/api/services/poisearch/Photo;

    invoke-direct {v4}, Lcom/amap/api/services/poisearch/Photo;-><init>()V

    const-string v5, "title"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/poisearch/Photo;->setTitle(Ljava/lang/String;)V

    const-string v5, "url"

    invoke-static {v3, v5}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/services/poisearch/Photo;->setUrl(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static y(Lorg/json/JSONObject;)Lcom/amap/api/services/routepoisearch/RoutePOIItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOIItem;

    invoke-direct {v0}, Lcom/amap/api/services/routepoisearch/RoutePOIItem;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/routepoisearch/RoutePOIItem;->setID(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/routepoisearch/RoutePOIItem;->setTitle(Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/routepoisearch/RoutePOIItem;->setPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    const-string v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/routepoisearch/RoutePOIItem;->setDistance(F)V

    const-string v1, "duration"

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/routepoisearch/RoutePOIItem;->setDuration(F)V

    return-object v0
.end method

.method private static z(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RidePath;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/amap/api/services/route/RidePath;

    invoke-direct {v1}, Lcom/amap/api/services/route/RidePath;-><init>()V

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v2, "distance"

    invoke-static {p0, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/RidePath;->setDistance(F)V

    const-string v2, "duration"

    invoke-static {p0, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/sl/z;->p(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/services/route/RidePath;->setDuration(J)V

    const-string v2, "steps"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "steps"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    new-instance v4, Lcom/amap/api/services/route/RideStep;

    invoke-direct {v4}, Lcom/amap/api/services/route/RideStep;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "instruction"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/route/RideStep;->setInstruction(Ljava/lang/String;)V

    const-string v6, "orientation"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/route/RideStep;->setOrientation(Ljava/lang/String;)V

    const-string v6, "road"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/route/RideStep;->setRoad(Ljava/lang/String;)V

    const-string v6, "distance"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/route/RideStep;->setDistance(F)V

    const-string v6, "duration"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/sl/z;->n(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/route/RideStep;->setDuration(F)V

    const-string v6, "polyline"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/route/RideStep;->setPolyline(Ljava/util/List;)V

    const-string v6, "action"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/route/RideStep;->setAction(Ljava/lang/String;)V

    const-string v6, "assistant_action"

    invoke-static {v5, v6}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/route/RideStep;->setAssistantAction(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Lcom/amap/api/services/route/RidePath;->setSteps(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseRidePath"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
