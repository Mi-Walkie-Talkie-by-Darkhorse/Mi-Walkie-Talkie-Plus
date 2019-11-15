.class public Lcom/amap/api/services/route/TruckStep;
.super Ljava/lang/Object;
.source "TruckStep.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/TruckStep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:F

.field private e:F

.field private f:F

.field private g:Ljava/lang/String;

.field private h:F

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RouteSearchCity;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/TMC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/services/route/TruckStep$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/TruckStep$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/TruckStep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/TruckStep;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/TruckStep;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/TruckStep;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/TruckStep;->d:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/TruckStep;->e:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/TruckStep;->f:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/TruckStep;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/TruckStep;->h:F

    sget-object v0, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/TruckStep;->i:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/TruckStep;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/TruckStep;->k:Ljava/lang/String;

    sget-object v0, Lcom/amap/api/services/route/RouteSearchCity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/TruckStep;->l:Ljava/util/List;

    sget-object v0, Lcom/amap/api/services/route/TMC;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/TruckStep;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getAssistantAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    iget v0, p0, Lcom/amap/api/services/route/TruckStep;->e:F

    return v0
.end method

.method public getDuration()F
    .locals 1

    iget v0, p0, Lcom/amap/api/services/route/TruckStep;->h:F

    return v0
.end method

.method public getInstruction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPolyline()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->i:Ljava/util/List;

    return-object v0
.end method

.method public getRoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteSearchCityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RouteSearchCity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->l:Ljava/util/List;

    return-object v0
.end method

.method public getTMCs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/TMC;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->m:Ljava/util/List;

    return-object v0
.end method

.method public getTollDistance()F
    .locals 1

    iget v0, p0, Lcom/amap/api/services/route/TruckStep;->f:F

    return v0
.end method

.method public getTollRoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTolls()F
    .locals 1

    iget v0, p0, Lcom/amap/api/services/route/TruckStep;->d:F

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/TruckStep;->j:Ljava/lang/String;

    return-void
.end method

.method public setAssistantAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/TruckStep;->k:Ljava/lang/String;

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/TruckStep;->e:F

    return-void
.end method

.method public setDuration(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/TruckStep;->h:F

    return-void
.end method

.method public setInstruction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/TruckStep;->a:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/TruckStep;->b:Ljava/lang/String;

    return-void
.end method

.method public setPolyline(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/services/route/TruckStep;->i:Ljava/util/List;

    return-void
.end method

.method public setRoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/TruckStep;->c:Ljava/lang/String;

    return-void
.end method

.method public setRouteSearchCityList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RouteSearchCity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/services/route/TruckStep;->l:Ljava/util/List;

    return-void
.end method

.method public setTMCs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/TMC;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/services/route/TruckStep;->m:Ljava/util/List;

    return-void
.end method

.method public setTollDistance(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/TruckStep;->f:F

    return-void
.end method

.method public setTollRoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/route/TruckStep;->g:Ljava/lang/String;

    return-void
.end method

.method public setTolls(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/route/TruckStep;->d:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/services/route/TruckStep;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/services/route/TruckStep;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/services/route/TruckStep;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/services/route/TruckStep;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->l:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/amap/api/services/route/TruckStep;->m:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
