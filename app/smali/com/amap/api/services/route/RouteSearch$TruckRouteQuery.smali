.class public Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;
.super Ljava/lang/Object;
.source "RouteSearch.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/RouteSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TruckRouteQuery"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    const-class v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->c:I

    sget-object v0, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->e:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->f:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->g:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->h:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->i:F

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/route/RouteSearch$FromAndTo;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iput p2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->c:I

    iput-object p3, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    iput p4, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;
    .locals 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->c:I

    iget-object v3, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    iget v4, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;-><init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/util/List;I)V

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "TruckRouteQueryclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->c:I

    return v0
.end method

.method public getPassedPointStr()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTruckAxis()F
    .locals 1

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->i:F

    return v0
.end method

.method public getTruckHeight()F
    .locals 1

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->e:F

    return v0
.end method

.method public getTruckLoad()F
    .locals 1

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->g:F

    return v0
.end method

.method public getTruckSize()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    return v0
.end method

.method public getTruckWeight()F
    .locals 1

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->h:F

    return v0
.end method

.method public getTruckWidth()F
    .locals 1

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->f:F

    return v0
.end method

.method public hasPassPoint()Z
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->getPassedPointStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->c:I

    return-void
.end method

.method public setTruckAxis(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->i:F

    return-void
.end method

.method public setTruckHeight(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->e:F

    return-void
.end method

.method public setTruckLoad(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->g:F

    return-void
.end method

.method public setTruckSize(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    return-void
.end method

.method public setTruckWeight(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->h:F

    return-void
.end method

.method public setTruckWidth(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->f:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->i:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
