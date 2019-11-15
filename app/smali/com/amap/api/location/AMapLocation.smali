.class public Lcom/amap/api/location/AMapLocation;
.super Landroid/location/Location;
.source "AMapLocation.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/location/AMapLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_CODE_AIRPLANEMODE_WIFIOFF:I = 0x12

.field public static final ERROR_CODE_FAILURE_AUTH:I = 0x7

.field public static final ERROR_CODE_FAILURE_CELL:I = 0xb

.field public static final ERROR_CODE_FAILURE_CONNECTION:I = 0x4

.field public static final ERROR_CODE_FAILURE_INIT:I = 0x9

.field public static final ERROR_CODE_FAILURE_LOCATION:I = 0x6

.field public static final ERROR_CODE_FAILURE_LOCATION_PARAMETER:I = 0x3

.field public static final ERROR_CODE_FAILURE_LOCATION_PERMISSION:I = 0xc

.field public static final ERROR_CODE_FAILURE_NOENOUGHSATELLITES:I = 0xe

.field public static final ERROR_CODE_FAILURE_NOWIFIANDAP:I = 0xd

.field public static final ERROR_CODE_FAILURE_PARSER:I = 0x5

.field public static final ERROR_CODE_FAILURE_SIMULATION_LOCATION:I = 0xf

.field public static final ERROR_CODE_FAILURE_WIFI_INFO:I = 0x2

.field public static final ERROR_CODE_INVALID_PARAMETER:I = 0x1

.field public static final ERROR_CODE_NOCGI_WIFIOFF:I = 0x13

.field public static final ERROR_CODE_SERVICE_FAIL:I = 0xa

.field public static final ERROR_CODE_UNKNOWN:I = 0x8

.field public static final GPS_ACCURACY_BAD:I = 0x0

.field public static final GPS_ACCURACY_GOOD:I = 0x1

.field public static final GPS_ACCURACY_UNKNOWN:I = -0x1

.field public static final LOCATION_SUCCESS:I = 0x0

.field public static final LOCATION_TYPE_AMAP:I = 0x7

.field public static final LOCATION_TYPE_CELL:I = 0x6

.field public static final LOCATION_TYPE_FAST:I = 0x3

.field public static final LOCATION_TYPE_FIX_CACHE:I = 0x4

.field public static final LOCATION_TYPE_GPS:I = 0x1

.field public static final LOCATION_TYPE_LAST_LOCATION_CACHE:I = 0x9

.field public static final LOCATION_TYPE_OFFLINE:I = 0x8

.field public static final LOCATION_TYPE_SAME_REQ:I = 0x2

.field public static final LOCATION_TYPE_WIFI:I = 0x5


# instance fields
.field private A:Z

.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field c:Lcom/amap/api/location/AMapLocationQualityReport;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:D

.field private u:D

.field private v:I

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/location/AMapLocation$1;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocation$1;-><init>()V

    sput-object v0, Lcom/amap/api/location/AMapLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->o:Z

    iput v1, p0, Lcom/amap/api/location/AMapLocation;->p:I

    const-string v0, "success"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->r:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/location/AMapLocation;->s:I

    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->t:D

    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->u:D

    iput v1, p0, Lcom/amap/api/location/AMapLocation;->v:I

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->w:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/location/AMapLocation;->x:I

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocation;->y:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->z:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocation;->A:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    new-instance v0, Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationQualityReport;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->c:Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocation;->t:D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocation;->u:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->o:Z

    iput v1, p0, Lcom/amap/api/location/AMapLocation;->p:I

    const-string v0, "success"

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->r:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/location/AMapLocation;->s:I

    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->t:D

    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->u:D

    iput v1, p0, Lcom/amap/api/location/AMapLocation;->v:I

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->w:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/location/AMapLocation;->x:I

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocation;->y:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->z:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocation;->A:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    new-instance v0, Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationQualityReport;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->c:Lcom/amap/api/location/AMapLocationQualityReport;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/AMapLocation;D)D
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/location/AMapLocation;->t:D

    return-wide p1
.end method

.method static synthetic a(Lcom/amap/api/location/AMapLocation;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/location/AMapLocation;->p:I

    return p1
.end method

.method static synthetic a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/location/AMapLocation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocation;->A:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/location/AMapLocation;D)D
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/location/AMapLocation;->u:D

    return-wide p1
.end method

