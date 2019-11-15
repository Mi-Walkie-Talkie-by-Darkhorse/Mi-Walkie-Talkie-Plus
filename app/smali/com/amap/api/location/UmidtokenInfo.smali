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
.field static a:Lcom/amap/api/location/AMapLocationClient;

.field static b:Landroid/os/Handler;

.field static c:Ljava/lang/String;

.field static d:Z

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/amap/api/location/UmidtokenInfo;->a:Lcom/amap/api/location/AMapLocationClient;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/amap/api/location/UmidtokenInfo;->b:Landroid/os/Handler;

    sput-object v1, Lcom/amap/api/location/UmidtokenInfo;->c:Ljava/lang/String;

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/amap/api/location/UmidtokenInfo;->e:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/location/UmidtokenInfo;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUmidtoken()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/location/UmidtokenInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static setLocAble(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/location/UmidtokenInfo;->d:Z

    return-void
.end method

.method public static setUmidtoken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sput-object p1, Lcom/amap/api/location/UmidtokenInfo;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/col/sl/bu;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/amap/api/location/UmidtokenInfo;->a:Lcom/amap/api/location/AMapLocationClient;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/amap/api/location/UmidtokenInfo;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/location/UmidtokenInfo$a;

    invoke-direct {v0}, Lcom/amap/api/location/UmidtokenInfo$a;-><init>()V

    new-instance v1, Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v1, p0}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amap/api/location/UmidtokenInfo;->a:Lcom/amap/api/location/AMapLocationClient;

    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v2, Lcom/amap/api/location/UmidtokenInfo;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v2, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    sget-object v1, Lcom/amap/api/location/UmidtokenInfo;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    sget-object v0, Lcom/amap/api/location/UmidtokenInfo;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    sget-object v0, Lcom/amap/api/location/UmidtokenInfo;->b:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/location/UmidtokenInfo$1;

    invoke-direct {v1}, Lcom/amap/api/location/UmidtokenInfo$1;-><init>()V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "UmidListener"

    const-string v2, "setUmidtoken"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
