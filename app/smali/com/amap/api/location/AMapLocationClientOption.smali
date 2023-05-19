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
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/location/AMapLocationClientOption;",
            ">;"
        }
    .end annotation
.end field

.field public static OPEN_ALWAYS_SCAN_WIFI:Z

.field public static SCAN_WIFI_INTERVAL:J

.field static a:Ljava/lang/String;

.field private static j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

.field private static u:Z


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

.field private s:J

.field private t:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field private v:F

.field private w:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption;->j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    const-string v0, ""

    .line 2
    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    .line 4
    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption$1;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption$1;-><init>()V

    sput-object v1, Lcom/amap/api/location/AMapLocationClientOption;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    sput-boolean v0, Lcom/amap/api/location/AMapLocationClientOption;->OPEN_ALWAYS_SCAN_WIFI:Z

    const-wide/16 v0, 0x7530

    .line 6
    sput-wide v0, Lcom/amap/api/location/AMapLocationClientOption;->SCAN_WIFI_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    .line 2
    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    .line 3
    sget v0, Lcom/amap/api/col/l3/jz;->f:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    .line 6
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    .line 7
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    .line 8
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    .line 9
    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    .line 10
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    .line 11
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    .line 12
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    .line 13
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    .line 14
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    .line 15
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    .line 16
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    const-wide/16 v0, 0x7530

    .line 17
    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    .line 18
    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:J

    .line 19
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:F

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    .line 23
    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    .line 24
    sget v0, Lcom/amap/api/col/l3/jz;->f:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    .line 27
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    .line 28
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    .line 29
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    .line 30
    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    .line 31
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    .line 32
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    .line 33
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    .line 34
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    .line 35
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    .line 36
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    .line 37
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    const-wide/16 v3, 0x7530

    .line 38
    iput-wide v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    .line 39
    iput-wide v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:J

    .line 40
    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v4, 0x0

    .line 41
    iput v4, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:F

    const/4 v4, 0x0

    .line 42
    iput-object v4, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    goto :goto_5

    .line 51
    :cond_5
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v2

    aget-object v2, v2, v5

    :goto_5
    iput-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v6, :cond_d

    .line 61
    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    goto :goto_d

    :cond_d
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v5

    aget-object v2, v5, v2

    :goto_d
    sput-object v2, Lcom/amap/api/location/AMapLocationClientOption;->j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v6, :cond_e

    goto :goto_e

    .line 63
    :cond_e
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->values()[Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v3

    aget-object v3, v3, v2

    :goto_e
    iput-object v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    sput-boolean v2, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:F

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v6, :cond_10

    goto :goto_10

    .line 67
    :cond_10
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    move-result-object v3

    aget-object v4, v3, v2

    :goto_10
    iput-object v4, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    sput-boolean v0, Lcom/amap/api/location/AMapLocationClientOption;->OPEN_ALWAYS_SCAN_WIFI:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:J

    return-void
.end method

.method public static getAPIKEY()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static isDownloadCoordinateConvertLibrary()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    return v0
.end method

.method public static isOpenAlwaysScanWifi()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/api/location/AMapLocationClientOption;->OPEN_ALWAYS_SCAN_WIFI:Z

    return v0
.end method

.method public static setDownloadCoordinateConvertLibrary(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    return-void
.end method

.method public static setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    return-void
.end method

.method public static setOpenAlwaysScanWifi(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/location/AMapLocationClientOption;->OPEN_ALWAYS_SCAN_WIFI:Z

    return-void
.end method

.method public static setScanWifiInterval(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/amap/api/location/AMapLocationClientOption;->SCAN_WIFI_INTERVAL:J

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/location/AMapLocationClientOption;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :goto_0
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iget-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    iput-wide v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

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

    iget-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    iput-wide v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

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

    iget-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    iput-wide v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v1

    sput-object v1, Lcom/amap/api/location/AMapLocationClientOption;->j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->t:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->isDownloadCoordinateConvertLibrary()Z

    move-result v1

    sput-boolean v1, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    iget v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:F

    iput v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->v:F

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    iput-object v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->w:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->isOpenAlwaysScanWifi()Z

    move-result v1

    sput-boolean v1, Lcom/amap/api/location/AMapLocationClientOption;->OPEN_ALWAYS_SCAN_WIFI:Z

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->getScanWifiInterval()J

    move-result-wide v1

    sput-wide v1, Lcom/amap/api/location/AMapLocationClientOption;->SCAN_WIFI_INTERVAL:J

    iget-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:J

    iput-wide v1, v0, Lcom/amap/api/location/AMapLocationClientOption;->s:J

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
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

    .line 1
    iget v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:F

    return v0
.end method

.method public getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-object v0
.end method

.method public getGpsFirstTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:J

    return-wide v0
.end method

.method public getHttpTimeOut()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    return-wide v0
.end method

.method public getLastLocationLifeCycle()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    return-wide v0
.end method

.method public getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-object v0
.end method

.method public getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption;->j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    return-object v0
.end method

.method public getLocationPurpose()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    return-object v0
.end method

.method public getScanWifiInterval()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/amap/api/location/AMapLocationClientOption;->SCAN_WIFI_INTERVAL:J

    return-wide v0
.end method

.method public isGpsFirst()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    return v0
.end method

.method public isKillProcess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    return v0
.end method

.method public isLocationCacheEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    return v0
.end method

.method public isMockEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    return v0
.end method

.method public isNeedAddress()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    return v0
.end method

.method public isOffset()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    return v0
.end method

.method public isOnceLocation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    return v0
.end method

.method public isOnceLocationLatest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    return v0
.end method

.method public isSensorEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    return v0
.end method

.method public isWifiActiveScan()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    return v0
.end method

.method public isWifiScan()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    return v0
.end method

.method public setDeviceModeDistanceFilter(F)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:F

    return-object p0
.end method

.method public setGeoLanguage(Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-object p0
.end method

.method public setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    return-object p0
.end method

.method public setGpsFirstTimeout(J)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 3

    const-wide/16 v0, 0x1388

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const-wide/16 v0, 0x7530

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    .line 1
    :cond_1
    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:J

    return-object p0
.end method

.method public setHttpTimeOut(J)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    return-object p0
.end method

.method public setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 3

    const-wide/16 v0, 0x320

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    .line 1
    :cond_0
    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    return-object p0
.end method

.method public setKillProcess(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    return-object p0
.end method

.method public setLastLocationLifeCycle(J)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    return-object p0
.end method

.method public setLocationCacheEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    return-object p0
.end method

.method public setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-object p0
.end method

.method public setLocationPurpose(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    if-eqz p1, :cond_2

    .line 2
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    .line 6
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    .line 8
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    .line 10
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    .line 11
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    .line 12
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    .line 13
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    .line 14
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setMockEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    return-object p0
.end method

.method public setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    return-object p0
.end method

.method public setOffset(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    return-object p0
.end method

.method public setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    return-object p0
.end method

.method public setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    return-object p0
.end method

.method public setSensorEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    return-object p0
.end method

.method public setWifiActiveScan(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    return-object p0
.end method

.method public setWifiScan(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interval:"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isOnceLocation:"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "locationMode:"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "locationProtocol:"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption;->j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isMockEnable:"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isKillProcess:"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isGpsFirst:"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isNeedAddress:"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isWifiActiveScan:"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "wifiScan:"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "httpTimeOut:"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isLocationCacheEnable:"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isOnceLocationLatest:"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sensorEnable:"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "geoLanguage:"

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "locationPurpose:"

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget-object p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    const/4 v0, -0x1

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->k:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->l:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 11
    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->m:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->n:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 13
    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->o:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->p:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 15
    iget-boolean p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->q:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 16
    iget-wide v1, p0, Lcom/amap/api/location/AMapLocationClientOption;->r:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    sget-object p2, Lcom/amap/api/location/AMapLocationClientOption;->j:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    if-nez p2, :cond_1

    const/4 p2, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget-object p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->t:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    if-nez p2, :cond_2

    const/4 p2, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    sget-boolean p2, Lcom/amap/api/location/AMapLocationClientOption;->u:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 20
    iget p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->v:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 21
    iget-object p2, p0, Lcom/amap/api/location/AMapLocationClientOption;->w:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    sget-boolean p2, Lcom/amap/api/location/AMapLocationClientOption;->OPEN_ALWAYS_SCAN_WIFI:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->s:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
