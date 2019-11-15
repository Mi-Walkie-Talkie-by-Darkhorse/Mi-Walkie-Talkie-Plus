.class public final Lcom/amap/api/col/sl/g;
.super Ljava/lang/Object;
.source "GPSLocation.java"


# static fields
.field static j:Lcom/amap/api/location/AMapLocation;

.field static k:J

.field static l:Ljava/lang/Object;

.field static p:J

.field public static s:Z

.field public static t:Z


# instance fields
.field private A:Landroid/content/Context;

.field private B:J

.field private C:I

.field private D:Landroid/location/GpsStatus$Listener;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:I

.field a:Landroid/os/Handler;

.field b:Landroid/location/LocationManager;

.field c:Lcom/amap/api/location/AMapLocationClientOption;

.field d:J

.field e:Z

.field f:Lcom/amap/api/col/sl/eu;

.field g:I

.field h:I

.field i:Lcom/amap/api/location/AMapLocation;

.field m:J

.field n:F

.field o:Ljava/lang/Object;

.field q:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field r:Z

.field u:J

.field v:I

.field w:Landroid/location/LocationListener;

.field x:I

.field y:Landroid/location/GpsStatus;

.field public z:Lcom/amap/api/location/AMapLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/col/sl/g;->j:Lcom/amap/api/location/AMapLocation;

    sput-wide v2, Lcom/amap/api/col/sl/g;->k:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amap/api/col/sl/g;->l:Ljava/lang/Object;

    sput-wide v2, Lcom/amap/api/col/sl/g;->p:J

    sput-boolean v1, Lcom/amap/api/col/sl/g;->s:Z

    sput-boolean v1, Lcom/amap/api/col/sl/g;->t:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/amap/api/col/sl/g;->B:J

    iput-wide v4, p0, Lcom/amap/api/col/sl/g;->d:J

    iput-boolean v1, p0, Lcom/amap/api/col/sl/g;->e:Z

    iput v1, p0, Lcom/amap/api/col/sl/g;->C:I

    iput-object v2, p0, Lcom/amap/api/col/sl/g;->f:Lcom/amap/api/col/sl/eu;

    const/16 v0, 0xf0

    iput v0, p0, Lcom/amap/api/col/sl/g;->g:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/amap/api/col/sl/g;->h:I

    iput-object v2, p0, Lcom/amap/api/col/sl/g;->i:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/amap/api/col/sl/g;->m:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/sl/g;->n:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/g;->o:Ljava/lang/Object;

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v0, p0, Lcom/amap/api/col/sl/g;->q:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/g;->r:Z

    iput-wide v4, p0, Lcom/amap/api/col/sl/g;->u:J

    iput v1, p0, Lcom/amap/api/col/sl/g;->v:I

    new-instance v0, Lcom/amap/api/col/sl/g$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/g$1;-><init>(Lcom/amap/api/col/sl/g;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/g;->w:Landroid/location/LocationListener;

    iput v1, p0, Lcom/amap/api/col/sl/g;->x:I

    iput-object v2, p0, Lcom/amap/api/col/sl/g;->y:Landroid/location/GpsStatus;

    new-instance v0, Lcom/amap/api/col/sl/g$2;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/g$2;-><init>(Lcom/amap/api/col/sl/g;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/g;->D:Landroid/location/GpsStatus$Listener;

    iput-object v2, p0, Lcom/amap/api/col/sl/g;->z:Lcom/amap/api/location/AMapLocation;

    iput-object v2, p0, Lcom/amap/api/col/sl/g;->E:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/amap/api/col/sl/g;->F:Z

    iput v1, p0, Lcom/amap/api/col/sl/g;->G:I

    iput-object p1, p0, Lcom/amap/api/col/sl/g;->A:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/g;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->A:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/api/col/sl/g;->b:Landroid/location/LocationManager;

    new-instance v0, Lcom/amap/api/col/sl/eu;

    invoke-direct {v0}, Lcom/amap/api/col/sl/eu;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/g;->f:Lcom/amap/api/col/sl/eu;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->A:Landroid/content/Context;

    return-object v0
.end method

.method private a(IILjava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    invoke-virtual {v1, p3}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/col/sl/g;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/g;Lcom/amap/api/location/AMapLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/g;->b(Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/g;Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v0

    iget v1, p0, Lcom/amap/api/col/sl/g;->g:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-static {p1, p2}, Lcom/amap/api/col/sl/fq;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    :cond_0
    return-void
.end method

.method private static a(Landroid/location/LocationManager;)Z
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/amap/api/col/sl/g;->s:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amap/api/col/sl/g;->t:Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/amap/api/col/sl/g;->t:Z

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/col/sl/g;->s:Z

    sget-boolean v0, Lcom/amap/api/col/sl/g;->t:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/amap/api/col/sl/g;->t:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const/16 v3, 0x8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/col/sl/fy;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/sl/g;->E:Ljava/lang/String;

    invoke-static {v2}, Lcom/amap/api/col/sl/fy;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/g;->E:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/amap/api/col/sl/fy;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/sl/g;->B:J

    return-wide v0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/g;Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->A:Landroid/content/Context;

    new-instance v1, Lcom/amap/api/location/DPoint;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fr;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v1, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getDeviceModeDistanceFilter()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/g;->c(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/sl/g;->u:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/sl/g;->u:J

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/g;->c(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/amap/api/col/sl/g;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/g;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/col/sl/g;Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/sl/g;->x:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/amap/api/col/sl/g;->x:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private c(Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/col/sl/g;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/amap/api/col/sl/g;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 4

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget v0, p0, Lcom/amap/api/col/sl/g;->C:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p1, v2}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p1, v2}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->f:Lcom/amap/api/col/sl/eu;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/sl/eu;->a(Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic d(Lcom/amap/api/col/sl/g;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/g;->F:Z

    return v0
.end method

.method static synthetic e(Lcom/amap/api/col/sl/g;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/sl/g;->G:I

    return v0
.end method

.method static synthetic e(Lcom/amap/api/col/sl/g;Lcom/amap/api/location/AMapLocation;)V
    .locals 4

    invoke-static {p1}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/sl/g;->d:J

    sget-object v1, Lcom/amap/api/col/sl/g;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v2

    sput-wide v2, Lcom/amap/api/col/sl/g;->k:J

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/sl/g;->j:Lcom/amap/api/location/AMapLocation;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/amap/api/col/sl/g;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/sl/g;->C:I

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic f(Lcom/amap/api/col/sl/g;Lcom/amap/api/location/AMapLocation;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/amap/api/col/sl/fq;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->A:Landroid/content/Context;

    const-string v1, "pref"

    const-string v2, "colde"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/sl/fx;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/col/sl/fq;->l:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->A:Landroid/content/Context;

    const-string v1, "pref"

    const-string v2, "colde"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/sl/fx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/high16 v10, 0x40a00000    # 5.0f

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-wide/16 v0, 0x7530

    iget-object v2, p0, Lcom/amap/api/col/sl/g;->i:Lcom/amap/api/location/AMapLocation;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/sl/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->isMock()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/sl/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v2

    iget-wide v4, p0, Lcom/amap/api/col/sl/g;->m:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    iget-wide v4, p0, Lcom/amap/api/col/sl/g;->m:J

    const-wide/16 v6, 0x8

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    cmpl-float v3, v2, v9

    if-nez v3, :cond_3

    iget v2, p0, Lcom/amap/api/col/sl/g;->n:F

    iget-wide v4, p0, Lcom/amap/api/col/sl/g;->m:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iget v0, p0, Lcom/amap/api/col/sl/g;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/sl/g;->G:I

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->E:Ljava/lang/String;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/amap/api/col/sl/g;->G:I

    if-lt v0, v11, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/g;->F:Z

    :cond_4
    cmpl-float v0, v2, v10

    if-lez v0, :cond_6

    const-wide/16 v0, 0x2710

    :cond_5
    :goto_1
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/col/sl/g;->d:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_b

    iget-boolean v0, p0, Lcom/amap/api/col/sl/g;->F:Z

    if-eqz v0, :cond_a

    invoke-direct {p0, p2}, Lcom/amap/api/col/sl/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-wide/16 v0, 0x3a98

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-boolean v8, p0, Lcom/amap/api/col/sl/g;->F:Z

    iput v8, p0, Lcom/amap/api/col/sl/g;->G:I

    :cond_8
    cmpl-float v0, v2, v10

    if-lez v0, :cond_9

    const-wide/16 v0, 0x4e20

    goto :goto_1

    :cond_9
    const-wide/16 v0, 0x7530

    goto :goto_1

    :cond_a
    iput-object v12, p0, Lcom/amap/api/col/sl/g;->E:Ljava/lang/String;

    iput v8, p0, Lcom/amap/api/col/sl/g;->G:I

    iput-object v12, p0, Lcom/amap/api/col/sl/g;->i:Lcom/amap/api/location/AMapLocation;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/sl/g;->m:J

    iput v9, p0, Lcom/amap/api/col/sl/g;->n:F

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->E:Ljava/lang/String;

    if-nez v0, :cond_c

    iget v0, p0, Lcom/amap/api/col/sl/g;->G:I

    if-lt v0, v11, :cond_c

    iput-object p2, p0, Lcom/amap/api/col/sl/g;->E:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->w:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/col/sl/g;->w:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->D:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/col/sl/g;->D:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_3
    iput v4, p0, Lcom/amap/api/col/sl/g;->x:I

    iput-wide v2, p0, Lcom/amap/api/col/sl/g;->B:J

    iput-wide v2, p0, Lcom/amap/api/col/sl/g;->u:J

    iput-wide v2, p0, Lcom/amap/api/col/sl/g;->d:J

    iput v4, p0, Lcom/amap/api/col/sl/g;->C:I

    iput v4, p0, Lcom/amap/api/col/sl/g;->v:I

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->f:Lcom/amap/api/col/sl/eu;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/eu;->a()V

    iput-object v5, p0, Lcom/amap/api/col/sl/g;->i:Lcom/amap/api/location/AMapLocation;

    iput-wide v2, p0, Lcom/amap/api/col/sl/g;->m:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/sl/g;->n:F

    iput-object v5, p0, Lcom/amap/api/col/sl/g;->E:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    const-class v0, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "lMaxGeoDis"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/sl/g;->g:I

    const-string v0, "lMinGeoDis"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/sl/g;->h:I

    const-string v0, "loc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/g;->o:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lcom/amap/api/col/sl/g;->z:Lcom/amap/api/location/AMapLocation;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "GPSLocation"

    const-string v2, "setLastGeoLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    const-wide/16 v4, 0x1f40

    invoke-static {p1}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/amap/api/col/sl/g;->u:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "lat"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "lon"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/col/sl/g;->o:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->z:Lcom/amap/api/location/AMapLocation;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->z:Lcom/amap/api/location/AMapLocation;

    invoke-static {p1, v0}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v0

    iget v3, p0, Lcom/amap/api/col/sl/g;->h:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->A:Landroid/content/Context;

    const-string v1, "pref"

    const-string v2, "lagt"

    sget-wide v4, Lcom/amap/api/col/sl/g;->p:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/amap/api/col/sl/fx;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/sl/g;->p:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/sl/g;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    sget-object v0, Lcom/amap/api/col/sl/g;->j:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amap/api/col/sl/g;->j:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->isMock()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/sl/g;->d:J

    sget-object v0, Lcom/amap/api/col/sl/g;->j:Lcom/amap/api/location/AMapLocation;

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/g;->b(Lcom/amap/api/location/AMapLocation;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/g;->r:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    :cond_3
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/sl/g;->B:J

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->b:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/amap/api/col/sl/g;->a(Landroid/location/LocationManager;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    :try_start_2
    invoke-static {}, Lcom/amap/api/col/sl/fy;->a()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/sl/g;->p:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "force_xtra_injection"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    invoke-static {}, Lcom/amap/api/col/sl/fy;->a()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/sl/g;->p:J

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->A:Landroid/content/Context;

    const-string v1, "pref"

    const-string v2, "lagt"

    sget-wide v4, Lcom/amap/api/col/sl/g;->p:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/amap/api/col/sl/fx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getDeviceModeDistanceFilter()F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v2, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    iget-object v4, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getDeviceModeDistanceFilter()F

    move-result v4

    iget-object v5, p0, Lcom/amap/api/col/sl/g;->w:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/col/sl/g;->D:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    const/16 v1, 0x8

    const/16 v2, 0xe

    const-string v3, "no enough satellites#1401"

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/sl/g;->a(IILjava/lang/String;J)V

    :goto_3
    return-void

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x384

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amap/api/col/sl/g;->w:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/sl/g;->r:Z

    const/16 v1, 0x849

    invoke-static {v8, v1}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/16 v2, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#1201"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-wide v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/sl/g;->a(IILjava/lang/String;J)V

    goto :goto_3

    :cond_6
    const/16 v1, 0x8

    const/16 v2, 0xe

    :try_start_4
    const-string v3, "no gps provider#1402"

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/sl/g;->a(IILjava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "GPSLocation"

    const-string v2, "requestLocationUpdates part2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method public final b(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->q:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iget-object v1, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/sl/g;->o:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/col/sl/g;->z:Lcom/amap/api/location/AMapLocation;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/g;->q:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Z
    .locals 4

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/sl/g;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xaf0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/sl/g;->v:I

    return-void
.end method

.method public final d()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/amap/api/col/sl/g;->b:Landroid/location/LocationManager;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/amap/api/col/sl/g;->b:Landroid/location/LocationManager;

    invoke-static {v3}, Lcom/amap/api/col/sl/g;->a(Landroid/location/LocationManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/g;->b:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/sl/g;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "location_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/amap/api/col/sl/g;->r:Z

    if-nez v0, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/sl/g;->x:I

    return v0
.end method
