.class public Lcom/amap/api/mapcore/util/ed;
.super Ljava/lang/Object;
.source "StatisticsUtil.java"


# direct methods
.method private static a(Z)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"Quest\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/ed;->a(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/ib;

    const-string v2, "3dmap"

    const-string v3, "5.7.0"

    const-string v4, "O001"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/amap/api/mapcore/util/ib;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ib;->a(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/amap/api/mapcore/util/ic;->a(Lcom/amap/api/mapcore/util/ib;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
