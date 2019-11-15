.class public Lcom/amap/api/location/AMapLocationClientOption;
.super Ljava/lang/Object;
.source "AMapLocationClientOption.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;,
        Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;,
        Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;,
        Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/location/AMapLocationClientOption;",
            ">;"
        }
    .end annotation
.end field

.field static a:Ljava/lang/String;

.field private static j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

.field private static t:Z


# instance fields
.field private b:J

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:J

.field private s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field private u:F

.field private v:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption;->j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    const-string v0, ""

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption;->a:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption$1;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption$1;-><init>()V

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    sget v0, Lcom/amap/api/col/sl/fq;->f:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    sget v0, Lcom/amap/api/col/sl/fq;->f:I

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    const-wide/16 v4, 0x7530

    iput-wide v4, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:F

    iput-object v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v6, :cond_5

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    :goto_5
    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v6, :cond_d

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    :goto_d
    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption;->j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v6, :cond_e

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    :goto_e
    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_f

    :goto_f
    sput-boolean v1, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v6, :cond_10

    move-object v0, v3

    :goto_10
    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v4

    aget-object v0, v4, v0

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v2

    goto :goto_9

    :cond_a
    move v0, v2

    goto :goto_a

    :cond_b
    move v0, v2

    goto :goto_b

    :cond_c
    move v0, v2

    goto :goto_c

    :cond_d
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v4

    aget-object v0, v4, v0

    goto :goto_d

    :cond_e
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->values()[Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v4

    aget-object v0, v4, v0

    goto :goto_e

    :cond_f
    move v1, v2

    goto :goto_f

    :cond_10
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_10
.end method

.method public static getAPIKEY()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static isDownloadCoordinateConvertLibrary()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    return v0
.end method

.method public static setDownloadCoordinateConvertLibrary(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    return-void
.end method

.method public static setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V
    .locals 0

    sput-object p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/location/AMapLocationClientOption;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    iput-wide v2, v0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    iput-wide v2, v0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    iget-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->isSensorEnable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiScan()Z

    move-result v1

    iput-boolean v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    iput-wide v2, v0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iget v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:F

    iput v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->u:F

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    iput-object v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->v:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->clone()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceModeDistanceFilter()F
    .locals 1

    iget v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:F

    return v0
.end method

.method public getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-object v0
.end method

.method public getHttpTimeOut()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    return-wide v0
.end method

.method public getLastLocationLifeCycle()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    return-wide v0
.end method

.method public getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-object v0
.end method

.method public getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;
    .locals 1

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption;->j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    return-object v0
.end method

.method public getLocationPurpose()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    return-object v0
.end method

.method public isGpsFirst()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    return v0
.end method

.method public isKillProcess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    return v0
.end method

.method public isLocationCacheEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    return v0
.end method

.method public isMockEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    return v0
.end method

.method public isNeedAddress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    return v0
.end method

.method public isOffset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    return v0
.end method

.method public isOnceLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    return v0
.end method

.method public isOnceLocationLatest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    return v0
.end method

.method public isSensorEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    return v0
.end method

.method public isWifiActiveScan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    return v0
.end method

.method public isWifiScan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    return v0
.end method

.method public setDeviceModeDistanceFilter(F)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:F

    return-object p0
.end method

.method public setGeoLanguage(Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-object p0
.end method

.method public setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    return-object p0
.end method

.method public setHttpTimeOut(J)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    return-object p0
.end method

.method public setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 3

    const-wide/16 v0, 0x320

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    return-object p0
.end method

.method public setKillProcess(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    return-object p0
.end method

.method public setLastLocationLifeCycle(J)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    return-object p0
.end method

.method public setLocationCacheEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    return-object p0
.end method

.method public setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-object p0
.end method

.method public setLocationPurpose(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$2;->a:[I

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-object p0

    :pswitch_0
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setMockEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    return-object p0
.end method

.method public setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    return-object p0
.end method

.method public setOffset(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    return-object p0
.end method

.method public setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    return-object p0
.end method

.method public setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    return-object p0
.end method

.method public setSensorEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    return-object p0
.end method

.method public setWifiActiveScan(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    return-object p0
.end method

.method public setWifiScan(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isOnceLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "locationMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "locationProtocol:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption;->j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isMockEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isKillProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isGpsFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isNeedAddress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isWifiActiveScan:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wifiScan:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "httpTimeOut:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isLocationCacheEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isOnceLocationLatest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sensorEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "geoLanguage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "locationPurpose:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-nez v0, :cond_5

    move v0, v3

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v4, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption;->j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    if-nez v0, :cond_d

    move v0, v3

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    if-nez v0, :cond_e

    move v0, v3

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-boolean v0, Lcom/amap/api/location/AMapLocationClientOption;->t:Z

    if-eqz v0, :cond_f

    :goto_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->u:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    if-nez v0, :cond_10

    :goto_10
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v0

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v2

    goto :goto_9

    :cond_a
    move v0, v2

    goto :goto_a

    :cond_b
    move v0, v2

    goto :goto_b

    :cond_c
    move v0, v2

    goto :goto_c

    :cond_d
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->ordinal()I

    move-result v0

    goto :goto_d

    :cond_e
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->ordinal()I

    move-result v0

    goto :goto_e

    :cond_f
    move v1, v2

    goto :goto_f

    :cond_10
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->ordinal()I

    move-result v3

    goto :goto_10
.end method
