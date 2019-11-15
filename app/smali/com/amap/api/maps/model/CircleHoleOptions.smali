.class public Lcom/amap/api/maps/model/CircleHoleOptions;
.super Lcom/amap/api/maps/model/BaseHoleOptions;
.source "CircleHoleOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/maps/model/CircleHoleOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps/model/CircleHoleOptions$1;

    invoke-direct {v0}, Lcom/amap/api/maps/model/CircleHoleOptions$1;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/CircleHoleOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseHoleOptions;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->a:Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->b:D

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseHoleOptions;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->a:Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->b:D

    const-class v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iput-object v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->a:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->b:D

    return-void
.end method


# virtual methods
.method public center(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CircleHoleOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->a:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenter()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->a:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->b:D

    return-wide v0
.end method

.method public radius(D)Lcom/amap/api/maps/model/CircleHoleOptions;
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->b:D

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->a:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    const-string v1, "lat"

    iget-object v2, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->a:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "lng"

    iget-object v2, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->a:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-wide v0, p0, Lcom/amap/api/maps/model/CircleHoleOptions;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
