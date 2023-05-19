.class public final Lcom/amap/api/col/l3/jm;
.super Ljava/lang/Object;
.source "CoManager.java"


# instance fields
.field a:Z

.field b:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jm;->a:Z

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jm;->b:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/amap/api/col/l3/jm;->e:I

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jm;->f:Z

    .line 7
    iput-object p1, p0, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sv"

    const-string v2, "4.7.2"

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "als"

    const-string v2, "S128DF1572465B890OE3F7A13167KLEI"

    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pn"

    .line 61
    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ak"

    .line 62
    invoke-static {p0}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ud"

    .line 63
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "au"

    .line 64
    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/amap/api/col/l3/jl;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 41
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jl;->c()Lcom/amap/api/col/l3/jk;

    move-result-object v2

    .line 43
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jl;->d()Lcom/amap/api/col/l3/jk;

    move-result-object p0

    if-eqz v2, :cond_0

    const-string v3, "mainCgi"

    .line 44
    invoke-virtual {v2}, Lcom/amap/api/col/l3/jk;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p0, :cond_1

    const-string v2, "mainCgi2"

    .line 45
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jk;->a()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "APSCoManager"

    const-string v2, "buildCgiJsonStr"

    .line 47
    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private a(Lcom/amap/api/col/l3/jl;Ljava/util/List;Lcom/amap/api/col/l3/jh;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3/jl;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Lcom/amap/api/col/l3/jh;",
            "I)V"
        }
    .end annotation

    .line 28
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/jm;->e()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-static {p3}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 30
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/jm;->f()V

    .line 31
    iget-object v2, p0, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 32
    invoke-static {p1}, Lcom/amap/api/col/l3/jm;->a(Lcom/amap/api/col/l3/jl;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {p2}, Lcom/amap/api/col/l3/jm;->a(Ljava/util/List;)[Landroid/net/wifi/ScanResult;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p4, v1, :cond_2

    new-array p3, v3, [Ljava/lang/Class;

    aput-object v0, p3, v2

    .line 34
    const-class v0, [Landroid/net/wifi/ScanResult;

    aput-object v0, p3, v1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    .line 35
    iget-object p1, p0, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    const-string p2, "trainingFps"

    invoke-static {p1, p2, p3, v0}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-ne p4, v3, :cond_3

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v2

    .line 36
    const-class v0, [Landroid/net/wifi/ScanResult;

    aput-object v0, v5, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v3

    const/4 v6, 0x3

    aput-object v0, v5, v6

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    .line 37
    invoke-virtual {p3}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p3}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v6

    .line 38
    iget-object p1, p0, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    const-string p2, "correctOfflineLocation"

    invoke-static {p1, p2, v5, v0}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :goto_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jm;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "action-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne v1, p4, :cond_4

    const-string p3, "training"

    goto :goto_1

    :cond_4
    const-string p3, "correct"

    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "APSCoManager"

    invoke-static {p1, p3, p2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 53
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->e(Ljava/lang/String;)V

    .line 57
    invoke-static {p0, p2}, Lcom/amap/api/col/l3/ki;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    :try_start_0
    const-string v0, "com.amap.opensdk.co.CoManager"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static a(Ljava/util/List;)[Landroid/net/wifi/ScanResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)[",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 48
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 49
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/wifi/ScanResult;

    const/4 v1, 0x0

    .line 50
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 51
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    const-string v0, "APSCoManager"

    const-string v1, "buildScanResults"

    .line 52
    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private e()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/api/col/l3/jy;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jm;->d()V

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3/jy;->y()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lcom/amap/api/col/l3/jm;->b:Z

    if-eqz v0, :cond_2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-string v2, "destroyOfflineLoc"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "APSCoManager"

    const-string v3, "destroyOffline"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jm;->b:Z

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private f()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "ok4"

    const-string v2, "ok7"

    const-string v3, "ok5"

    const-string v4, "APSCoManager"

    const-string v5, "pref"

    .line 1
    invoke-static {}, Lcom/amap/api/col/l3/ki;->a()V

    .line 2
    :try_start_0
    iget-object v6, v1, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_9

    .line 3
    iget-object v6, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    invoke-static {v6, v5, v3, v8}, Lcom/amap/api/col/l3/kh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 4
    iget-object v9, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    const-wide/16 v10, 0x0

    invoke-static {v9, v5, v2, v10, v11}, Lcom/amap/api/col/l3/kh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v12

    if-eqz v6, :cond_0

    cmp-long v9, v12, v10

    if-eqz v9, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v12

    const-wide/32 v12, 0xf731400

    cmp-long v9, v14, v12

    if-gez v9, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v9, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    add-int/2addr v6, v7

    invoke-static {v9, v5, v3, v6}, Lcom/amap/api/col/l3/kh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    iget-object v6, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v6, v5, v2, v12, v13}, Lcom/amap/api/col/l3/kh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 8
    invoke-static {}, Lcom/amap/api/col/l3/jm;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    invoke-static {}, Lcom/amap/api/col/l3/ki;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    const-string v0, "com.amap.opensdk.co.CoManager"

    new-array v6, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v6, v8

    new-array v9, v7, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    aput-object v12, v9, v8

    invoke-static {v0, v6, v9}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/jm;->g()V

    iget-object v0, v1, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    const-string v6, "loadLocalSo"

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v0, v6, v9}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v6, "initForJar"

    invoke-static {v0, v4, v6}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 10
    :cond_1
    invoke-static {}, Lcom/amap/api/col/l3/ki;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    iget-boolean v6, v1, Lcom/amap/api/col/l3/jm;->f:Z

    if-nez v6, :cond_8

    invoke-static {}, Lcom/amap/api/col/l3/jy;->B()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "co"

    const-string v9, "1.0.0"

    invoke-static {v6, v9}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/l3/gh;

    move-result-object v13

    iget-object v6, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    invoke-static {v6, v13}, Lcom/amap/api/col/l3/kf;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/amap/api/col/l3/jm;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v6, :cond_8

    :try_start_4
    iget-object v6, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    invoke-static {v6, v13}, Lcom/amap/api/col/l3/hl;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "loc_cozip"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v7

    const-string v10, "."

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/amap/api/col/l3/ki;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    iget-object v14, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    invoke-static {v14, v5, v0, v8}, Lcom/amap/api/col/l3/kh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v11, :cond_3

    if-eqz v14, :cond_4

    :cond_3
    iget-object v11, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    invoke-static {v11, v5, v0, v8}, Lcom/amap/api/col/l3/kh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v6, v12, v10}, Lcom/amap/api/col/l3/jm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/gi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, "libs"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "libapssdk.so"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {v6, v12, v10}, Lcom/amap/api/col/l3/jm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v6, :cond_7

    goto/16 :goto_0

    :cond_7
    :goto_1
    :try_start_5
    iget-object v12, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    const-string v14, "com.amap.opensdk.co.CoManager"

    const/4 v15, 0x0

    new-array v6, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v6, v8

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v12, v9, v8

    move-object/from16 v16, v6

    move-object/from16 v17, v9

    invoke-static/range {v12 .. v17}, Lcom/amap/api/col/l3/hl;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/jm;->g()V

    iget-object v6, v1, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    if-eqz v6, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v1, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    const-string v9, "loadSo"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v0, v10, v8

    invoke-static {v6, v9, v10}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    :cond_8
    :goto_2
    :try_start_7
    iput-boolean v7, v1, Lcom/amap/api/col/l3/jm;->f:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_8
    const-string v6, "initForDexQ"

    invoke-static {v0, v4, v6}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_2

    .line 11
    :goto_3
    :try_start_9
    iget-object v0, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    invoke-static {v0, v5, v3, v8}, Lcom/amap/api/col/l3/kh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    iget-object v0, v1, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    const-wide/16 v9, 0x0

    invoke-static {v0, v5, v2, v9, v10}, Lcom/amap/api/col/l3/kh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_4

    :catchall_4
    move-exception v0

    .line 13
    iput-boolean v7, v1, Lcom/amap/api/col/l3/jm;->f:Z

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 14
    :cond_9
    :goto_4
    :try_start_a
    invoke-static {}, Lcom/amap/api/col/l3/jy;->A()I

    move-result v0

    iget v2, v1, Lcom/amap/api/col/l3/jm;->e:I

    if-ne v2, v0, :cond_a

    return-void

    :cond_a
    iput v0, v1, Lcom/amap/api/col/l3/jm;->e:I

    iget-object v2, v1, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    if-eqz v2, :cond_b

    const-string v3, "setCloudConfigVersion"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v2, v3, v5}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_b
    return-void

    :catchall_5
    move-exception v0

    :try_start_b
    const-string v2, "setCloudVersion"

    invoke-static {v0, v4, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    const-string v2, "init"

    .line 15
    invoke-static {v0, v4, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jm;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/amap/api/col/l3/jm;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v2, "init"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 4
    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "APSCoManager"

    const-string v2, "setConfig"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3/jl;Ljava/util/List;Lcom/amap/api/col/l3/jh;)Lcom/amap/api/col/l3/jh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3/jl;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Lcom/amap/api/col/l3/jh;",
            ")",
            "Lcom/amap/api/col/l3/jh;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/jm;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p3

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p3}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    return-object p3

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/jm;->f()V

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jm;->b:Z

    .line 7
    invoke-static {p1}, Lcom/amap/api/col/l3/jm;->a(Lcom/amap/api/col/l3/jl;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p2}, Lcom/amap/api/col/l3/jm;->a(Ljava/util/List;)[Landroid/net/wifi/ScanResult;

    move-result-object p2

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    .line 9
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, [Landroid/net/wifi/ScanResult;

    aput-object v3, v2, v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v0

    .line 10
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v1, v5

    .line 11
    iget-object p1, p0, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    const-string p2, "getOfflineLoc"

    invoke-static {p1, p2, v2, v1}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance p1, Lcom/amap/api/col/l3/jh;

    const-string v0, "lbs"

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/jh;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/jh;->b(Lorg/json/JSONObject;)V

    .line 16
    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 17
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/amap/api/col/l3/jh;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u57fa\u7ad9\u79bb\u7ebf\u5b9a\u4f4d"

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/col/l3/jh;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifioff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "WIFI\u79bb\u7ebf\u5b9a\u4f4d"

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v0, "\u79bb\u7ebf\u5b9a\u4f4d\uff0c"

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/jh;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-eqz p3, :cond_4

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    :cond_4
    invoke-virtual {p1, v5}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 26
    invoke-virtual {p1, p2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    const-string p2, "APSCoManager"

    const-string v0, "getOffLoc"

    .line 27
    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object p3
.end method

.method public final b()V
    .locals 5

    const-string v0, "APSCoManager"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/jy;->x()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jm;->d()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3/jy;->z()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 4
    iget-boolean v1, p0, Lcom/amap/api/col/l3/jm;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v3, "destroyCollect"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v3, "destroyCollection"

    invoke-static {v1, v0, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/amap/api/col/l3/jm;->a:Z

    :cond_2
    return-void

    .line 7
    :cond_3
    iget-boolean v1, p0, Lcom/amap/api/col/l3/jm;->a:Z

    if-eqz v1, :cond_4

    return-void

    .line 8
    :cond_4
    invoke-direct {p0}, Lcom/amap/api/col/l3/jm;->f()V

    .line 9
    iget-object v1, p0, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    if-eqz v1, :cond_5

    const-string v3, "startCollect"

    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, v3, v2}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jm;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    return-void

    :catchall_1
    move-exception v1

    const-string v2, "startCollection"

    .line 12
    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/amap/api/col/l3/jl;Ljava/util/List;Lcom/amap/api/col/l3/jh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3/jl;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Lcom/amap/api/col/l3/jh;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 13
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/col/l3/jm;->a(Lcom/amap/api/col/l3/jl;Ljava/util/List;Lcom/amap/api/col/l3/jh;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "APSCoManager"

    const-string p3, "trainingFps"

    .line 14
    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/jy;->x()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jm;->d()V

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v2, "getCollectVersion"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "APSCoManager"

    const-string v3, "getCollectionVersion"

    .line 5
    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final c(Lcom/amap/api/col/l3/jl;Ljava/util/List;Lcom/amap/api/col/l3/jh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/l3/jl;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Lcom/amap/api/col/l3/jh;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 6
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/col/l3/jm;->a(Lcom/amap/api/col/l3/jl;Ljava/util/List;Lcom/amap/api/col/l3/jh;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "APSCoManager"

    const-string p3, "correctOffLoc"

    .line 7
    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 4

    const-string v0, "destroy"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {v1, v0, v3}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iput-boolean v2, p0, Lcom/amap/api/col/l3/jm;->a:Z

    .line 4
    iput-boolean v2, p0, Lcom/amap/api/col/l3/jm;->b:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/amap/api/col/l3/jm;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    const-string v2, "APSCoManager"

    .line 6
    invoke-static {v1, v2, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
