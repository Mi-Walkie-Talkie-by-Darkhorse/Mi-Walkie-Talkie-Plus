.class public final Lcom/amap/api/col/l3/ay;
.super Lcom/amap/api/col/l3/bx;
.source "OfflineInitHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3/bx<",
        "Ljava/lang/String;",
        "Lcom/amap/api/col/l3/ax;",
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
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3/bx;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-string p1, "update"

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/ay;->d:Ljava/lang/String;

    const-string p1, "1"

    .line 3
    iput-object p1, p0, Lcom/amap/api/col/l3/ay;->e:Ljava/lang/String;

    const-string p1, "0"

    .line 4
    iput-object p1, p0, Lcom/amap/api/col/l3/ay;->f:Ljava/lang/String;

    const-string p1, "version"

    .line 5
    iput-object p1, p0, Lcom/amap/api/col/l3/ay;->g:Ljava/lang/String;

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/amap/api/col/l3/ax;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    const-string v0, ""

    .line 3
    new-instance v1, Lcom/amap/api/col/l3/ax;

    invoke-direct {v1}, Lcom/amap/api/col/l3/ax;-><init>()V

    :try_start_0
    const-string v2, "update"

    .line 4
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3/ax;->a(Z)V

    goto :goto_0

    :cond_0
    const-string v3, "1"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3/ax;->a(Z)V

    :cond_1
    :goto_0
    const-string v2, "version"

    .line 9
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3/ax;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string v0, "OfflineInitHandler"

    const-string v2, "loadData parseJson"

    .line 10
    invoke-static {p0, v0, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method


# virtual methods
.method protected final synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/amap/api/col/l3/ay;->b(Lorg/json/JSONObject;)Lcom/amap/api/col/l3/ax;

    move-result-object p1

    return-object p1
.end method

.method protected final a()Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "014"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/amap/api/col/l3/fx$a;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/amap/api/col/l3/fx$a;->f:Lorg/json/JSONObject;

    return-object p1
.end method

.method protected final b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/bx;->a:Ljava/lang/Object;

    const-string v2, "mapver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
