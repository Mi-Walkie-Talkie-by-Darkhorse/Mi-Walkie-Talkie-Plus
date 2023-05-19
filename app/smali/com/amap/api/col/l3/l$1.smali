.class final Lcom/amap/api/col/l3/l$1;
.super Ljava/lang/Object;
.source "AMapGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/l;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/l;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/l$1;->a:Lcom/amap/api/col/l3/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/l$1;->a:Lcom/amap/api/col/l3/l;

    invoke-static {v0}, Lcom/amap/api/col/l3/l;->a(Lcom/amap/api/col/l3/l;)Lcom/autonavi/ae/gmap/GLMapRender;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/l$1;->a:Lcom/amap/api/col/l3/l;

    invoke-static {v0}, Lcom/amap/api/col/l3/l;->a(Lcom/amap/api/col/l3/l;)Lcom/autonavi/ae/gmap/GLMapRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->onSurfaceDestory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
