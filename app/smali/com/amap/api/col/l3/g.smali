.class public final Lcom/amap/api/col/l3/g;
.super Ljava/lang/Object;
.source "GpsLocation.java"


# static fields
.field static j:Lcom/amap/api/location/AMapLocation; = null

.field static k:J = 0x0L

.field static l:Ljava/lang/Object; = null

.field static q:J = 0x0L

.field static t:Z = false

.field static u:Z = false


# instance fields
.field private A:J

.field private B:I

.field private C:I

.field private D:Landroid/location/GpsStatus;

.field private E:Landroid/location/GpsStatus$Listener;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:I

.field private I:Z

.field a:Landroid/os/Handler;

.field b:Landroid/location/LocationManager;

.field c:Lcom/amap/api/location/AMapLocationClientOption;

.field d:J

.field e:Z

.field f:Lcom/amap/api/col/l3/jg;

.field g:I

.field h:I

.field i:Lcom/amap/api/location/AMapLocation;

.field m:J

.field n:F

.field o:Ljava/lang/Object;

.field p:Ljava/lang/Object;

.field r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field s:Z

.field v:J

.field w:I

.field x:Landroid/location/LocationListener;

.field public y:Lcom/amap/api/location/AMapLocation;

.field private z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3/g;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/amap/api/col/l3/g;->A:J

    .line 3
    iput-wide v0, p0, Lcom/amap/api/col/l3/g;->d:J

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/amap/api/col/l3/g;->e:Z

    .line 5
    iput v2, p0, Lcom/amap/api/col/l3/g;->B:I

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lcom/amap/api/col/l3/g;->f:Lcom/amap/api/col/l3/jg;

    const/16 v4, 0xf0

    .line 7
    iput v4, p0, Lcom/amap/api/col/l3/g;->g:I

    const/16 v4, 0x50

    .line 8
    iput v4, p0, Lcom/amap/api/col/l3/g;->h:I

    .line 9
    iput-object v3, p0, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    .line 10
    iput-wide v0, p0, Lcom/amap/api/col/l3/g;->m:J

    const/4 v4, 0x0

    .line 11
    iput v4, p0, Lcom/amap/api/col/l3/g;->n:F

    .line 12
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/amap/api/col/l3/g;->o:Ljava/lang/Object;

    .line 13
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/amap/api/col/l3/g;->p:Ljava/lang/Object;

    .line 14
    sget-object v4, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v4, p0, Lcom/amap/api/col/l3/g;->r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v4, 0x1

    .line 15
    iput-boolean v4, p0, Lcom/amap/api/col/l3/g;->s:Z

    .line 16
    iput-wide v0, p0, Lcom/amap/api/col/l3/g;->v:J

    .line 17
    iput v2, p0, Lcom/amap/api/col/l3/g;->w:I

    .line 18
    new-instance v0, Lcom/amap/api/col/l3/g$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/g$1;-><init>(Lcom/amap/api/col/l3/g;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/g;->x:Landroid/location/LocationListener;

    .line 19
    iput v2, p0, Lcom/amap/api/col/l3/g;->C:I

    .line 20
    iput-object v3, p0, Lcom/amap/api/col/l3/g;->D:Landroid/location/GpsStatus;

    .line 21
    new-instance v0, Lcom/amap/api/col/l3/g$2;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/g$2;-><init>(Lcom/amap/api/col/l3/g;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/g;->E:Landroid/location/GpsStatus$Listener;

    .line 22
    iput-object v3, p0, Lcom/amap/api/col/l3/g;->y:Lcom/amap/api/location/AMapLocation;

    .line 23
    iput-object v3, p0, Lcom/amap/api/col/l3/g;->F:Ljava/lang/String;

    .line 24
    iput-boolean v2, p0, Lcom/amap/api/col/l3/g;->G:Z

    .line 25
    iput v2, p0, Lcom/amap/api/col/l3/g;->H:I

    .line 26
    iput-boolean v2, p0, Lcom/amap/api/col/l3/g;->I:Z

    .line 27
    iput-object p1, p0, Lcom/amap/api/col/l3/g;->z:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/amap/api/col/l3/g;->a:Landroid/os/Handler;

    :try_start_0
    const-string p2, "location"

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/amap/api/col/l3/g;->b:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "GpsLocation"

    const-string v0, "<init>"

    .line 30
    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_0
    new-instance p1, Lcom/amap/api/col/l3/jg;

    invoke-direct {p1}, Lcom/amap/api/col/l3/jg;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/g;->f:Lcom/amap/api/col/l3/jg;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/g;->C:I

    return p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3/g;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/api/col/l3/g;->z:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/g;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/api/col/l3/g;->D:Landroid/location/GpsStatus;

    return-object p1
.end method

.method private a(IILjava/lang/String;J)V
    .locals 3

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    .line 39
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-ne v0, v1, :cond_0

    .line 40
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string v2, "gps"

    .line 42
    invoke-virtual {v1, v2}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, p2}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    .line 44
    invoke-virtual {v1, p3}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 45
    invoke-virtual {v1, p2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    .line 46
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    iput p1, v0, Landroid/os/Message;->what:I

    .line 48
    iget-object p1, p0, Lcom/amap/api/col/l3/g;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/g;Lcom/amap/api/location/AMapLocation;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/g;->c(Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/g;Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v0

    iget p0, p0, Lcom/amap/api/col/l3/g;->g:I

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/jz;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    :cond_0
    return-void
.end method

.method private static a(Landroid/location/LocationManager;)Z
    .locals 1

    .line 29
    :try_start_0
    sget-boolean v0, Lcom/amap/api/col/l3/g;->t:Z

    if-eqz v0, :cond_0

    .line 30
    sget-boolean p0, Lcom/amap/api/col/l3/g;->u:Z

    return p0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 32
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "gps"

    .line 33
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Lcom/amap/api/col/l3/g;->u:Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 34
    sput-boolean p0, Lcom/amap/api/col/l3/g;->u:Z

    :goto_0
    const/4 p0, 0x1

    .line 35
    sput-boolean p0, Lcom/amap/api/col/l3/g;->t:Z

    .line 36
    sget-boolean p0, Lcom/amap/api/col/l3/g;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 37
    :catchall_0
    sget-boolean p0, Lcom/amap/api/col/l3/g;->u:Z

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 109
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/amap/api/col/l3/g;->F:Ljava/lang/String;

    invoke-static {v2}, Lcom/amap/api/col/l3/ki;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 113
    iget-object v1, p0, Lcom/amap/api/col/l3/g;->F:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/ki;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p1

    :catchall_0
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/col/l3/g;->A:J

    return-wide v0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/g;Lcom/amap/api/location/AMapLocation;)V
    .locals 8

    const-string v0, "WGS84"

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/l3/jz;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3/g;->z:Landroid/content/Context;

    new-instance v3, Lcom/amap/api/location/DPoint;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-static {v2, v3}, Lcom/amap/api/col/l3/kb;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v2}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    iget-object p0, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/amap/api/location/AMapLocation;->setOffset(Z)V

    const-string p0, "GCJ02"

    invoke-virtual {p1, p0}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocation;->setOffset(Z)V

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocation;->setOffset(Z)V

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/location/AMapLocation;)V
    .locals 7

    .line 3
    invoke-static {p0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3/jy;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/amap/api/col/l3/jy;->F()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amap/api/col/l3/ka;->a(JJI)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-eqz v6, :cond_0

    invoke-virtual {p0, v4, v5}, Landroid/location/Location;->setTime(J)V

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/l3/kf;->a(JJ)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/amap/api/col/l3/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/col/l3/g;->C:I

    return p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3/g;Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    .line 2
    :try_start_0
    iget v0, p0, Lcom/amap/api/col/l3/g;->C:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V

    return-void

    :cond_0
    iget p0, p0, Lcom/amap/api/col/l3/g;->C:I

    if-nez p0, :cond_1

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V

    return-void

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private c(Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v1, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    .line 6
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getDeviceModeDistanceFilter()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/g;->d(Lcom/amap/api/location/AMapLocation;)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3/g;->v:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 9
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3/g;->v:J

    .line 10
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/g;->d(Lcom/amap/api/location/AMapLocation;)V

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/amap/api/col/l3/g;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget v0, p0, Lcom/amap/api/col/l3/g;->B:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p1, v2}, Landroid/location/Location;->setAccuracy(F)V

    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p1, v2}, Landroid/location/Location;->setSpeed(F)V

    :cond_5
    iget-object p0, p0, Lcom/amap/api/col/l3/g;->f:Lcom/amap/api/col/l3/jg;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/jg;->a(Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/g;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/g;->F:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lcom/amap/api/location/AMapLocation;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 6
    iput p1, v0, Landroid/os/Message;->what:I

    .line 7
    iget-object p1, p0, Lcom/amap/api/col/l3/g;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/amap/api/col/l3/g;Lcom/amap/api/location/AMapLocation;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3/g;->d:J

    sget-object v0, Lcom/amap/api/col/l3/g;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v1

    sput-wide v1, Lcom/amap/api/col/l3/g;->k:J

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    sput-object p1, Lcom/amap/api/col/l3/g;->j:Lcom/amap/api/location/AMapLocation;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p0, Lcom/amap/api/col/l3/g;->B:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amap/api/col/l3/g;->B:I

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/amap/api/col/l3/g;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/col/l3/g;->G:Z

    return v0
.end method

.method static synthetic f(Lcom/amap/api/col/l3/g;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/amap/api/col/l3/g;->H:I

    return v0
.end method

.method static synthetic g(Lcom/amap/api/col/l3/g;)Landroid/location/GpsStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/g;->D:Landroid/location/GpsStatus;

    return-object p0
.end method

.method private static g()Z
    .locals 3

    :try_start_0
    const-string v0, "KY29tLmFtYXAuYXBpLm5hdmkuQU1hcE5hdmk="

    .line 2
    invoke-static {v0}, Lcom/amap/api/col/l3/gi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaXNOYXZpU3RhcnRlZA=="

    invoke-static {v1}, Lcom/amap/api/col/l3/gi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2, v2}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()Lcom/amap/api/location/AMapLocation;
    .locals 15

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-static {v1}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3/jy;->t()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-static {}, Lcom/amap/api/col/l3/g;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "KY29tLmFtYXAuYXBpLm5hdmkuQU1hcE5hdmk="

    .line 4
    invoke-static {v1}, Lcom/amap/api/col/l3/gi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UZ2V0TmF2aUxvY2F0aW9u"

    invoke-static {v2}, Lcom/amap/api/col/l3/gi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v1, v2, v0, v0}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "time"

    .line 7
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 8
    iget-boolean v1, p0, Lcom/amap/api/col/l3/g;->I:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/amap/api/col/l3/g;->I:Z

    const-string v1, "useNaviLoc"

    const-string v5, "use NaviLoc"

    .line 10
    invoke-static {v1, v5}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3/ki;->b()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x157c

    cmp-long v1, v5, v7

    if-gtz v1, :cond_3

    const-string v1, "lat"

    const-wide/16 v5, 0x0

    .line 12
    invoke-virtual {v2, v1, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    const-string v1, "lng"

    .line 13
    invoke-virtual {v2, v1, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    const-string v11, "accuracy"

    const-string v12, "0"

    .line 14
    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    const/4 v11, 0x0

    :goto_0
    :try_start_2
    const-string v12, "altitude"

    .line 15
    invoke-virtual {v2, v12, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v12, "bearing"

    const-string v13, "0"

    .line 16
    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    const/4 v12, 0x0

    :goto_1
    :try_start_4
    const-string v13, "speed"

    const-string v14, "0"

    .line 17
    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x42100000    # 36.0f

    div-float/2addr v1, v2

    .line 18
    :catch_2
    :try_start_5
    new-instance v2, Lcom/amap/api/location/AMapLocation;

    const-string v13, "lbs"

    invoke-direct {v2, v13}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x9

    .line 19
    invoke-virtual {v2, v13}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    .line 20
    invoke-virtual {v2, v7, v8}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 21
    invoke-virtual {v2, v9, v10}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    .line 22
    invoke-virtual {v2, v11}, Landroid/location/Location;->setAccuracy(F)V

    .line 23
    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setAltitude(D)V

    .line 24
    invoke-virtual {v2, v12}, Landroid/location/Location;->setBearing(F)V

    .line 25
    invoke-virtual {v2, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 26
    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setTime(J)V

    const-string v5, "GCJ02"

    .line 27
    invoke-virtual {v2, v5}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V

    .line 28
    iget-object v5, p0, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-static {v2, v5}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v5

    const/high16 v6, 0x43960000    # 300.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    .line 29
    iget-object v5, p0, Lcom/amap/api/col/l3/g;->p:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 30
    :try_start_6
    iget-object v6, p0, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v6, v9, v10}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    .line 31
    iget-object v6, p0, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v6, v7, v8}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 32
    iget-object v6, p0, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v6, v11}, Landroid/location/Location;->setAccuracy(F)V

    .line 33
    iget-object v6, p0, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v6, v12}, Landroid/location/Location;->setBearing(F)V

    .line 34
    iget-object v6, p0, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v6, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 35
    iget-object v1, p0, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setTime(J)V

    .line 36
    iget-object v1, p0, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    const-string v3, "GCJ02"

    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V

    .line 37
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v5

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 75
    iget-object v2, v1, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    if-nez v2, :cond_0

    return-object p1

    .line 76
    :cond_0
    iget-object v2, v1, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    .line 77
    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->isMock()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    .line 78
    :cond_1
    iget-object v2, v1, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-static {v2}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object p1

    .line 79
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/g;->h()Lcom/amap/api/location/AMapLocation;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    .line 80
    invoke-static {v2}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    return-object v2

    .line 82
    :cond_3
    iget-object v2, v1, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmpl-float v7, v2, v6

    if-nez v7, :cond_4

    .line 83
    iget-wide v7, v1, Lcom/amap/api/col/l3/g;->m:J

    cmp-long v9, v7, v4

    if-lez v9, :cond_4

    const-wide/16 v9, 0x8

    cmp-long v11, v7, v9

    if-gez v11, :cond_4

    iget v9, v1, Lcom/amap/api/col/l3/g;->n:F

    cmpl-float v10, v9, v6

    if-lez v10, :cond_4

    long-to-float v2, v7

    div-float v2, v9, v2

    :cond_4
    const/4 v7, 0x0

    const-wide/16 v8, 0x7530

    if-eqz p1, :cond_9

    .line 84
    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v10

    const/high16 v11, 0x43480000    # 200.0f

    const/high16 v12, 0x40a00000    # 5.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    .line 86
    iget v10, v1, Lcom/amap/api/col/l3/g;->H:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v1, Lcom/amap/api/col/l3/g;->H:I

    .line 87
    iget-object v13, v1, Lcom/amap/api/col/l3/g;->F:Ljava/lang/String;

    if-nez v13, :cond_5

    if-lt v10, v3, :cond_5

    .line 88
    iput-boolean v11, v1, Lcom/amap/api/col/l3/g;->G:Z

    :cond_5
    cmpl-float v2, v2, v12

    if-lez v2, :cond_6

    const-wide/16 v10, 0x2710

    goto :goto_0

    :cond_6
    const-wide/16 v10, 0x3a98

    goto :goto_0

    .line 89
    :cond_7
    iget-object v10, v1, Lcom/amap/api/col/l3/g;->F:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 90
    iput-boolean v7, v1, Lcom/amap/api/col/l3/g;->G:Z

    .line 91
    iput v7, v1, Lcom/amap/api/col/l3/g;->H:I

    :cond_8
    cmpl-float v2, v2, v12

    if-lez v2, :cond_9

    const-wide/16 v10, 0x4e20

    goto :goto_0

    :cond_9
    move-wide v10, v8

    .line 92
    :goto_0
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/amap/api/col/l3/g;->d:J

    sub-long/2addr v12, v14

    cmp-long v2, v12, v8

    if-lez v2, :cond_a

    return-object p1

    :cond_a
    cmp-long v2, v12, v10

    if-ltz v2, :cond_c

    .line 93
    iget-boolean v2, v1, Lcom/amap/api/col/l3/g;->G:Z

    if-eqz v2, :cond_b

    .line 94
    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 95
    iget-object v0, v1, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    const/4 v2, 0x3

    .line 96
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    return-object v0

    :cond_b
    const/4 v0, 0x0

    .line 97
    iput-object v0, v1, Lcom/amap/api/col/l3/g;->F:Ljava/lang/String;

    .line 98
    iput v7, v1, Lcom/amap/api/col/l3/g;->H:I

    .line 99
    iget-object v2, v1, Lcom/amap/api/col/l3/g;->p:Ljava/lang/Object;

    monitor-enter v2

    .line 100
    :try_start_0
    iput-object v0, v1, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    .line 101
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iput-wide v4, v1, Lcom/amap/api/col/l3/g;->m:J

    .line 103
    iput v6, v1, Lcom/amap/api/col/l3/g;->n:F

    return-object p1

    :catchall_0
    move-exception v0

    .line 104
    monitor-exit v2

    throw v0

    .line 105
    :cond_c
    iget-object v2, v1, Lcom/amap/api/col/l3/g;->F:Ljava/lang/String;

    if-nez v2, :cond_d

    iget v2, v1, Lcom/amap/api/col/l3/g;->H:I

    if-lt v2, v3, :cond_d

    .line 106
    iput-object v0, v1, Lcom/amap/api/col/l3/g;->F:Ljava/lang/String;

    .line 107
    :cond_d
    iget-object v0, v1, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    return-object v0
