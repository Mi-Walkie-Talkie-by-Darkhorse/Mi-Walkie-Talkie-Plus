.class public final Lcom/amap/api/col/l3/jh;
.super Lcom/amap/api/location/AMapLocation;
.source "AMapLocationServer.java"


# instance fields
.field protected d:Ljava/lang/String;

.field e:Z

.field f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lorg/json/JSONObject;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/jh;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/amap/api/col/l3/jh;->g:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/amap/api/col/l3/jh;->h:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/amap/api/col/l3/jh;->j:Ljava/lang/String;

    const-string v1, "new"

    .line 6
    iput-object v1, p0, Lcom/amap/api/col/l3/jh;->k:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/amap/api/col/l3/jh;->l:Lorg/json/JSONObject;

    .line 8
    iput-object p1, p0, Lcom/amap/api/col/l3/jh;->m:Ljava/lang/String;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jh;->e:Z

    .line 10
    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/jh;->f:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/amap/api/col/l3/jh;->n:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/amap/api/col/l3/jh;->o:J

    .line 13
    iput-object v0, p0, Lcom/amap/api/col/l3/jh;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jh;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/amap/api/col/l3/jh;->o:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/jh;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/api/col/l3/jh;->l:Lorg/json/JSONObject;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/amap/api/col/l3/jh;->e:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jh;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/jh;->h:Ljava/lang/String;

    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 11

    const-string v0, "flr"

    const-string v1, "floor"

    const-string v2, "pid"

    const-string v3, "poiid"

    if-eqz p1, :cond_7

    .line 3
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/col/l3/jz;->a(Lcom/amap/api/location/AMapLocation;Lorg/json/JSONObject;)V

    const-string v4, "type"

    .line 4
    iget-object v5, p0, Lcom/amap/api/col/l3/jh;->k:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amap/api/col/l3/jh;->k:Ljava/lang/String;

    const-string v4, "retype"

    .line 5
    iget-object v5, p0, Lcom/amap/api/col/l3/jh;->j:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amap/api/col/l3/jh;->j:Ljava/lang/String;

    const-string v4, "cens"

    .line 6
    iget-object v5, p0, Lcom/amap/api/col/l3/jh;->n:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "\\*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v9, v5, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v5, ","

    invoke-virtual {v9, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v7

    invoke-static {v6}, Lcom/amap/api/col/l3/ki;->f(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Lcom/amap/api/col/l3/ki;->f(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/amap/api/col/l3/ki;->h(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Landroid/location/Location;->setAccuracy(F)V

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/amap/api/col/l3/jh;->n:Ljava/lang/String;

    :cond_2
    const-string v4, "desc"

    .line 7
    iget-object v5, p0, Lcom/amap/api/col/l3/jh;->d:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amap/api/col/l3/jh;->d:Ljava/lang/String;

    const-string v4, "coord"

    .line 8
    iget v5, p0, Lcom/amap/api/col/l3/jh;->i:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/amap/api/col/l3/jh;->c(Ljava/lang/String;)V

    const-string v4, "mcell"

    .line 9
    iget-object v5, p0, Lcom/amap/api/col/l3/jh;->m:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amap/api/col/l3/jh;->m:Ljava/lang/String;

    const-string v4, "isReversegeo"

    .line 10
    iget-boolean v5, p0, Lcom/amap/api/col/l3/jh;->e:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/amap/api/col/l3/jh;->e:Z

    const-string v4, "geoLanguage"

    .line 11
    iget-object v5, p0, Lcom/amap/api/col/l3/jh;->f:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amap/api/col/l3/jh;->f:Ljava/lang/String;

    .line 12
    invoke-static {p1, v3}, Lcom/amap/api/col/l3/ki;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/amap/api/location/AMapLocation;->setBuildingId(Ljava/lang/String;)V

    .line 14
    :cond_3
    invoke-static {p1, v2}, Lcom/amap/api/col/l3/ki;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 15
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amap/api/location/AMapLocation;->setBuildingId(Ljava/lang/String;)V

    .line 16
    :cond_4
    invoke-static {p1, v1}, Lcom/amap/api/col/l3/ki;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/location/AMapLocation;->setFloor(Ljava/lang/String;)V

    .line 18
    :cond_5
    invoke-static {p1, v0}, Lcom/amap/api/col/l3/ki;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/location/AMapLocation;->setFloor(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AmapLoc"

    .line 20
    invoke-static {p1, v0, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/jh;->i:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/amap/api/col/l3/jh;->i:I

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/amap/api/col/l3/jh;->i:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/amap/api/col/l3/jh;->i:I

    .line 8
    :goto_0
    iget p1, p0, Lcom/amap/api/col/l3/jh;->i:I

    if-nez p1, :cond_2

    const-string p1, "WGS84"

    .line 9
    invoke-super {p0, p1}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "GCJ02"

    .line 10
    invoke-super {p0, p1}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jh;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/jh;->j:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jh;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/jh;->k:Ljava/lang/String;

    return-void
.end method

.method public final f()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jh;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/jh;->f:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jh;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/jh;->d:Ljava/lang/String;

    return-void
.end method

.method public final h()Lcom/amap/api/col/l3/jh;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jh;->m:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, ","

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v1, v0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    return-object v2

    .line 5
    :cond_1
    new-instance v1, Lcom/amap/api/col/l3/jh;

    const-string v3, ""

    invoke-direct {v1, v3}, Lcom/amap/api/col/l3/jh;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 7
    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/amap/api/col/l3/ki;->f(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    const/4 v3, 0x1

    .line 8
    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/amap/api/col/l3/ki;->f(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    const/4 v3, 0x2

    .line 9
    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->g(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 10
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setCityCode(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setAdCode(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setCountry(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setProvince(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setTime(J)V

    .line 16
    iget-object v0, p0, Lcom/amap/api/col/l3/jh;->k:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/col/l3/jh;->k:Ljava/lang/String;

    .line 17
    iget v0, p0, Lcom/amap/api/col/l3/jh;->i:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3/jh;->c(Ljava/lang/String;)V

    .line 18
    invoke-static {v1}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    return-object v1
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amap/api/col/l3/jh;->p:Ljava/lang/String;

    return-void
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/jh;->e:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jh;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/col/l3/jh;->o:J

    return-wide v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jh;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final toJson(I)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "offpct"

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/amap/api/location/AMapLocation;->toJson(I)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    const-string p1, "retype"

    .line 2
    iget-object v2, p0, Lcom/amap/api/col/l3/jh;->j:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cens"

    .line 3
    iget-object v2, p0, Lcom/amap/api/col/l3/jh;->n:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "coord"

    .line 4
    iget v2, p0, Lcom/amap/api/col/l3/jh;->i:I

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mcell"

    .line 5
    iget-object v2, p0, Lcom/amap/api/col/l3/jh;->m:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "desc"

    .line 6
    iget-object v2, p0, Lcom/amap/api/col/l3/jh;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "address"

    .line 7
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object p1, p0, Lcom/amap/api/col/l3/jh;->l:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 9
    invoke-static {v1, v0}, Lcom/amap/api/col/l3/ki;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/amap/api/col/l3/jh;->l:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p1, "type"

    .line 11
    iget-object v0, p0, Lcom/amap/api/col/l3/jh;->k:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isReversegeo"

    .line 12
    iget-boolean v0, p0, Lcom/amap/api/col/l3/jh;->e:Z

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "geoLanguage"

    .line 13
    iget-object v0, p0, Lcom/amap/api/col/l3/jh;->f:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    const-string v0, "AmapLoc"

    const-string v2, "toStr"

    .line 14
    invoke-static {p1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public final toStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/jh;->toStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toStr(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/jh;->toJson(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "nb"

    .line 3
    iget-object v2, p0, Lcom/amap/api/col/l3/jh;->p:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "AMapLocation"

    const-string v2, "toStr part2"

    .line 4
    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
