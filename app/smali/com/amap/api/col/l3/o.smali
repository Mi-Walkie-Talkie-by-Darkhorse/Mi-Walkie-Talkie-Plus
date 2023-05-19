.class public final Lcom/amap/api/col/l3/o;
.super Ljava/lang/Thread;
.source "AuthTask.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/col/l3/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/o;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/amap/api/col/l3/o;->b:Lcom/amap/api/col/l3/u;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const-string v0, "time"

    const-string v1, "maploc"

    const-string v2, "14L"

    const-string v3, "14M"

    const-string v4, "able"

    const-string v5, ";"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getNetWorkEnable()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "002"

    .line 3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "11K"

    .line 5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "001"

    .line 7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    iget-object v6, p0, Lcom/amap/api/col/l3/o;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3/em;->f()Lcom/amap/api/col/l3/gh;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v5, v8}, Lcom/amap/api/col/l3/fx;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/col/l3/fx$a;

    move-result-object v5

    .line 14
    sget v6, Lcom/amap/api/col/l3/fx;->a:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 15
    iget-object v6, p0, Lcom/amap/api/col/l3/o;->b:Lcom/amap/api/col/l3/u;

    invoke-interface {v6}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    const/4 v9, 0x2

    .line 16
    iput v9, v6, Landroid/os/Message;->what:I

    .line 17
    iget-object v9, v5, Lcom/amap/api/col/l3/fx$a;->a:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 18
    iput-object v9, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    :cond_1
    iget-object v9, p0, Lcom/amap/api/col/l3/o;->b:Lcom/amap/api/col/l3/u;

    invoke-interface {v9}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_2
    const/16 v6, 0x3e8

    const/4 v9, 0x0

    .line 20
    :try_start_1
    iget-object v10, v5, Lcom/amap/api/col/l3/fx$a;->x:Lcom/amap/api/col/l3/fx$a$a;

    if-eqz v10, :cond_5

    iget-boolean v11, v10, Lcom/amap/api/col/l3/fx$a$a;->a:Z

    iget-object v12, p0, Lcom/amap/api/col/l3/o;->a:Landroid/content/Context;

    const-string v13, "ue"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v12, v1, v13, v11}, Lcom/amap/api/col/l3/ei;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v10, Lcom/amap/api/col/l3/fx$a$a;->c:Lorg/json/JSONObject;

    const-string v11, "fn"

    invoke-virtual {v10, v11, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "mpn"

    invoke-virtual {v10, v12, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const/16 v13, 0x1f4

    if-le v12, v13, :cond_3

    const/16 v12, 0x1f4

    :cond_3
    const/16 v13, 0x1e

    if-ge v12, v13, :cond_4

    const/16 v12, 0x1e

    :cond_4
    const-string v13, "igu"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v11, v10}, Lcom/amap/api/col/l3/ik;->a(IZ)V

    iget-object v10, p0, Lcom/amap/api/col/l3/o;->a:Landroid/content/Context;

    const-string v11, "opn"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v1, v11, v12}, Lcom/amap/api/col/l3/ei;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v10, "AuthUtil"

    const-string v11, "loadConfigData_uploadException"

    invoke-static {v1, v10, v11}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 21
    :cond_5
    :goto_0
    :try_start_3
    iget-object v1, v5, Lcom/amap/api/col/l3/fx$a;->w:Lorg/json/JSONObject;

    if-eqz v1, :cond_7

    .line 22
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 24
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {v3, v7}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x278d00

    .line 26
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 27
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3c

    .line 28
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 29
    :cond_6
    invoke-static {}, Lcom/amap/api/col/l3/ee;->a()Lcom/amap/api/col/l3/ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ee;->b()J

    move-result-wide v0

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v0, v3

    cmp-long v3, v10, v0

    if-lez v3, :cond_7

    .line 31
    iget-object v0, p0, Lcom/amap/api/col/l3/o;->b:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 32
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    :cond_7
    :goto_1
    iget-object v0, v5, Lcom/amap/api/col/l3/fx$a;->w:Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_9

    .line 34
    :try_start_5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 35
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 36
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0, v9}, Lcom/amap/api/col/l3/fx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/amap/api/col/l3/o;->b:Lcom/amap/api/col/l3/u;

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    :goto_2
    invoke-interface {v1, v7}, Lcom/amap/api/col/l3/u;->g(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 39
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_3
    if-eqz v5, :cond_d

    .line 40
    iget-object v0, v5, Lcom/amap/api/col/l3/fx$a;->y:Lcom/amap/api/col/l3/fx$a$d;

    if-eqz v0, :cond_d

    if-eqz v0, :cond_c

    .line 41
    iget-object v1, v0, Lcom/amap/api/col/l3/fx$a$d;->b:Ljava/lang/String;

    .line 42
    iget-object v2, v0, Lcom/amap/api/col/l3/fx$a$d;->a:Ljava/lang/String;

    .line 43
    iget-object v0, v0, Lcom/amap/api/col/l3/fx$a$d;->c:Ljava/lang/String;

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    .line 45
    :cond_a
    new-instance v0, Lcom/amap/api/col/l3/hg;

    invoke-virtual {v5}, Lcom/amap/api/col/l3/fx$a;->a()Z

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/amap/api/col/l3/hg;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    new-instance v1, Lcom/amap/api/col/l3/hf;

    iget-object v2, p0, Lcom/amap/api/col/l3/o;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3/em;->f()Lcom/amap/api/col/l3/gh;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/amap/api/col/l3/hf;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/hg;Lcom/amap/api/col/l3/gh;)V

    .line 47
    invoke-virtual {v1}, Lcom/amap/api/col/l3/hf;->a()V

    goto :goto_5

    .line 48
    :cond_b
    :goto_4
    new-instance v0, Lcom/amap/api/col/l3/hf;

    iget-object v1, p0, Lcom/amap/api/col/l3/o;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3/em;->f()Lcom/amap/api/col/l3/gh;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/amap/api/col/l3/hf;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/hg;Lcom/amap/api/col/l3/gh;)V

    .line 49
    invoke-virtual {v0}, Lcom/amap/api/col/l3/hf;->a()V

    goto :goto_5

    .line 50
    :cond_c
    new-instance v0, Lcom/amap/api/col/l3/hf;

    iget-object v1, p0, Lcom/amap/api/col/l3/o;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3/em;->f()Lcom/amap/api/col/l3/gh;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/amap/api/col/l3/hf;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/hg;Lcom/amap/api/col/l3/gh;)V

    .line 51
    invoke-virtual {v0}, Lcom/amap/api/col/l3/hf;->a()V

    .line 52
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/amap/api/col/l3/o;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3/em;->f()Lcom/amap/api/col/l3/gh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/gv;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)Lcom/amap/api/col/l3/gv;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 54
    iget-object v0, p0, Lcom/amap/api/col/l3/o;->b:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, v9}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-void

    :catchall_3
    move-exception v0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "mVerfy"

    .line 56
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
