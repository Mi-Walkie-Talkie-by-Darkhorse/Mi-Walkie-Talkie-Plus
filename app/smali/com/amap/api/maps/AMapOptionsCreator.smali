.class public Lcom/amap/api/maps/AMapOptionsCreator;
.super Ljava/lang/Object;
.source "AMapOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps/AMapOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/AMapOptions;
    .locals 3

    .line 2
    new-instance v0, Lcom/amap/api/maps/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/AMapOptions;-><init>()V

    .line 3
    const-class v1, Lcom/amap/api/maps/model/CameraPosition;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/CameraPosition;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMapOptions;->mapType(I)Lcom/amap/api/maps/AMapOptions;

    .line 5
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMapOptions;->camera(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/AMapOptions;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    array-length v1, p1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 8
    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMapOptions;->rotateGesturesEnabled(Z)Lcom/amap/api/maps/AMapOptions;

    const/4 v1, 0x1

    .line 9
    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMapOptions;->scrollGesturesEnabled(Z)Lcom/amap/api/maps/AMapOptions;

    const/4 v1, 0x2

    .line 10
    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMapOptions;->tiltGesturesEnabled(Z)Lcom/amap/api/maps/AMapOptions;

    const/4 v1, 0x3

    .line 11
    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMapOptions;->zoomGesturesEnabled(Z)Lcom/amap/api/maps/AMapOptions;

    const/4 v1, 0x4

    .line 12
    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMapOptions;->zoomControlsEnabled(Z)Lcom/amap/api/maps/AMapOptions;

    const/4 v1, 0x5

    .line 13
    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMapOptions;->zOrderOnTop(Z)Lcom/amap/api/maps/AMapOptions;

    .line 14
    aget-boolean v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMapOptions;->compassEnabled(Z)Lcom/amap/api/maps/AMapOptions;

    const/4 v1, 0x7

    .line 15
    aget-boolean p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/AMapOptions;->scaleControlsEnabled(Z)Lcom/amap/api/maps/AMapOptions;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/AMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/AMapOptions;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amap/api/maps/AMapOptions;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/amap/api/maps/AMapOptions;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/AMapOptionsCreator;->newArray(I)[Lcom/amap/api/maps/AMapOptions;

    move-result-object p1

    return-object p1
.end method
