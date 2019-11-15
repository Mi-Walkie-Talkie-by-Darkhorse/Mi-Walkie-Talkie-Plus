.class public abstract Lcom/amap/api/mapcore/util/bo;
.super Ljava/lang/Object;
.source "ProtocalHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/mapcore/util/bo;->b:I

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/bo;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/bo;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/bo;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Lcom/amap/api/mapcore/util/fp$a;)Lorg/json/JSONObject;
.end method

.method protected abstract b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation
.end method

.method protected abstract b()Ljava/util/Map;
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
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bo;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bo;->d()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    move-object v0, v1

    :cond_0
    :goto_0
    iget v4, p0, Lcom/amap/api/mapcore/util/bo;->b:I

    if-ge v2, v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/amap/api/mapcore/util/bo;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->e()Lcom/amap/api/mapcore/util/fx;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bo;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bo;->b()Ljava/util/Map;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/amap/api/mapcore/util/fp;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/mapcore/util/fp$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/bo;->a(Lcom/amap/api/mapcore/util/fp$a;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/amap/api/mapcore/util/bo;->b(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3

    iget v2, p0, Lcom/amap/api/mapcore/util/bo;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "ProtocalHandler"

    const-string v6, "getDataMayThrow AMapException"

    invoke-static {v4, v5, v6}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lcom/amap/api/mapcore/util/bo;->b:I

    if-lt v2, v4, :cond_0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/amap/api/mapcore/util/fp$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v1, Lcom/amap/api/maps/AMapException;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/fp$a;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v3

    :cond_2
    move-object v3, v1

    goto :goto_0
.end method