.method static synthetic b(Lcom/amap/api/location/AMapLocation;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/location/AMapLocation;->s:I

    return p1
.end method

.method static synthetic b(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/amap/api/location/AMapLocation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocation;->o:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/location/AMapLocation;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/location/AMapLocation;->v:I

    return p1
.end method

.method static synthetic c(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/amap/api/location/AMapLocation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocation;->y:Z

    return p1
.end method

.method static synthetic d(Lcom/amap/api/location/AMapLocation;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/location/AMapLocation;->x:I

    return p1
.end method

.method static synthetic d(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic l(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic m(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic n(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic o(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->z:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public clone()Lcom/amap/api/location/AMapLocation;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v1, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v1, p0}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setAdCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setAddress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->w:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setAoiName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setBuildingId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setCityCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setCountry(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setDistrict(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->p:I

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setFloor(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->A:Z

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setFixLastLocation(Z)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->o:Z

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setOffset(Z)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->s:I

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->y:Z

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setMock(Z)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setPoiName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setProvince(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setRoad(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->v:I

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setSatellites(I)V

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->x:I

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setStreet(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->c:Lcom/amap/api/location/AMapLocationQualityReport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->c:Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationQualityReport;->clone()Lcom/amap/api/location/AMapLocationQualityReport;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationQualityReport(Lcom/amap/api/location/AMapLocationQualityReport;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "AMapLocation"

    const-string v3, "clone"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    invoke-super {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    invoke-super {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAoiName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getBearing()F
    .locals 1

    invoke-super {p0}, Landroid/location/Location;->getBearing()F

    move-result v0

    return v0
.end method

.method public getBuildingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->p:I

    return v0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/location/AMapLocation;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/location/AMapLocation;->p:I

    if-eqz v1, :cond_0

    const-string v1, " \u8bf7\u5230http://lbs.amap.com/api/android-location-sdk/guide/utilities/errorcode/\u67e5\u770b\u9519\u8bef\u7801\u8bf4\u660e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",\u9519\u8bef\u8be6\u7ec6\u4fe1\u606f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFloor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsAccuracyStatus()I
    .locals 1

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->x:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocation;->t:D

    return-wide v0
.end method

.method public getLocationDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationQualityReport()Lcom/amap/api/location/AMapLocationQualityReport;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->c:Lcom/amap/api/location/AMapLocationQualityReport;

    return-object v0
.end method

.method public getLocationType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->s:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/AMapLocation;->u:D

    return-wide v0
.end method

.method public getPoiName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getSatellites()I
    .locals 1

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->v:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    invoke-super {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    return-object v0
.end method

.method public isFixLastLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->A:Z

    return v0
.end method

.method public isMock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->y:Z

    return v0
.end method

.method public isOffset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->o:Z

    return v0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    return-void
.end method

.method public setAoiName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->w:Ljava/lang/String;

    return-void
.end method

.method public setBuildingId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->z:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 1

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->p:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/amap/api/col/sl/fy;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->q:Ljava/lang/String;

    iput p1, p0, Lcom/amap/api/location/AMapLocation;->p:I

    goto :goto_0
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->q:Ljava/lang/String;

    return-void
.end method

.method public setFixLastLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocation;->A:Z

    return-void
.end method

.method public setFloor(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "F"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    const/4 p1, 0x0

    const-string v1, "AmapLoc"

    const-string v2, "setFloor"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGpsAccuracyStatus(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/location/AMapLocation;->x:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/location/AMapLocation;->t:D

    return-void
.end method

.method public setLocationDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->r:Ljava/lang/String;

    return-void
.end method

.method public setLocationQualityReport(Lcom/amap/api/location/AMapLocationQualityReport;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->c:Lcom/amap/api/location/AMapLocationQualityReport;

    goto :goto_0
.end method

.method public setLocationType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/location/AMapLocation;->s:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/location/AMapLocation;->u:D

    return-void
.end method

.method public setMock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocation;->y:Z

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    return-void
.end method

.method public setOffset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocation;->o:Z

    return-void
.end method

.method public setPoiName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    return-void
.end method

.method public setRoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->l:Ljava/lang/String;

    return-void
.end method

.method public setSatellites(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/location/AMapLocation;->v:I

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->m:Ljava/lang/String;

    return-void
.end method

.method public toJson(I)Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_1
    const-string v1, "altitude"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "speed"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "bearing"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getBearing()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v1, "citycode"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adcode"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "country"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "province"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "city"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "district"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "road"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "street"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "number"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "poiname"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    iget v2, p0, Lcom/amap/api/location/AMapLocation;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "errorInfo"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "locationType"

    iget v2, p0, Lcom/amap/api/location/AMapLocation;->s:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "locationDetail"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aoiname"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "address"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "poiid"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "floor"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :pswitch_1
    const-string v1, "time"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :pswitch_2
    const-string v1, "provider"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lon"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lat"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "accuracy"

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "isOffset"

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocation;->o:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isFixLastLocation"

    iget-boolean v2, p0, Lcom/amap/api/location/AMapLocation;->A:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    const-string v2, "AmapLoc"

    const-string v3, "toStr"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->toStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStr(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/location/AMapLocation;->toJson(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocation"

    const-string v3, "toStr part2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "latitude="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocation;->t:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "longitude="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocation;->u:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "city="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "district="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cityCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "address="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "country="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "road="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "poiName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "street="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "streetNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aoiName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "poiid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "floor="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/amap/api/location/AMapLocation;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "locationDetail="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "description="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "locationType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/amap/api/location/AMapLocation;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->A:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->o:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Lcom/amap/api/location/AMapLocation;->t:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Lcom/amap/api/location/AMapLocation;->u:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->y:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->v:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/location/AMapLocation;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/location/AMapLocation;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

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
