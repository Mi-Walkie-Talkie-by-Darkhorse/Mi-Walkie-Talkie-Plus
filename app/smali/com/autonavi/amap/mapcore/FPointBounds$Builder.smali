.class public final Lcom/autonavi/amap/mapcore/FPointBounds$Builder;
.super Ljava/lang/Object;
.source "FPointBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amap/mapcore/FPointBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEast:F

.field private mNorth:F

.field private mSouth:F

.field private mWest:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mSouth:F

    iput v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mNorth:F

    iput v1, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    iput v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    return-void
.end method

.method private containsx(D)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    iget v3, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    float-to-double v2, v2

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    float-to-double v2, v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    float-to-double v2, v2

    cmpg-double v2, v2, p1

    if-lez v2, :cond_2

    iget v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    float-to-double v2, v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/autonavi/amap/mapcore/FPointBounds;
    .locals 4

    new-instance v0, Lcom/autonavi/amap/mapcore/FPointBounds;

    iget v1, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    iget v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mSouth:F

    invoke-static {v1, v2}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    iget v3, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mNorth:F

    invoke-static {v2, v3}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/autonavi/amap/mapcore/FPointBounds;-><init>(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)V

    return-object v0
.end method

.method public include(Lcom/autonavi/amap/mapcore/FPoint;)Lcom/autonavi/amap/mapcore/FPointBounds$Builder;
    .locals 2

    iget v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mSouth:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mSouth:F

    iget v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mNorth:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mNorth:F

    iget v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mWest:F

    iget v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;->mEast:F

    return-object p0
.end method
