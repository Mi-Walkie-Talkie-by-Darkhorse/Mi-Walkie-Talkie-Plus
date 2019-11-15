.class public final Lcom/amap/api/col/sl/am;
.super Lcom/amap/api/col/sl/l;
.source "ReverseGeocodingHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/sl/l",
        "<",
        "Lcom/amap/api/services/geocoder/RegeocodeQuery;",
        "Lcom/amap/api/services/geocoder/RegeocodeAddress;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/geocoder/RegeocodeQuery;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/sl/l;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)Lcom/amap/api/services/geocoder/RegeocodeAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/services/geocoder/RegeocodeAddress;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "regeocode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "formatted_address"

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setFormatAddress(Ljava/lang/String;)V

    const-string v2, "addressComponent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V

    :cond_2
    invoke-static {v1}, Lcom/amap/api/col/sl/z;->c(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setPois(Ljava/util/List;)V

    const-string v2, "roads"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2, v0}, Lcom/amap/api/col/sl/z;->b(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V

    :cond_3
    const-string v2, "roadinters"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V

    :cond_4
    const-string v2, "aois"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/amap/api/col/sl/z;->c(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ReverseGeocodingHandler"

    const-string v3, "paseJSON"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-static {p1}, Lcom/amap/api/col/sl/am;->c(Ljava/lang/String;)Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object v0

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "output=json&extensions=all&location="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/col/sl/am;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/col/sl/am;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/amap/api/col/sl/am;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getPoiType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "&poitype="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/col/sl/am;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getPoiType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, "&radius="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/col/sl/am;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getRadius()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "&coordsys="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/col/sl/am;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getLatLonType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/sl/am;->d:Landroid/content/Context;

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

.method public final f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/col/sl/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/geocode/regeo?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
