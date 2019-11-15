.class public Lcom/amap/api/mapcore/util/ap;
.super Lcom/amap/api/mapcore/util/bo;
.source "OfflineInitHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/bo",
        "<",
        "Ljava/lang/String;",
        "Lcom/amap/api/mapcore/util/ao;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/bo;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-string v0, "update"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ap;->d:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ap;->e:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ap;->f:Ljava/lang/String;

    const-string v0, "version"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ap;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/amap/api/mapcore/util/ao;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    new-instance v1, Lcom/amap/api/mapcore/util/ao;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/ao;-><init>()V

    :try_start_0
    const-string v0, "update"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ao;->a(Z)V

    :cond_0
    :goto_0
    const-string v0, "version"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ao;->a(Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_1
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ao;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "OfflineInitHandler"

    const-string v3, "loadData parseJson"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "014"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/amap/api/mapcore/util/fp$a;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p1, Lcom/amap/api/mapcore/util/fp$a;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/ap;->a(Lorg/json/JSONObject;)Lcom/amap/api/mapcore/util/ao;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mapver"

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ap;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
