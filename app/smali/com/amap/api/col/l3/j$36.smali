.class final Lcom/amap/api/col/l3/j$36;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/j;->setCenterToPixel(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/j$36;->a:Lcom/amap/api/col/l3/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j$36;->a:Lcom/amap/api/col/l3/j;

    iget-object v0, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-object v1, p0, Lcom/amap/api/col/l3/j$36;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->r(Lcom/amap/api/col/l3/j;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/l3/j$36;->a:Lcom/amap/api/col/l3/j;

    iget v2, v2, Lcom/amap/api/col/l3/j;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorX(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/j$36;->a:Lcom/amap/api/col/l3/j;

    iget-object v0, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-object v1, p0, Lcom/amap/api/col/l3/j$36;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->s(Lcom/amap/api/col/l3/j;)I

    move-result v1

    iget-object v3, p0, Lcom/amap/api/col/l3/j$36;->a:Lcom/amap/api/col/l3/j;

    iget v3, v3, Lcom/amap/api/col/l3/j;->h:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorY(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/j$36;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    const/16 v3, 0x44c

    iget-object v0, p0, Lcom/amap/api/col/l3/j$36;->a:Lcom/amap/api/col/l3/j;

    iget-object v0, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v4

    iget-object v0, p0, Lcom/amap/api/col/l3/j$36;->a:Lcom/amap/api/col/l3/j;

    iget-object v0, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/col/l3/j$36;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->z(Lcom/amap/api/col/l3/j;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
