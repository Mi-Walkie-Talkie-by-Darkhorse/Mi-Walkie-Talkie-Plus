.class public Lorg/osmdroid/util/BoundingBoxE6;
.super Ljava/lang/Object;
.source "BoundingBoxE6.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/util/BoundingBoxE6;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x2L


# instance fields
.field protected final mLatNorthE6:I

.field protected final mLatSouthE6:I

.field protected final mLonEastE6:I

.field protected final mLonWestE6:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/osmdroid/util/BoundingBoxE6$1;

    invoke-direct {v0}, Lorg/osmdroid/util/BoundingBoxE6$1;-><init>()V

    sput-object v0, Lorg/osmdroid/util/BoundingBoxE6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 7
    iput p1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    mul-double p3, p3, v0

    double-to-int p1, p3

    .line 8
    iput p1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    mul-double p5, p5, v0

    double-to-int p1, p5

    .line 9
    iput p1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    mul-double p7, p7, v0

    double-to-int p1, p7

    .line 10
    iput p1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    .line 3
    iput p2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    .line 4
    iput p3, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    .line 5
    iput p4, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/osmdroid/util/BoundingBoxE6;->readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object p0

    return-object p0
.end method

.method public static fromGeoPoints(Ljava/util/ArrayList;)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/util/BoundingBoxE6;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    .line 2
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v5

    .line 3
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v4

    .line 4
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(IIII)V

    return-object p0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 5
    new-instance v3, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-direct {v3, v0, v1, v2, p0}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(IIII)V

    return-object v3
.end method


# virtual methods
.method public bringToBoundingBox(II)Lorg/osmdroid/util/GeoPoint;
    .locals 3

    .line 1
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    .line 2
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public contains(II)Z
    .locals 2

    .line 2
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    if-le p1, v0, :cond_2

    .line 3
    iget p1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    if-ge p2, v0, :cond_2

    if-le p2, p1, :cond_2

    return v1

    :cond_0
    if-lt p2, v0, :cond_1

    if-le p2, p1, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public contains(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/osmdroid/util/BoundingBoxE6;->contains(II)Z

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenter()Lorg/osmdroid/util/GeoPoint;
    .locals 4

    .line 1
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    iget v3, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public getDiagonalLengthInMeters()I
    .locals 4

    .line 1
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    iget v3, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v0

    return v0
.end method

.method public getGeoPointOfRelativePositionWithExactGudermannInterpolation(FF)Lorg/osmdroid/util/GeoPoint;
    .locals 8

    .line 1
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v0

    .line 2
    iget v4, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    int-to-double v4, v4

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p2

    float-to-double v6, v6

    sub-double/2addr v0, v4

    mul-double v6, v6, v0

    add-double/2addr v4, v6

    .line 3
    invoke-static {v4, v5}, Lorg/osmdroid/util/MyMath;->gudermann(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    double-to-int p2, v0

    .line 4
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    :goto_0
    const v0, 0x564eba0

    if-le p2, v0, :cond_0

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_0
    :goto_1
    const v1, -0x564eba0

    if-ge p2, v1, :cond_1

    add-int/2addr p2, v0

    goto :goto_1

    :cond_1
    :goto_2
    const v0, 0xaba9500

    if-le p1, v0, :cond_2

    sub-int/2addr p1, v0

    goto :goto_2

    :cond_2
    :goto_3
    const v1, -0xaba9500

    if-ge p1, v1, :cond_3

    add-int/2addr p1, v0

    goto :goto_3

    .line 5
    :cond_3
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p2, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public getGeoPointOfRelativePositionWithLinearInterpolation(FF)Lorg/osmdroid/util/GeoPoint;
    .locals 2

    .line 1
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    sub-float/2addr v0, v1

    float-to-int p2, v0

    .line 2
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    :goto_0
    const v0, 0x564eba0

    if-le p2, v0, :cond_0

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_0
    :goto_1
    const v1, -0x564eba0

    if-ge p2, v1, :cond_1

    add-int/2addr p2, v0

    goto :goto_1

    :cond_1
    :goto_2
    const v0, 0xaba9500

    if-le p1, v0, :cond_2

    sub-int/2addr p1, v0

    goto :goto_2

    :cond_2
    :goto_3
    const v1, -0xaba9500

    if-ge p1, v1, :cond_3

    add-int/2addr p1, v0

    goto :goto_3

    .line 3
    :cond_3
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p2, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public getLatNorthE6()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    return v0
.end method

.method public getLatSouthE6()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    return v0
.end method

.method public getLatitudeSpanE6()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getLonEastE6()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    return v0
.end method

.method public getLonWestE6()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    return v0
.end method

.method public getLongitudeSpanE6()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(IILandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 8

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    .line 2
    :goto_0
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v0

    int-to-double v4, p1

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v4

    sub-double/2addr v0, v4

    iget p1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    int-to-double v4, p1

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v4

    iget p1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    int-to-double v6, p1

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v2

    sub-double/2addr v4, v2

    div-double/2addr v0, v4

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    sub-float/2addr v0, p2

    .line 4
    invoke-virtual {p3, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method

.method public getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(IILandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    .line 2
    :goto_0
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    sub-float/2addr v0, p2

    .line 4
    invoke-virtual {p3, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method

.method public increaseByScale(F)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 3
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p1

    div-float/2addr v3, v2

    float-to-int p1, v3

    .line 4
    new-instance v2, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v3

    add-int/2addr v3, v1

    .line 5
    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v5

    sub-int/2addr v5, v1

    .line 6
    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(IIII)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "N:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; E:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
