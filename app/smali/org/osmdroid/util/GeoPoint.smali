.class public Lorg/osmdroid/util/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/osmdroid/api/IGeoPoint;
.implements Lorg/osmdroid/util/constants/GeoConstants;
.implements Lorg/osmdroid/views/util/constants/MathConstants;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mAltitude:D

.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/osmdroid/util/GeoPoint$1;

    invoke-direct {v0}, Lorg/osmdroid/util/GeoPoint$1;-><init>()V

    sput-object v0, Lorg/osmdroid/util/GeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    iput-wide p3, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    iput-wide p3, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    iput-wide p5, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v2, 0x412e848000000000L    # 1000000.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-double v0, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    int-to-double v0, p2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v2, 0x412e848000000000L    # 1000000.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-double v0, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    int-to-double v0, p2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    int-to-double v0, p3

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 8

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/osmdroid/util/GeoPoint$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/GeoPoint;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    iget-wide v0, p1, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    iget-wide v0, p1, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    iput-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    return-void
.end method

.method public static fromCenterBetween(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    add-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public static fromDoubleString(Ljava/lang/String;C)Lorg/osmdroid/util/GeoPoint;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v1, -0x1

    if-ne v6, v1, :cond_0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    goto :goto_0
.end method

.method public static fromIntString(Ljava/lang/String;)Lorg/osmdroid/util/GeoPoint;
    .locals 5

    const/16 v2, 0x2c

    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v3, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(III)V

    goto :goto_0
.end method

.method public static fromInvertedDoubleString(Ljava/lang/String;C)Lorg/osmdroid/util/GeoPoint;
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v1, -0x1

    if-ne v6, v1, :cond_0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    goto :goto_0
.end method


# virtual methods
.method public bearingTo(Lorg/osmdroid/api/IGeoPoint;)D
    .locals 14

    const-wide v12, 0x4076800000000000L    # 360.0

    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    sub-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sub-double v0, v8, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    add-double/2addr v0, v12

    rem-double/2addr v0, v12

    return-wide v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->clone()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/util/GeoPoint;
    .locals 8

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    iget-wide v4, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    iget-wide v6, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    return-object v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;
    .locals 15

    const-wide v0, 0x415854a640000000L    # 6378137.0

    div-double v0, p1, v0

    const v2, 0x3c8efa35

    mul-float v2, v2, p3

    const-wide v4, 0x3f91df46a0000000L    # 0.01745329238474369

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x3f91df46a0000000L    # 0.01745329238474369

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v2, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v2, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    sub-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    add-double/2addr v0, v6

    const-wide v2, 0x3f91df46a0000000L    # 0.01745329238474369

    div-double v2, v8, v2

    const-wide v4, 0x3f91df46a0000000L    # 0.01745329238474369

    div-double/2addr v0, v4

    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v4, v2, v3, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v4
.end method

.method public distanceTo(Lorg/osmdroid/api/IGeoPoint;)I
    .locals 18

    const-wide v2, 0x3f91df46a0000000L    # 0.01745329238474369

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    mul-double/2addr v2, v4

    const-wide v4, 0x3f91df46a0000000L    # 0.01745329238474369

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    mul-double/2addr v4, v6

    const-wide v6, 0x3f91df46a0000000L    # 0.01745329238474369

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x3f91df46a0000000L    # 0.01745329238474369

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v10

    mul-double/2addr v14, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v10

    mul-double/2addr v4, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    add-double/2addr v4, v14

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v4, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p1, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    iget-wide v4, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p1, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    iget-wide v4, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p1, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    iget-wide v4, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    return-wide v0
.end method

.method public getLatitudeE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    return-wide v0
.end method

.method public getLongitudeE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    mul-double/2addr v0, v4

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x11

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    double-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public setAltitude(D)V
    .locals 1

    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    return-void
.end method

.method public setCoords(DD)V
    .locals 1

    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    iput-wide p3, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    return-void
.end method

.method public toDoubleString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toIntString()Ljava/lang/String;
    .locals 6

    const-wide v4, 0x412e848000000000L    # 1000000.0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toInvertedDoubleString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
