.class final Lcom/amap/api/col/l3/j$31;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/j;->setTrafficEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j$31;->c:Lcom/amap/api/col/l3/j;

    iput-boolean p2, p0, Lcom/amap/api/col/l3/j$31;->a:Z

    iput-boolean p3, p0, Lcom/amap/api/col/l3/j$31;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j$31;->c:Lcom/amap/api/col/l3/j;

    iget-object v0, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isTrafficEnabled()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/amap/api/col/l3/j$31;->a:Z

    if-eq v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/j$31;->c:Lcom/amap/api/col/l3/j;

    iget-object v0, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-boolean v1, p0, Lcom/amap/api/col/l3/j$31;->b:Z

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setTrafficEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/j$31;->c:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->x(Lcom/amap/api/col/l3/j;)Lcom/autonavi/ae/gmap/GLMapRender;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/col/l3/j$31;->a:Z

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setTrafficMode(Z)V

    .line 5
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j$31;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j$31;->c:Lcom/amap/api/col/l3/j;

    iget-object v5, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v6, 0x1

    const/16 v7, 0x89b

    const/16 v8, 0x8

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/j$31;->c:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->y(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/model/MyTrafficStyle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3/j$31;->c:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->y(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/model/MyTrafficStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/j;->setMyTrafficStyle(Lcom/amap/api/maps/model/MyTrafficStyle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3/j$31;->c:Lcom/amap/api/col/l3/j;

    iget-object v1, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    const/16 v3, 0x7da

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    .line 11
    iget-object v0, p0, Lcom/amap/api/col/l3/j$31;->c:Lcom/amap/api/col/l3/j;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
