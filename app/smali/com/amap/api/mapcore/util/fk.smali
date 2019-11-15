.class public Lcom/amap/api/mapcore/util/fk;
.super Lcom/amap/api/mapcore/util/fi;
.source "TraceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/fi",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/amap/api/trace/TraceLocation;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/amap/api/maps/model/LatLng;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;ILjava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;I",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/amap/api/mapcore/util/fi;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fk;->b:Landroid/os/Handler;

    iput v1, p0, Lcom/amap/api/mapcore/util/fk;->k:I

    iput v1, p0, Lcom/amap/api/mapcore/util/fk;->l:I

    iput-object p3, p0, Lcom/amap/api/mapcore/util/fk;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/fk;->b:Landroid/os/Handler;

    iput p6, p0, Lcom/amap/api/mapcore/util/fk;->l:I

    iput p7, p0, Lcom/amap/api/mapcore/util/fk;->k:I

    iput-object p5, p0, Lcom/amap/api/mapcore/util/fk;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fg;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "points"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "x"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected synthetic c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fg;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/fk;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 14

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fk;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/trace/TraceLocation;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "x"

    invoke-virtual {v0}, Lcom/amap/api/trace/TraceLocation;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v7, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "y"

    invoke-virtual {v0}, Lcom/amap/api/trace/TraceLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v7, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "ag"

    invoke-virtual {v0}, Lcom/amap/api/trace/TraceLocation;->getBearing()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/amap/api/trace/TraceLocation;->getTime()J

    move-result-wide v4

    if-nez v1, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    :cond_0
    const-string v8, "tm"

    const-wide/16 v10, 0x3e8

    div-long v10, v4, v10

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-wide v2, v4

    :goto_1
    const-string v4, "sp"

    invoke-virtual {v0}, Lcom/amap/api/trace/TraceLocation;->getSpeed()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_2

    sub-long v8, v4, v2

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    :cond_2
    :try_start_1
    const-string v8, "tm"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-wide v2, v4

    goto :goto_1

    :cond_3
    const-string v8, "tm"

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v2, v4

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/fk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fk;->g:Ljava/lang/String;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/fk;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fg; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore/util/fm;->a()Lcom/amap/api/mapcore/util/fm;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fk;->m:Ljava/lang/String;

    iget v3, p0, Lcom/amap/api/mapcore/util/fk;->k:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/fm;->a(Ljava/lang/String;ILjava/util/List;)V

    invoke-static {}, Lcom/amap/api/mapcore/util/fm;->a()Lcom/amap/api/mapcore/util/fm;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fk;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/fm;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/fm$a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fk;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/fm$a;->a(Landroid/os/Handler;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/amap/api/mapcore/util/fm;->a()Lcom/amap/api/mapcore/util/fm;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fk;->b:Landroid/os/Handler;

    iget v3, p0, Lcom/amap/api/mapcore/util/fk;->l:I

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/fm;->a(Landroid/os/Handler;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
