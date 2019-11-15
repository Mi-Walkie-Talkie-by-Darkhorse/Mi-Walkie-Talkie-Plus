.class public Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;
.super Lorg/osmdroid/util/GeoPoint;
.source "LabelledGeoPoint.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint$1;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint$1;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDDLjava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    iput-object p7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object p5, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/util/GeoPoint;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/location/Location;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;)V
    .locals 9

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getAltitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDDLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->clone()Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->clone()Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;
    .locals 9

    new-instance v1, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getAltitude()D

    move-result-wide v6

    iget-object v8, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDDLjava/lang/String;)V

    return-object v1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
