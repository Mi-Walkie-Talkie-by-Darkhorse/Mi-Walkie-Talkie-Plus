.class Lcom/amap/api/mapcore/util/a$15;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a;->drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
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

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$15;->a:Lcom/amap/api/mapcore/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$15;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->p(Lcom/amap/api/mapcore/util/a;)Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$15;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->p(Lcom/amap/api/mapcore/util/a;)Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;->onDrawFrameFirst(I)V

    :cond_0
    return-void
.end method
