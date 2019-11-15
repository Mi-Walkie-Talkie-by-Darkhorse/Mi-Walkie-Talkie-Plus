.class Lcom/amap/api/mapcore/util/a$36;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a;->setCenterToPixel(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$36;->a:Lcom/amap/api/mapcore/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$36;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a$36;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/a;->n(Lcom/amap/api/mapcore/util/a;)I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a$36;->a:Lcom/amap/api/mapcore/util/a;

    iget v3, v3, Lcom/amap/api/mapcore/util/a;->g:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorX(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$36;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a$36;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/a;->o(Lcom/amap/api/mapcore/util/a;)I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a$36;->a:Lcom/amap/api/mapcore/util/a;

    iget v3, v3, Lcom/amap/api/mapcore/util/a;->h:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorY(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$36;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    const/16 v2, 0x44c

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a$36;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/a$36;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v4, v4, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$36;->a:Lcom/amap/api/mapcore/util/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/a;->c(Lcom/amap/api/mapcore/util/a;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
