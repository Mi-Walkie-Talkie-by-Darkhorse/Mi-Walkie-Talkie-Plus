.class Lcom/amap/api/mapcore/util/d$1;
.super Ljava/lang/Object;
.source "AMapGLTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/d;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/d;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/d$1;->a:Lcom/amap/api/mapcore/util/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d$1;->a:Lcom/amap/api/mapcore/util/d;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/d;->a(Lcom/amap/api/mapcore/util/d;)Lcom/autonavi/ae/gmap/GLMapRender;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d$1;->a:Lcom/amap/api/mapcore/util/d;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/d;->a(Lcom/amap/api/mapcore/util/d;)Lcom/autonavi/ae/gmap/GLMapRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->onSurfaceDestory()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
