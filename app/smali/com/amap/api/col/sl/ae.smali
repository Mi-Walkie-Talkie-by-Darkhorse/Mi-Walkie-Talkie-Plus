.class public final Lcom/amap/api/col/sl/ae;
.super Lcom/amap/api/col/sl/l;
.source "NearbySearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/sl/l",
        "<",
        "Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;",
        "Lcom/amap/api/services/nearby/NearbySearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private i:Landroid/content/Context;

.field private j:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/sl/l;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/col/sl/ae;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/ae;->j:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/amap/api/services/nearby/NearbySearchResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/sl/ae;->j:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->getType()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/amap/api/col/sl/z;->a(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Lcom/amap/api/services/nearby/NearbySearchResult;

    invoke-direct {v0}, Lcom/amap/api/services/nearby/NearbySearchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amap/api/services/nearby/NearbySearchResult;->setNearbyInfoList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NearbySearchHandler"

    const-string v2, "paseJSON"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/ae;->c(Ljava/lang/String;)Lcom/amap/api/services/nearby/NearbySearchResult;

    move-result-object v0

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/sl/ae;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/sl/bp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/col/sl/ae;->j:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->getCenterPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "&center="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "&radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/sl/ae;->j:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->getRadius()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "&limit=30"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&searchtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/sl/ae;->j:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "&timerange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/sl/ae;->j:Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->getTimeRange()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/col/sl/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/nearby/around"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
