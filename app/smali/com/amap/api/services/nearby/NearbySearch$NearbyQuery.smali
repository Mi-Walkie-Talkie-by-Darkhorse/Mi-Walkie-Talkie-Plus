.class public Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;
.super Ljava/lang/Object;
.source "NearbySearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/nearby/NearbySearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NearbyQuery"
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/amap/api/services/nearby/NearbySearchFunctionType;->DISTANCE_SEARCH:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    iput-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->b:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->c:I

    const/16 v0, 0x708

    iput v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->e:I

    return-void
.end method


# virtual methods
.method public getCenterPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getCoordType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->e:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->c:I

    return v0
.end method

.method public getTimeRange()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->d:I

    return v0
.end method

.method public getType()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/amap/api/services/nearby/NearbySearch$1;->a:[I

    iget-object v2, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->b:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    invoke-virtual {v2}, Lcom/amap/api/services/nearby/NearbySearchFunctionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-void
.end method

.method public setCoordType(I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->e:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->e:I

    goto :goto_0
.end method

.method public setRadius(I)V
    .locals 1

    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->c:I

    return-void
.end method

.method public setTimeRange(I)V
    .locals 2

    const v1, 0x15180

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->d:I

    return-void

    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public setType(Lcom/amap/api/services/nearby/NearbySearchFunctionType;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->b:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    return-void
.end method
