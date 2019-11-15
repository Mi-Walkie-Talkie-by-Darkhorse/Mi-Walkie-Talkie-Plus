.class public Lcom/amap/api/fence/GeoFence;
.super Ljava/lang/Object;
.source "GeoFence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADDGEOFENCE_SUCCESS:I = 0x0

.field public static final BUNDLE_KEY_CUSTOMID:Ljava/lang/String; = "customId"

.field public static final BUNDLE_KEY_FENCE:Ljava/lang/String; = "fence"

.field public static final BUNDLE_KEY_FENCEID:Ljava/lang/String; = "fenceid"

.field public static final BUNDLE_KEY_FENCESTATUS:Ljava/lang/String; = "event"

.field public static final BUNDLE_KEY_LOCERRORCODE:Ljava/lang/String; = "location_errorcode"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/fence/GeoFence;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_CODE_EXISTS:I = 0x11

.field public static final ERROR_CODE_FAILURE_AUTH:I = 0x7

.field public static final ERROR_CODE_FAILURE_CONNECTION:I = 0x4

.field public static final ERROR_CODE_FAILURE_PARSER:I = 0x5

.field public static final ERROR_CODE_INVALID_PARAMETER:I = 0x1

.field public static final ERROR_CODE_UNKNOWN:I = 0x8

.field public static final ERROR_NO_VALIDFENCE:I = 0x10

.field public static final STATUS_IN:I = 0x1

.field public static final STATUS_LOCFAIL:I = 0x4

.field public static final STATUS_OUT:I = 0x2

.field public static final STATUS_STAYED:I = 0x3

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final TYPE_AMAPPOI:I = 0x2

.field public static final TYPE_DISTRICT:I = 0x3

.field public static final TYPE_POLYGON:I = 0x1

.field public static final TYPE_ROUND:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/PendingIntent;

.field private e:I

.field private f:Lcom/amap/api/fence/PoiItem;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/fence/DistrictItem;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/DPoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:F

.field private j:J

.field private k:I

.field private l:F

.field private m:F

.field private n:Lcom/amap/api/location/DPoint;

.field private o:I

.field private p:J

.field private q:Z

.field private r:Lcom/amap/api/location/AMapLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/fence/GeoFence$1;

    invoke-direct {v0}, Lcom/amap/api/fence/GeoFence$1;-><init>()V

    sput-object v0, Lcom/amap/api/fence/GeoFence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->d:Landroid/app/PendingIntent;

    iput v2, p0, Lcom/amap/api/fence/GeoFence;->e:I

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->f:Lcom/amap/api/fence/PoiItem;

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->g:Ljava/util/List;

    iput v1, p0, Lcom/amap/api/fence/GeoFence;->i:F

    iput-wide v4, p0, Lcom/amap/api/fence/GeoFence;->j:J

    iput v3, p0, Lcom/amap/api/fence/GeoFence;->k:I

    iput v1, p0, Lcom/amap/api/fence/GeoFence;->l:F

    iput v1, p0, Lcom/amap/api/fence/GeoFence;->m:F

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->n:Lcom/amap/api/location/DPoint;

    iput v2, p0, Lcom/amap/api/fence/GeoFence;->o:I

    iput-wide v4, p0, Lcom/amap/api/fence/GeoFence;->p:J

    iput-boolean v3, p0, Lcom/amap/api/fence/GeoFence;->q:Z

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->r:Lcom/amap/api/location/AMapLocation;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->d:Landroid/app/PendingIntent;

    iput v2, p0, Lcom/amap/api/fence/GeoFence;->e:I

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->f:Lcom/amap/api/fence/PoiItem;

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->g:Ljava/util/List;

    iput v3, p0, Lcom/amap/api/fence/GeoFence;->i:F

    iput-wide v4, p0, Lcom/amap/api/fence/GeoFence;->j:J

    iput v1, p0, Lcom/amap/api/fence/GeoFence;->k:I

    iput v3, p0, Lcom/amap/api/fence/GeoFence;->l:F

    iput v3, p0, Lcom/amap/api/fence/GeoFence;->m:F

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->n:Lcom/amap/api/location/DPoint;

    iput v2, p0, Lcom/amap/api/fence/GeoFence;->o:I

    iput-wide v4, p0, Lcom/amap/api/fence/GeoFence;->p:J

    iput-boolean v1, p0, Lcom/amap/api/fence/GeoFence;->q:Z

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->r:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->c:Ljava/lang/String;

    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->d:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/fence/GeoFence;->e:I

    const-class v0, Lcom/amap/api/fence/PoiItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/fence/PoiItem;

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->f:Lcom/amap/api/fence/PoiItem;

    sget-object v0, Lcom/amap/api/fence/DistrictItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->g:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/fence/GeoFence;->i:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amap/api/fence/GeoFence;->j:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/fence/GeoFence;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/fence/GeoFence;->l:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/fence/GeoFence;->m:F

    const-class v0, Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/DPoint;

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->n:Lcom/amap/api/location/DPoint;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/fence/GeoFence;->o:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amap/api/fence/GeoFence;->p:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->h:Ljava/util/List;

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/amap/api/fence/GeoFence;->h:Ljava/util/List;

    sget-object v5, Lcom/amap/api/location/DPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/amap/api/fence/GeoFence;->q:Z

    const-class v0, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->r:Lcom/amap/api/location/AMapLocation;

    return-void

    :cond_1
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/amap/api/fence/GeoFence;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/amap/api/fence/GeoFence;

    iget-object v1, p0, Lcom/amap/api/fence/GeoFence;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/amap/api/fence/GeoFence;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/fence/GeoFence;->n:Lcom/amap/api/location/DPoint;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/amap/api/fence/GeoFence;->n:Lcom/amap/api/location/DPoint;

    if-nez v1, :cond_0

    :cond_3
    iget v1, p0, Lcom/amap/api/fence/GeoFence;->i:F

    iget v2, p1, Lcom/amap/api/fence/GeoFence;->i:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/fence/GeoFence;->h:Ljava/util/List;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/amap/api/fence/GeoFence;->h:Ljava/util/List;

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/amap/api/fence/GeoFence;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/amap/api/fence/GeoFence;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/amap/api/fence/GeoFence;->n:Lcom/amap/api/location/DPoint;

    iget-object v2, p1, Lcom/amap/api/fence/GeoFence;->n:Lcom/amap/api/location/DPoint;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/DPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/amap/api/fence/GeoFence;->h:Ljava/util/List;

    iget-object v2, p1, Lcom/amap/api/fence/GeoFence;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public getActivatesAction()I
    .locals 1

    iget v0, p0, Lcom/amap/api/fence/GeoFence;->k:I

    return v0
