.class public Lorg/osmdroid/util/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/osmdroid/util/BoundingBox;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x2L


# instance fields
.field protected final mLatNorth:D

.field protected final mLatSouth:D

.field protected final mLonEast:D

.field protected final mLonWest:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/osmdroid/util/BoundingBox$1;

    invoke-direct {v0}, Lorg/osmdroid/util/BoundingBox$1;-><init>()V

    sput-object v0, Lorg/osmdroid/util/BoundingBox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iput-wide p3, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iput-wide p5, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iput-wide p7, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;
    .locals 1

    invoke-static {p0}, Lorg/osmdroid/util/BoundingBox;->readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)",
            "Lorg/osmdroid/util/BoundingBox;"
        }
    .end annotation

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v4, -0x10000000000001L

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v2, v4

    move-wide v6, v8

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v10

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v12

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v1
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;
    .locals 10

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v1
.end method


# virtual methods
.method public bringToBoundingBox(DD)Lorg/osmdroid/util/GeoPoint;
    .locals 9

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    iget-wide v6, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-static {v6, v7, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public contains(DD)Z
    .locals 3

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    cmpl-double v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 4

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/util/BoundingBox;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenter()Lorg/osmdroid/util/GeoPoint;
    .locals 10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v6, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    add-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public getDiagonalLengthInMeters()D
    .locals 6

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public getGeoPointOfRelativePositionWithExactGudermannInterpolation(FF)Lorg/osmdroid/util/GeoPoint;
    .locals 12

    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide v8, 0x4056a00000000000L    # 90.5

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v2, v3}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    float-to-double v4, v4

    sub-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->gudermann(D)D

    move-result-wide v2

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v4

    float-to-double v6, p1

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    :goto_0
    cmpl-double v4, v2, v8

    if-lez v4, :cond_0

    sub-double/2addr v2, v8

    goto :goto_0

    :cond_0
    :goto_1
    const-wide v4, -0x3fa9600000000000L    # -90.5

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    add-double/2addr v2, v8

    goto :goto_1

    :cond_1
    :goto_2
    cmpl-double v4, v0, v10

    if-lez v4, :cond_2

    sub-double/2addr v0, v10

    goto :goto_2

    :cond_2
    :goto_3
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_3

    add-double/2addr v0, v10

    goto :goto_3

    :cond_3
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v4, v2, v3, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v4
.end method

.method public getGeoPointOfRelativePositionWithLinearInterpolation(FF)Lorg/osmdroid/util/GeoPoint;
    .locals 12

    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide v8, 0x4056a00000000000L    # 90.5

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v2

    float-to-double v4, p2

    mul-double/2addr v2, v4

    sub-double v2, v0, v2

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v4

    float-to-double v6, p1

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    :goto_0
    cmpl-double v4, v2, v8

    if-lez v4, :cond_0

    sub-double/2addr v2, v8

    goto :goto_0

    :cond_0
    :goto_1
    const-wide v4, -0x3fa9600000000000L    # -90.5

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    add-double/2addr v2, v8

    goto :goto_1

    :cond_1
    :goto_2
    cmpl-double v4, v0, v10

    if-lez v4, :cond_2

    sub-double/2addr v0, v10

    goto :goto_2

    :cond_2
    :goto_3
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_3

    add-double/2addr v0, v10

    goto :goto_3

    :cond_3
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v4, v2, v3, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v4
.end method

.method public getLatNorth()D
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    return-wide v0
.end method

.method public getLatSouth()D
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    return-wide v0
.end method

.method public getLatitudeSpan()D
    .locals 4

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitudeSpanE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLonEast()D
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    return-wide v0
.end method

.method public getLonWest()D
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    return-wide v0
.end method

.method public getLongitudeSpan()D
    .locals 4

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitudeSpanE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 7

    if-eqz p5, :cond_0

    :goto_0
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v2, v3}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v4, v5}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    sub-double/2addr v2, p3

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p5, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object p5

    :cond_0
    new-instance p5, Landroid/graphics/PointF;

    invoke-direct {p5}, Landroid/graphics/PointF;-><init>()V

    goto :goto_0
.end method

.method public getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 7

    if-eqz p5, :cond_0

    :goto_0
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    sub-double/2addr v0, p1

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    sub-double/2addr v2, p3

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p5, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object p5

    :cond_0
    new-instance p5, Landroid/graphics/PointF;

    invoke-direct {p5}, Landroid/graphics/PointF;-><init>()V

    goto :goto_0
.end method

.method public increaseByScale(F)Lorg/osmdroid/util/BoundingBox;
    .locals 12

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    div-double v6, v2, v8

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    div-double v8, v2, v8

    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    add-double/2addr v2, v6

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    add-double/2addr v4, v8

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v10

    sub-double v6, v10, v6

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    sub-double v8, v10, v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "N:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; E:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
