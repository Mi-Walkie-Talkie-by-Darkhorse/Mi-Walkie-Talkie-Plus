.class final Lcom/amap/api/location/AMapLocation$1;
.super Ljava/lang/Object;
.source "AMapLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/AMapLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/location/AMapLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    new-instance v3, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v3, v0}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->b(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->c(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->d(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->e(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->f(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->g(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->a(Lcom/amap/api/location/AMapLocation;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->h(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->a(Lcom/amap/api/location/AMapLocation;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->b(Lcom/amap/api/location/AMapLocation;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/amap/api/location/AMapLocation;->a(Lcom/amap/api/location/AMapLocation;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->i(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->b(Lcom/amap/api/location/AMapLocation;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/amap/api/location/AMapLocation;->b(Lcom/amap/api/location/AMapLocation;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v3, v1}, Lcom/amap/api/location/AMapLocation;->c(Lcom/amap/api/location/AMapLocation;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->j(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->k(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->l(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->m(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->c(Lcom/amap/api/location/AMapLocation;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->d(Lcom/amap/api/location/AMapLocation;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->n(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/location/AMapLocation;->o(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;

    return-object v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method
