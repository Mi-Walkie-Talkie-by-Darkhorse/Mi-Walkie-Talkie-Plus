.class public final Lcom/amap/api/col/sl/ev;
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

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/sl/ev;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/amap/api/col/sl/ev;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/sl/ev;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/sl/ev;->j:Ljava/lang/String;

    const-string v0, "new"

    iput-object v0, p0, Lcom/amap/api/col/sl/ev;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/amap/api/col/sl/ev;->l:Lorg/json/JSONObject;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/sl/ev;->m:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/ev;->e:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/ev;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/sl/ev;->n:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/sl/ev;->o:J

    iput-object v2, p0, Lcom/amap/api/col/sl/ev;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ev;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/col/sl/ev;->o:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/ev;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/ev;->l:Lorg/json/JSONObject;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/sl/ev;->e:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ev;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/ev;->h:Ljava/lang/String;

    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/col/sl/fq;->a(Lcom/amap/api/location/AMapLocation;Lorg/json/JSONObject;)V

    const-string v1, "type"

    iget-object v2, p0, Lcom/amap/api/col/sl/ev;->k:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/sl/ev;->k:Ljava/lang/String;

    const-string v1, "retype"

    iget-object v2, p0, Lcom/amap/api/col/sl/ev;->j:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/sl/ev;->j:Ljava/lang/String;

    const-string v1, "cens"

    iget-object v2, p0, Lcom/amap/api/col/sl/ev;->n:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\\*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/amap/api/col/sl/ev;->setLongitude(D)V

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/amap/api/col/sl/ev;->setLatitude(D)V

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/ev;->setAccuracy(F)V

    :cond_0
    iput-object v1, p0, Lcom/amap/api/col/sl/ev;->n:Ljava/lang/String;

    :cond_1
    const-string v0, "desc"

    iget-object v1, p0, Lcom/amap/api/col/sl/ev;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/ev;->d:Ljava/lang/String;

    const-string v0, "coord"

    iget v1, p0, Lcom/amap/api/col/sl/ev;->i:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/ev;->c(Ljava/lang/String;)V

    const-string v0, "mcell"

    iget-object v1, p0, Lcom/amap/api/col/sl/ev;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/ev;->m:Ljava/lang/String;

    const-string v0, "isReversegeo"

    iget-boolean v1, p0, Lcom/amap/api/col/sl/ev;->e:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/ev;->e:Z

    const-string v0, "geoLanguage"

    iget-object v1, p0, Lcom/amap/api/col/sl/ev;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/ev;->f:Ljava/lang/String;

    const-string v0, "poiid"

    invoke-static {p1, v0}, Lcom/amap/api/col/sl/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "poiid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/ev;->setBuildingId(Ljava/lang/String;)V

    :cond_2
    const-string v0, "pid"

    invoke-static {p1, v0}, Lcom/amap/api/col/sl/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "pid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/ev;->setBuildingId(Ljava/lang/String;)V

    :cond_3
    const-string v0, "floor"

    invoke-static {p1, v0}, Lcom/amap/api/col/sl/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "floor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/ev;->setFloor(Ljava/lang/String;)V

    :cond_4
    const-string v0, "flr"

    invoke-static {p1, v0}, Lcom/amap/api/col/sl/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "flr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/ev;->setFloor(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AmapLoc"

    const-string v2, "AmapLoc"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/sl/ev;->i:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ev;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/amap/api/col/sl/ev;->i:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/amap/api/col/sl/ev;->i:I

    goto :goto_0

    :cond_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/sl/ev;->i:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/sl/ev;->i:I

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ev;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/ev;->j:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ev;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/ev;->k:Ljava/lang/String;

    return-void
.end method

.method public final f()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ev;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/ev;->f:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ev;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/ev;->d:Ljava/lang/String;

    return-void
.end method

.method public final h()Lcom/amap/api/col/sl/ev;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/sl/ev;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    new-instance v1, Lcom/amap/api/col/sl/ev;

    const-string v3, ""

    invoke-direct {v1, v3}, Lcom/amap/api/col/sl/ev;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ev;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/api/col/sl/ev;->setProvider(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/amap/api/col/sl/ev;->setLongitude(D)V

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/amap/api/col/sl/ev;->setLatitude(D)V

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/sl/ev;->setAccuracy(F)V

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ev;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/sl/ev;->setCityCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ev;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/sl/ev;->setAdCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ev;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/sl/ev;->setCountry(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ev;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/sl/ev;->setProvince(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ev;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/sl/ev;->setCity(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ev;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/col/sl/ev;->setTime(J)V

    iget-object v2, p0, Lcom/amap/api/col/sl/ev;->k:Ljava/lang/String;

    iput-object v2, v1, Lcom/amap/api/col/sl/ev;->k:Ljava/lang/String;

    iget v2, p0, Lcom/amap/api/col/sl/ev;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/col/sl/ev;->c(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/col/sl/ev;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/ev;->p:Ljava/lang/String;

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/sl/ev;->e:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ev;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/sl/ev;->o:J

    return-wide v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ev;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final toJson(I)Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Lcom/amap/api/location/AMapLocation;->toJson(I)Lorg/json/JSONObject;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "retype"

    iget-object v2, p0, Lcom/amap/api/col/sl/ev;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cens"

    iget-object v2, p0, Lcom/amap/api/col/sl/ev;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "coord"

    iget v2, p0, Lcom/amap/api/col/sl/ev;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mcell"

    iget-object v2, p0, Lcom/amap/api/col/sl/ev;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "desc"

    iget-object v2, p0, Lcom/amap/api/col/sl/ev;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "address"

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ev;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amap/api/col/sl/ev;->l:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v1, "offpct"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "offpct"

    iget-object v2, p0, Lcom/amap/api/col/sl/ev;->l:Lorg/json/JSONObject;

    const-string v3, "offpct"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    :pswitch_1
    const-string v1, "type"

    iget-object v2, p0, Lcom/amap/api/col/sl/ev;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isReversegeo"

    iget-boolean v2, p0, Lcom/amap/api/col/sl/ev;->e:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "geoLanguage"

    iget-object v2, p0, Lcom/amap/api/col/sl/ev;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    const-string v2, "AmapLoc"

    const-string v3, "toStr"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final toStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/ev;->toStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toStr(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/sl/ev;->toJson(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "nb"

    iget-object v3, p0, Lcom/amap/api/col/sl/ev;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocation"

    const-string v3, "toStr part2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
