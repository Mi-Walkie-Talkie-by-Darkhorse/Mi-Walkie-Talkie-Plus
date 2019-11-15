.class public Lcom/xiaomi/mipush/sdk/e;
.super Lcom/xiaomi/channel/commonutils/misc/g$a;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/g$a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mipush/sdk/e;->a:I

    const/16 v0, 0xe10

    iput v0, p0, Lcom/xiaomi/mipush/sdk/e;->b:I

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/e;->c:Landroid/content/Context;

    iput p2, p0, Lcom/xiaomi/mipush/sdk/e;->d:I

    return-void
.end method

.method private static a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 4

    if-nez p0, :cond_1

    move-object p0, p1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    move-object p0, p1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 5

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->b(Landroid/content/Context;)Lcom/xiaomi/xmpush/thrift/n;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;)[B

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/af;

    const-string v2, "-1"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/af;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/xiaomi/xmpush/thrift/p;->C:Lcom/xiaomi/xmpush/thrift/p;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/p;->T:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/af;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/af;->a([B)Lcom/xiaomi/xmpush/thrift/af;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/af;->a(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/af;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/af;->i()Ljava/util/Map;

    move-result-object v0

    const-string v2, "initial_wifi_upload"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/xiaomi/push/service/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/af;->i()Ljava/util/Map;

    move-result-object v2

    const-string v3, "xmsf_geo_is_work"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/z;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/z;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/s;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->g(Landroid/content/Context;)V

    return-void
.end method

.method private a(J)Z
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/e;->c:Landroid/content/Context;

    const-string v2, "mipush_extra"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_upload_lbs_data_timestamp"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-float v1, v2

    long-to-float v2, p1

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Lcom/xiaomi/xmpush/thrift/n;
    .locals 2

    new-instance v0, Lcom/xiaomi/xmpush/thrift/n;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/n;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/n;->a(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/n;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/n;->b(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/n;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->e(Landroid/content/Context;)Lcom/xiaomi/xmpush/thrift/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/n;->a(Lcom/xiaomi/xmpush/thrift/j;)Lcom/xiaomi/xmpush/thrift/n;

    return-object v0
.end method

.method private b()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/network/d;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/aj;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/f;->P:Lcom/xiaomi/xmpush/thrift/f;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/f;->a()I

    move-result v2

    const/16 v3, 0xe10

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/aj;->a(II)I

    move-result v1

    const/16 v2, 0x3c

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/e;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/d;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/mipush/sdk/e;->a(J)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/w;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Lcom/xiaomi/mipush/sdk/f;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/f;-><init>()V

    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/misc/b;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    const/16 v0, 0x1e

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v4, v0, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_0

    new-instance v6, Lcom/xiaomi/xmpush/thrift/w;

    invoke-direct {v6}, Lcom/xiaomi/xmpush/thrift/w;-><init>()V

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    :goto_1
    invoke-virtual {v6, v3}, Lcom/xiaomi/xmpush/thrift/w;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/w;

    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v6, v3}, Lcom/xiaomi/xmpush/thrift/w;->a(I)Lcom/xiaomi/xmpush/thrift/w;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/xiaomi/xmpush/thrift/w;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/w;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method private static d(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/c;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v5

    if-gtz v5, :cond_0

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v5

    if-lez v5, :cond_1

    :cond_0
    new-instance v5, Lcom/xiaomi/xmpush/thrift/c;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/c;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/xmpush/thrift/c;->a(I)Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x71

    invoke-virtual {v5, v0}, Lcom/xiaomi/xmpush/thrift/c;->b(I)Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method private static e(Landroid/content/Context;)Lcom/xiaomi/xmpush/thrift/j;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->f(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/xiaomi/xmpush/thrift/m;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/m;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/xmpush/thrift/m;->b(D)Lcom/xiaomi/xmpush/thrift/m;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/xmpush/thrift/m;->a(D)Lcom/xiaomi/xmpush/thrift/m;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/j;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/xmpush/thrift/j;->a(D)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/j;->a(Lcom/xiaomi/xmpush/thrift/m;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/j;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/j;->a(J)Lcom/xiaomi/xmpush/thrift/j;

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;)Landroid/location/Location;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    :try_start_0
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    :goto_0
    :try_start_1
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    :try_start_2
    const-string v4, "passive"

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_2
    invoke-static {v3, v2}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    move-object v3, v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v2, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private static g(Landroid/content/Context;)V
    .locals 6

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_upload_lbs_data_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/aj;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/f;->ac:Lcom/xiaomi/xmpush/thrift/f;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/f;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/aj;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/network/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/e;->c:Landroid/content/Context;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/mipush/sdk/e;->d:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/channel/commonutils/misc/e;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/e;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method
