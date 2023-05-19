.class final Lcom/amap/api/col/l3/j$40;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/j;->destroy()V
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

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j$40;->a:Lcom/amap/api/col/l3/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j$40;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->C(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j$40;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->C(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/s;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j$40;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->D(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/dg;->a()V

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/j$40;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->E(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/dg;

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/j$40;->a:Lcom/amap/api/col/l3/j;

    iget-object v0, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->destorySurface()V

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/j$40;->a:Lcom/amap/api/col/l3/j;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
