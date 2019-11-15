.class Lcom/amap/api/mapcore/util/a$40;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a;->destroy()V
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

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$40;->a:Lcom/amap/api/mapcore/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$40;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->w(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$40;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->w(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->c()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$40;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->x(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$40;->a:Lcom/amap/api/mapcore/util/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/a;->a(Lcom/amap/api/mapcore/util/a;Lcom/amap/api/mapcore/util/cx;)Lcom/amap/api/mapcore/util/cx;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$40;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->destorySurface()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$40;->a:Lcom/amap/api/mapcore/util/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
