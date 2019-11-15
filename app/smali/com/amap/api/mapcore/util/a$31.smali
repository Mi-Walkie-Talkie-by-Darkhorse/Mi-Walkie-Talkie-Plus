.class Lcom/amap/api/mapcore/util/a$31;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a;->setTrafficEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/mapcore/util/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$31;->c:Lcom/amap/api/mapcore/util/a;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/a$31;->a:Z

    iput-boolean p3, p0, Lcom/amap/api/mapcore/util/a$31;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/a$31;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->isTrafficEnabled()Z

    move-result v2

    iget-boolean v3, p0, Lcom/amap/api/mapcore/util/a$31;->a:Z

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a$31;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-boolean v3, p0, Lcom/amap/api/mapcore/util/a$31;->b:Z

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setTrafficEnabled(Z)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a$31;->c:Lcom/amap/api/mapcore/util/a;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/a;->s(Lcom/amap/api/mapcore/util/a;)Lcom/autonavi/ae/gmap/GLMapRender;

    move-result-object v2

    iget-boolean v3, p0, Lcom/amap/api/mapcore/util/a$31;->a:Z

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/GLMapRender;->setTrafficMode(Z)V

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/a$31;->a:Z

    if-eqz v2, :cond_2

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$31;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    const/16 v2, 0x89b

    const/16 v3, 0x8

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$31;->c:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->t(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/model/MyTrafficStyle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$31;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a$31;->c:Lcom/amap/api/mapcore/util/a;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/a;->t(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/model/MyTrafficStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a;->setMyTrafficStyle(Lcom/amap/api/maps/model/MyTrafficStyle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$31;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    const/16 v2, 0x7da

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, v7

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$31;->c:Lcom/amap/api/mapcore/util/a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v7, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