.end method

.method public getCenter()Lcom/amap/api/location/DPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->n:Lcom/amap/api/location/DPoint;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/amap/api/location/AMapLocation;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->r:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method public getCustomId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/fence/DistrictItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->g:Ljava/util/List;

    return-object v0
.end method

.method public getEnterTime()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/fence/GeoFence;->p:J

    return-wide v0
.end method

.method public getExpiration()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/fence/GeoFence;->j:J

    return-wide v0
.end method

.method public getFenceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDis2Center()F
    .locals 1

    iget v0, p0, Lcom/amap/api/fence/GeoFence;->m:F

    return v0
.end method

.method public getMinDis2Center()F
    .locals 1

    iget v0, p0, Lcom/amap/api/fence/GeoFence;->l:F

    return v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->d:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getPendingIntentAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiItem()Lcom/amap/api/fence/PoiItem;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->f:Lcom/amap/api/fence/PoiItem;

    return-object v0
.end method

.method public getPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/DPoint;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->h:Ljava/util/List;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/amap/api/fence/GeoFence;->i:F

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/amap/api/fence/GeoFence;->o:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/fence/GeoFence;->e:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/fence/GeoFence;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amap/api/fence/GeoFence;->n:Lcom/amap/api/location/DPoint;

    invoke-virtual {v1}, Lcom/amap/api/location/DPoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    iget v2, p0, Lcom/amap/api/fence/GeoFence;->i:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAble()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/fence/GeoFence;->q:Z

    return v0
.end method

.method public setAble(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/fence/GeoFence;->q:Z

    return-void
.end method

.method public setActivatesAction(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/fence/GeoFence;->k:I

    return-void
.end method

.method public setCenter(Lcom/amap/api/location/DPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/fence/GeoFence;->n:Lcom/amap/api/location/DPoint;

    return-void
.end method

.method public setCurrentLocation(Lcom/amap/api/location/AMapLocation;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/fence/GeoFence;->r:Lcom/amap/api/location/AMapLocation;

    return-void
.end method

.method public setCustomId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/fence/GeoFence;->b:Ljava/lang/String;

    return-void
.end method

.method public setDistrictItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/fence/DistrictItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/fence/GeoFence;->g:Ljava/util/List;

    return-void
.end method

.method public setEnterTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/fence/GeoFence;->p:J

    return-void
.end method

.method public setExpiration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amap/api/fence/GeoFence;->j:J

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/amap/api/fence/GeoFence;->j:J

    goto :goto_0
.end method

.method public setFenceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/fence/GeoFence;->a:Ljava/lang/String;

    return-void
.end method

.method public setMaxDis2Center(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/fence/GeoFence;->m:F

    return-void
.end method

.method public setMinDis2Center(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/fence/GeoFence;->l:F

    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/fence/GeoFence;->d:Landroid/app/PendingIntent;

    return-void
.end method

.method public setPendingIntentAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/fence/GeoFence;->c:Ljava/lang/String;

    return-void
.end method

.method public setPoiItem(Lcom/amap/api/fence/PoiItem;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/fence/GeoFence;->f:Lcom/amap/api/fence/PoiItem;

    return-void
.end method

.method public setPointList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/DPoint;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/fence/GeoFence;->h:Ljava/util/List;

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/fence/GeoFence;->i:F

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/fence/GeoFence;->o:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/fence/GeoFence;->e:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->d:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/fence/GeoFence;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->f:Lcom/amap/api/fence/PoiItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Lcom/amap/api/fence/GeoFence;->i:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Lcom/amap/api/fence/GeoFence;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/amap/api/fence/GeoFence;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/fence/GeoFence;->l:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/fence/GeoFence;->m:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->n:Lcom/amap/api/location/DPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/fence/GeoFence;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/amap/api/fence/GeoFence;->p:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/fence/GeoFence;->q:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/amap/api/fence/GeoFence;->r:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
