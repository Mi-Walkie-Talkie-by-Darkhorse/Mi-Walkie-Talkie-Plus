.class public Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;
.super Ljava/lang/Object;
.source "HeatmapTileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/model/HeatmapTileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/amap/api/maps/model/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/amap/api/maps/model/Gradient;

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->b:I

    sget-object v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->DEFAULT_GRADIENT:Lcom/amap/api/maps/model/Gradient;

    iput-object v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->c:Lcom/amap/api/maps/model/Gradient;

    const-wide v0, 0x3fe3333333333333L    # 0.6

    iput-wide v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->d:D

    return-void
.end method

.method static synthetic a(Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->a:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->b:I

    return v0
.end method

.method static synthetic c(Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;)Lcom/amap/api/maps/model/Gradient;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->c:Lcom/amap/api/maps/model/Gradient;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->d:D

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/amap/api/maps/model/HeatmapTileProvider;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->a:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v2, "No input points."

    invoke-direct {v0, v2}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "amap"

    invoke-virtual {v0}, Lcom/amap/api/maps/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/amap/api/maps/model/HeatmapTileProvider;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/amap/api/maps/model/HeatmapTileProvider;-><init>(Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;Lcom/amap/api/maps/model/HeatmapTileProvider$1;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public data(Ljava/util/Collection;)Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/amap/api/maps/model/HeatmapTileProvider;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->weightedData(Ljava/util/Collection;)Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;

    move-result-object v0

    return-object v0
.end method

.method public gradient(Lcom/amap/api/maps/model/Gradient;)Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->c:Lcom/amap/api/maps/model/Gradient;

    return-object p0
.end method

.method public radius(I)Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x32

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->b:I

    return-object p0
.end method

.method public transparency(D)Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;
    .locals 5

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->d:D

    return-object p0
.end method

.method public weightedData(Ljava/util/Collection;)Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amap/api/maps/model/WeightedLatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->a:Ljava/util/Collection;

    return-object p0
.end method
