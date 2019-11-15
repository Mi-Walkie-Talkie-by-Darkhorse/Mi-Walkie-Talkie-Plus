.class public Lcom/amap/api/mapcore/util/f;
.super Ljava/lang/Thread;
.source "AuthTask.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore/util/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/f;->b:Lcom/amap/api/mapcore/util/l;

    return-void
.end method

.method private a(Lcom/amap/api/mapcore/util/fp$a;)V
    .locals 7

    const/16 v1, 0x1f4

    const/16 v0, 0x1e

    :try_start_0
    iget-object v2, p1, Lcom/amap/api/mapcore/util/fp$a;->x:Lcom/amap/api/mapcore/util/fp$a$a;

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/amap/api/mapcore/util/fp$a$a;->a:Z

    iget-object v4, p0, Lcom/amap/api/mapcore/util/f;->a:Landroid/content/Context;

    const-string v5, "maploc"

    const-string v6, "ue"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/amap/api/mapcore/util/ea;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/amap/api/mapcore/util/fp$a$a;->c:Lorg/json/JSONObject;

    const-string v2, "fn"

    const/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v2, "mpn"

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v1, :cond_2

    :goto_0
    if-ge v1, v0, :cond_1

    :goto_1
    const-string v1, "igu"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/fp;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v4, v1}, Lcom/amap/api/mapcore/util/ia;->a(IZ)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/f;->a:Landroid/content/Context;

    const-string v2, "maploc"

    const-string v3, "opn"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/ea;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AuthUtil"

    const-string v2, "loadConfigData_uploadException"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getNetWorkEnable()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "002"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "11K"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "001"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "14M"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "14L"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->e()Lcom/amap/api/mapcore/util/fx;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Lcom/amap/api/mapcore/util/fp;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/mapcore/util/fp$a;

    move-result-object v3

    sget v0, Lcom/amap/api/mapcore/util/fp;->a:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/f;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v4, 0x2

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v4, v3, Lcom/amap/api/mapcore/util/fp$a;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/amap/api/mapcore/util/fp$a;->a:Ljava/lang/String;

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_1
    iget-object v4, p0, Lcom/amap/api/mapcore/util/f;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v4}, Lcom/amap/api/mapcore/util/l;->getMainHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isDownloadCoordinateConvertLibrary()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    iget-object v0, v3, Lcom/amap/api/mapcore/util/fp$a;->x:Lcom/amap/api/mapcore/util/fp$a$a;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->e()Lcom/amap/api/mapcore/util/fx;

    move-result-object v0

    iget-object v4, v3, Lcom/amap/api/mapcore/util/fp$a;->x:Lcom/amap/api/mapcore/util/fp$a$a;

    iget-boolean v4, v4, Lcom/amap/api/mapcore/util/fp$a$a;->a:Z

    invoke-virtual {v0, v4}, Lcom/amap/api/mapcore/util/fx;->a(Z)V

    :cond_3
    iget-object v0, v3, Lcom/amap/api/mapcore/util/fp$a;->z:Lcom/amap/api/mapcore/util/fp$a$c;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/amap/api/mapcore/util/fw;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/f;->a:Landroid/content/Context;

    const-string v5, "3dmap"

    iget-object v6, v3, Lcom/amap/api/mapcore/util/fp$a;->z:Lcom/amap/api/mapcore/util/fp$a$c;

    iget-object v6, v6, Lcom/amap/api/mapcore/util/fp$a$c;->a:Ljava/lang/String;

    iget-object v7, v3, Lcom/amap/api/mapcore/util/fp$a;->z:Lcom/amap/api/mapcore/util/fp$a$c;

    iget-object v7, v7, Lcom/amap/api/mapcore/util/fp$a$c;->b:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/amap/api/mapcore/util/fw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fw;->a()V

    :cond_4
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/f;->a(Lcom/amap/api/mapcore/util/fp$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v3, Lcom/amap/api/mapcore/util/fp$a;->w:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/amap/api/mapcore/util/fp$a;->w:Lorg/json/JSONObject;

    const-string v4, "14M"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v0, "able"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "able"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/amap/api/mapcore/util/fp;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x278d00

    const-string v5, "time"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v0, "time"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x3c

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_5
    invoke-static {}, Lcom/amap/api/mapcore/util/dw;->a()Lcom/amap/api/mapcore/util/dw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/dw;->b()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/f;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_1
    :try_start_2
    iget-object v0, v3, Lcom/amap/api/mapcore/util/fp$a;->w:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_7

    :try_start_3
    iget-object v0, v3, Lcom/amap/api/mapcore/util/fp$a;->w:Lorg/json/JSONObject;

    const-string v4, "14L"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v4, "able"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "able"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/amap/api/mapcore/util/fp;->a(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/f;->b:Lcom/amap/api/mapcore/util/l;

    if-nez v0, :cond_a

    move v0, v1

    :goto_2
    invoke-interface {v4, v0}, Lcom/amap/api/mapcore/util/l;->i(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_7
    :goto_3
    if-eqz v3, :cond_9

    :try_start_4
    iget-object v0, v3, Lcom/amap/api/mapcore/util/fp$a;->y:Lcom/amap/api/mapcore/util/fp$a$d;

    if-eqz v0, :cond_9

    iget-object v0, v3, Lcom/amap/api/mapcore/util/fp$a;->y:Lcom/amap/api/mapcore/util/fp$a$d;

    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/amap/api/mapcore/util/fp$a$d;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/amap/api/mapcore/util/fp$a$d;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/fp$a$d;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_8
    new-instance v0, Lcom/amap/api/mapcore/util/gy;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->e()Lcom/amap/api/mapcore/util/fx;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/gy;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/gz;Lcom/amap/api/mapcore/util/fx;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gy;->a()V

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->e()Lcom/amap/api/mapcore/util/fx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/gf;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)Lcom/amap/api/mapcore/util/gf;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/f;->interrupt()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/f;->b:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/f;->interrupt()V

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "mVerfy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_b
    new-instance v3, Lcom/amap/api/mapcore/util/gz;

    invoke-direct {v3, v2, v1, v0}, Lcom/amap/api/mapcore/util/gz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/mapcore/util/gy;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->e()Lcom/amap/api/mapcore/util/fx;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/amap/api/mapcore/util/gy;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/gz;Lcom/amap/api/mapcore/util/fx;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gy;->a()V

    goto :goto_4

    :cond_c
    new-instance v0, Lcom/amap/api/mapcore/util/gy;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->e()Lcom/amap/api/mapcore/util/fx;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/gy;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/gz;Lcom/amap/api/mapcore/util/fx;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gy;->a()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4
.end method
