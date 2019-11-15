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
            "Landroid/os/Parcelable$Creator",
            "<",
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

    new-instance v0, Lorg/osmdroid/util/BoundingBoxE6$1;

    invoke-direct {v0}, Lorg/osmdroid/util/BoundingBoxE6$1;-><init>()V

    sput-object v0, Lorg/osmdroid/util/BoundingBoxE6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 5

    const-wide v2, 0x412e848000000000L    # 1000000.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-double v0, p1, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    mul-double v0, p3, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    mul-double v0, p5, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    mul-double v0, p7, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    iput p2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    iput p3, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    iput p4, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 1

    invoke-static {p0}, Lorg/osmdroid/util/BoundingBoxE6;->readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    return-object v0
.end method

.method public static fromGeoPoints(Ljava/util/ArrayList;)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/util/BoundingBoxE6;"
        }
    .end annotation

    const v1, 0x7fffffff

    const/high16 v0, -0x80000000

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    move v3, v1

    move v4, v1

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v6

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v0

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(IIII)V

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v4, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(IIII)V

    return-object v4
.end method


# virtual methods
.method public bringToBoundingBox(II)Lorg/osmdroid/util/GeoPoint;
    .locals 4

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    iget v3, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public contains(II)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    if-ge p1, v1, :cond_2

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    if-le p1, v1, :cond_2

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    if-ge p2, v1, :cond_2

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    if-le p2, v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    if-lt p2, v1, :cond_0

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    if-gt p2, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 2

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/util/BoundingBoxE6;->contains(II)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenter()Lorg/osmdroid/util/GeoPoint;
    .locals 4

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
    .locals 10

    const v9, 0xaba9500

    const v8, 0x564eba0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    int-to-double v0, v0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v0

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    int-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    float-to-double v4, v4

    sub-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->gudermann(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-int v1, v0

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    :goto_0
    if-le v1, v8, :cond_0

    sub-int/2addr v1, v8

    goto :goto_0

    :cond_0
    :goto_1
    const v2, -0x564eba0

    if-ge v1, v2, :cond_1

    add-int/2addr v1, v8

    goto :goto_1

    :cond_1
    :goto_2
    if-le v0, v9, :cond_2

    sub-int/2addr v0, v9

    goto :goto_2

    :cond_2
    :goto_3
    const v2, -0xaba9500

    if-ge v0, v2, :cond_3

    add-int/2addr v0, v9

    goto :goto_3

    :cond_3
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v2, v1, v0}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-object v2
.end method

.method public getGeoPointOfRelativePositionWithLinearInterpolation(FF)Lorg/osmdroid/util/GeoPoint;
    .locals 5

    const v4, 0xaba9500

    const v3, 0x564eba0

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    float-to-int v1, v0

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    :goto_0
    if-le v1, v3, :cond_0

    sub-int/2addr v1, v3

    goto :goto_0

    :cond_0
    :goto_1
    const v2, -0x564eba0

    if-ge v1, v2, :cond_1

    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    :goto_2
    if-le v0, v4, :cond_2

    sub-int/2addr v0, v4

    goto :goto_2

    :cond_2
    :goto_3
    const v2, -0xaba9500

    if-ge v0, v2, :cond_3

    add-int/2addr v0, v4

    goto :goto_3

    :cond_3
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v2, v1, v0}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-object v2
.end method

.method public getLatNorthE6()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    return v0
.end method

.method public getLatSouthE6()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    return v0
.end method

.method public getLatitudeSpanE6()I
    .locals 2

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getLonEastE6()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    return v0
.end method

.method public getLonWestE6()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    return v0
.end method

.method public getLongitudeSpanE6()I
    .locals 2

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(IILandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 8

    const-wide v6, 0x412e848000000000L    # 1000000.0

    if-eqz p3, :cond_0

    :goto_0
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    int-to-double v0, v0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v0

    int-to-double v2, p1

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    int-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v2

    iget v4, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    int-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    sub-int/2addr v2, p2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object p3

    :cond_0
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    goto :goto_0
.end method

.method public getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(IILandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    if-eqz p3, :cond_0

    :goto_0
    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    sub-int/2addr v2, p2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object p3

    :cond_0
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    goto :goto_0
.end method

.method public increaseByScale(F)Lorg/osmdroid/util/BoundingBoxE6;
    .locals 7

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    float-to-int v2, v2

    new-instance v3, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v6

    sub-int v1, v6, v1

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {v3, v4, v5, v1, v0}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(IIII)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "N:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; E:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatNorthE6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonEastE6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLatSouthE6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/osmdroid/util/BoundingBoxE6;->mLonWestE6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
