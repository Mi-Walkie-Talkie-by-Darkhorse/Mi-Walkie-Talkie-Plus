.class public Lcom/amap/api/maps/model/MarkerOptionsCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps/model/MarkerOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 3

    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const-class v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->setInfoWindowOffset(II)Lcom/amap/api/maps/model/MarkerOptions;

    const/4 v1, 0x7

    new-array v1, v1, [Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v2, 0x0

    aget-boolean v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps/model/MarkerOptions;

    const/4 v2, 0x1

    aget-boolean v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    const/4 v2, 0x2

    aget-boolean v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->setGps(Z)Lcom/amap/api/maps/model/MarkerOptions;

    const/4 v2, 0x3

    aget-boolean v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;

    const/4 v2, 0x4

    aget-boolean v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->autoOverturnInfoWindow(Z)Lcom/amap/api/maps/model/MarkerOptions;

    const/4 v2, 0x5

    aget-boolean v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->infoWindowEnable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    const/4 v2, 0x6

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->belowMaskLayer(Z)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/maps/model/MarkerOptions;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->period(I)Lcom/amap/api/maps/model/MarkerOptions;

    const-class v1, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->icons(Ljava/util/ArrayList;)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->zIndex(F)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->alpha(F)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->displayLevel(I)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->rotateAngle(F)Lcom/amap/api/maps/model/MarkerOptions;

    const-class v1, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/MarkerOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    new-array p1, p1, [Lcom/amap/api/maps/model/MarkerOptions;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/MarkerOptionsCreator;->newArray(I)[Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    return-object p1
.end method
