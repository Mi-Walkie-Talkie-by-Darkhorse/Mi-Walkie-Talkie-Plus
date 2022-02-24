.class public Lcom/amap/api/location/UmidtokenInfo;
.super Ljava/lang/Object;
.source "UmidtokenInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/UmidtokenInfo$a;
    }
.end annotation


# static fields
.field static a:Landroid/os/Handler;

.field static b:Ljava/lang/String;

.field static c:Z

.field private static d:Lcom/amap/api/location/AMapLocationClient;

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/amap/api/location/UmidtokenInfo;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/amap/api/location/UmidtokenInfo;->b:Ljava/lang/String;

    const-wide/16 v0, 0x7530

    .line 3
    sput-wide v0, Lcom/amap/api/location/UmidtokenInfo;->e:J

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/amap/api/location/UmidtokenInfo;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/amap/api/location/AMapLocationClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/location/UmidtokenInfo;->d:Lcom/amap/api/location/AMapLocationClient;

    return-object v0
.end method

.method public static getUmidtoken()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/location/UmidtokenInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static setLocAble(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/amap/api/location/UmidtokenInfo;->c:Z

    return-void
.end method

.method public static declared-synchronized setUmidtoken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/amap/api/location/UmidtokenInfo;

    monitor-enter v0

    .line 1
    :try_start_0
    sput-object p1, Lcom/amap/api/location/UmidtokenInfo;->b:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/amap/api/col/l3/gb;->a(Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/amap/api/location/UmidtokenInfo;->d:Lcom/amap/api/location/AMapLocationClient;

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/amap/api/location/UmidtokenInfo;->c:Z

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/amap/api/location/UmidtokenInfo$a;

    invoke-direct {p1}, Lcom/amap/api/location/UmidtokenInfo$a;-><init>()V

    .line 5
    new-instance v1, Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v1, p0}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amap/api/location/UmidtokenInfo;->d:Lcom/amap/api/location/AMapLocationClient;

    .line 6
    new-instance p0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 9
    sget-object v1, Lcom/amap/api/location/UmidtokenInfo;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 10
    sget-object p0, Lcom/amap/api/location/UmidtokenInfo;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p0, p1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 11
    sget-object p0, Lcom/amap/api/location/UmidtokenInfo;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 12
    sget-object p0, Lcom/amap/api/location/UmidtokenInfo;->a:Landroid/os/Handler;

    new-instance p1, Lcom/amap/api/location/UmidtokenInfo$1;

    invoke-direct {p1}, Lcom/amap/api/location/UmidtokenInfo$1;-><init>()V

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    const-string p1, "UmidListener"

    const-string v1, "setUmidtoken"

    .line 14
    invoke-static {p0, p1, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