.end method

.method public final a()V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/g;->x:Landroid/location/LocationListener;

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/amap/api/col/l3/g;->x:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :catchall_0
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->E:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/col/l3/g;->E:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :catchall_1
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_3
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/amap/api/col/l3/g;->C:I

    const-wide/16 v1, 0x0

    .line 18
    iput-wide v1, p0, Lcom/amap/api/col/l3/g;->A:J

    .line 19
    iput-wide v1, p0, Lcom/amap/api/col/l3/g;->v:J

    .line 20
    iput-wide v1, p0, Lcom/amap/api/col/l3/g;->d:J

    .line 21
    iput v0, p0, Lcom/amap/api/col/l3/g;->B:I

    .line 22
    iput v0, p0, Lcom/amap/api/col/l3/g;->w:I

    .line 23
    iget-object v3, p0, Lcom/amap/api/col/l3/g;->f:Lcom/amap/api/col/l3/jg;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/jg;->a()V

    const/4 v3, 0x0

    .line 24
    iput-object v3, p0, Lcom/amap/api/col/l3/g;->i:Lcom/amap/api/location/AMapLocation;

    .line 25
    iput-wide v1, p0, Lcom/amap/api/col/l3/g;->m:J

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/amap/api/col/l3/g;->n:F

    .line 27
    iput-object v3, p0, Lcom/amap/api/col/l3/g;->F:Ljava/lang/String;

    .line 28
    iput-boolean v0, p0, Lcom/amap/api/col/l3/g;->I:Z

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 66
    :try_start_0
    const-class v0, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "I_MAX_GEO_DIS"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/g;->g:I

    const-string v0, "I_MIN_GEO_DIS"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/g;->h:I

    const-string v0, "loc"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/location/AMapLocation;

    .line 70
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->o:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    :try_start_1
    iput-object p1, p0, Lcom/amap/api/col/l3/g;->y:Lcom/amap/api/location/AMapLocation;

    .line 73
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const-string v0, "GpsLocation"

    const-string v1, "setLastGeoLocation"

    .line 74
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final a(Lcom/amap/api/location/AMapLocation;)V
    .locals 7

    .line 49
    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    .line 52
    iget-object v2, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x1f40

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-wide v2, p0, Lcom/amap/api/col/l3/g;->v:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 53
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v1

    const-string v3, "lat"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 55
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v1

    const-string v3, "lon"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 56
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    .line 58
    iput v0, v1, Landroid/os/Message;->what:I

    .line 59
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3/g;->y:Lcom/amap/api/location/AMapLocation;

    if-nez v2, :cond_2

    .line 61
    iget-object p1, p0, Lcom/amap/api/col/l3/g;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 62
    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/l3/g;->y:Lcom/amap/api/location/AMapLocation;

    invoke-static {p1, v2}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result p1

    .line 63
    iget v2, p0, Lcom/amap/api/col/l3/g;->h:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 64
    iget-object p1, p0, Lcom/amap/api/col/l3/g;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    :cond_3
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_4
    return-void
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 8

    const-string v0, "lagt"

    const-string v1, "pref"

    .line 6
    iput-object p1, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    .line 8
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3/g;->z:Landroid/content/Context;

    sget-wide v2, Lcom/amap/api/col/l3/g;->q:J

    invoke-static {p1, v1, v0, v2, v3}, Lcom/amap/api/col/l3/kh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/amap/api/col/l3/g;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/g;->b:Landroid/location/LocationManager;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_1
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/col/l3/g;->k:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    sget-object v2, Lcom/amap/api/col/l3/g;->j:Lcom/amap/api/location/AMapLocation;

    invoke-static {v2}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/amap/api/col/l3/g;->j:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->isMock()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/col/l3/g;->d:J

    sget-object v2, Lcom/amap/api/col/l3/g;->j:Lcom/amap/api/location/AMapLocation;

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/g;->c(Lcom/amap/api/location/AMapLocation;)V

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/l3/g;->s:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3/g;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    :cond_4
    move-object v7, v2

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/col/l3/g;->A:J

    iget-object v2, p0, Lcom/amap/api/col/l3/g;->b:Landroid/location/LocationManager;

    invoke-static {v2}, Lcom/amap/api/col/l3/g;->a(Landroid/location/LocationManager;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_7

    :try_start_2
    invoke-static {}, Lcom/amap/api/col/l3/ki;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/col/l3/g;->q:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf731400

    cmp-long v6, v2, v4

    if-ltz v6, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/l3/g;->b:Landroid/location/LocationManager;

    const-string v3, "gps"

    const-string v4, "force_xtra_injection"

    invoke-virtual {v2, v3, v4, p1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    invoke-static {}, Lcom/amap/api/col/l3/ki;->b()J

    move-result-wide v2

    sput-wide v2, Lcom/amap/api/col/l3/g;->q:J

    iget-object v4, p0, Lcom/amap/api/col/l3/g;->z:Landroid/content/Context;

    invoke-static {v4, v1, v0, v2, v3}, Lcom/amap/api/col/l3/kh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getDeviceModeDistanceFilter()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/l3/g;->b:Landroid/location/LocationManager;

    const-string v2, "gps"

    iget-object v0, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v3

    iget-object v0, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getDeviceModeDistanceFilter()F

    move-result v5

    iget-object v6, p0, Lcom/amap/api/col/l3/g;->x:Landroid/location/LocationListener;

    :goto_1
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/amap/api/col/l3/g;->b:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v3, 0x384

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amap/api/col/l3/g;->x:Landroid/location/LocationListener;

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/col/l3/g;->E:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    const/16 v3, 0x8

    const/16 v4, 0xe

    const-string v5, "no enough satellites#1401"

    iget-object v0, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/col/l3/g;->a(IILjava/lang/String;J)V

    return-void

    :cond_7
    const/16 v2, 0x8

    const/16 v3, 0xe

    const-string v4, "no gps provider#1402"

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/l3/g;->a(IILjava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    const-string v0, "GpsLocation"

    const-string v1, "requestLocationUpdates part2"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3/g;->s:Z

    const/16 v1, 0x849

    invoke-static {p1, v1}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    const/4 v3, 0x2

    const/16 v4, 0xc

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#1201"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/col/l3/g;->a(IILjava/lang/String;J)V

    return-void
.end method

.method public final b(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object p1

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3/g;->a:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/g;->r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iget-object v0, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/amap/api/col/l3/g;->o:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 10
    :try_start_0
    iput-object v0, p0, Lcom/amap/api/col/l3/g;->y:Lcom/amap/api/location/AMapLocation;

    .line 11
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/g;->r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-void
.end method

.method public final b()Z
    .locals 5

    .line 13
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3/g;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xaf0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/amap/api/col/l3/g;->w:I

    return-void
.end method

.method public final d()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->b:Landroid/location/LocationManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 9
    :cond_0
    invoke-static {v0}, Lcom/amap/api/col/l3/g;->a(Landroid/location/LocationManager;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 10
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v0, v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/g;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    if-ne v0, v3, :cond_4

    const/4 v0, 0x3

    return v0

    .line 13
    :cond_4
    iget-boolean v0, p0, Lcom/amap/api/col/l3/g;->s:Z

    if-nez v0, :cond_5

    const/4 v0, 0x4

    return v0

    :cond_5
    return v2
.end method

.method public final e()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/amap/api/col/l3/g;->C:I

    return v0
.end method

.method public final f()Z
    .locals 5

    .line 2
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3/g;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
