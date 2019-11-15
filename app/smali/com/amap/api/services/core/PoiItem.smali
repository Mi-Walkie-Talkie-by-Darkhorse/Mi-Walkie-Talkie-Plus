.class public Lcom/amap/api/services/core/PoiItem;
.super Ljava/lang/Object;
.source "PoiItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private final g:Lcom/amap/api/services/core/LatLonPoint;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Lcom/amap/api/services/core/LatLonPoint;

.field private k:Lcom/amap/api/services/core/LatLonPoint;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Lcom/amap/api/services/poisearch/IndoorData;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/SubPoiItem;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/amap/api/services/poisearch/PoiItemExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/services/core/PoiItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/core/PoiItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/core/PoiItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->x:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->y:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->g:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->d:Ljava/lang/String;

    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->j:Lcom/amap/api/services/core/LatLonPoint;

    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->k:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->n:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/amap/api/services/core/PoiItem;->s:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->o:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->p:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->r:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->u:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->v:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->w:Ljava/lang/String;

    const-class v0, Lcom/amap/api/services/poisearch/SubPoiItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->x:Ljava/util/List;

    const-class v0, Lcom/amap/api/services/poisearch/IndoorData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/IndoorData;

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->t:Lcom/amap/api/services/poisearch/IndoorData;

    sget-object v0, Lcom/amap/api/services/poisearch/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->y:Ljava/util/List;

    const-class v0, Lcom/amap/api/services/poisearch/PoiItemExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/PoiItemExtension;

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->z:Lcom/amap/api/services/poisearch/PoiItemExtension;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->A:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->x:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->y:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/services/core/PoiItem;->g:Lcom/amap/api/services/core/LatLonPoint;

    iput-object p3, p0, Lcom/amap/api/services/core/PoiItem;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/services/core/PoiItem;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/amap/api/services/core/PoiItem;

    iget-object v2, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAdName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getEnter()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->j:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getExit()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->k:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getIndoorData()Lcom/amap/api/services/poisearch/IndoorData;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->t:Lcom/amap/api/services/poisearch/IndoorData;

    return-object v0
.end method

.method public getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->g:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getParkingType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->y:Ljava/util/List;

    return-object v0
.end method

.method public getPoiExtension()Lcom/amap/api/services/poisearch/PoiItemExtension;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->z:Lcom/amap/api/services/poisearch/PoiItemExtension;

    return-object v0
.end method

.method public getPoiId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPostcode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getShopID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getSubPois()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/SubPoiItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->x:Ljava/util/List;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->l:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isIndoorMap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/services/core/PoiItem;->s:Z

    return v0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->c:Ljava/lang/String;

    return-void
.end method

.method public setAdName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->r:Ljava/lang/String;

    return-void
.end method

.method public setBusinessArea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->v:Ljava/lang/String;

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->d:Ljava/lang/String;

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->q:Ljava/lang/String;

    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->o:Ljava/lang/String;

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->n:Ljava/lang/String;

    return-void
.end method

.method public setEnter(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->j:Lcom/amap/api/services/core/LatLonPoint;

    return-void
.end method

.method public setExit(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->k:Lcom/amap/api/services/core/LatLonPoint;

    return-void
.end method

.method public setIndoorDate(Lcom/amap/api/services/poisearch/IndoorData;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->t:Lcom/amap/api/services/poisearch/IndoorData;

    return-void
.end method

.method public setIndoorMap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/services/core/PoiItem;->s:Z

    return-void
.end method

.method public setParkingType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->w:Ljava/lang/String;

    return-void
.end method

.method public setPhotos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->y:Ljava/util/List;

    return-void
.end method

.method public setPoiExtension(Lcom/amap/api/services/poisearch/PoiItemExtension;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->z:Lcom/amap/api/services/poisearch/PoiItemExtension;

    return-void
.end method

.method public setPostcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->m:Ljava/lang/String;

    return-void
.end method

.method public setProvinceCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->u:Ljava/lang/String;

    return-void
.end method

.method public setProvinceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->p:Ljava/lang/String;

    return-void
.end method

.method public setShopID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->B:Ljava/lang/String;

    return-void
.end method

.method public setSubPois(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/SubPoiItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->x:Ljava/util/List;

    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->b:Ljava/lang/String;

    return-void
.end method

.method public setTypeCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->A:Ljava/lang/String;

    return-void
.end method

.method public setTypeDes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->l:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->g:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->j:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->k:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/services/core/PoiItem;->s:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->x:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->t:Lcom/amap/api/services/poisearch/IndoorData;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->y:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->z:Lcom/amap/api/services/poisearch/PoiItemExtension;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
