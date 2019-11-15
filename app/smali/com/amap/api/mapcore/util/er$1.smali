.class Lcom/amap/api/mapcore/util/er$1;
.super Ljava/lang/Object;
.source "MapOverlayViewGroup.java"

# interfaces
.implements Lcom/autonavi/ae/gmap/listener/MapWidgetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/er;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/er;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/er;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/er$1;->a:Lcom/amap/api/mapcore/util/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateCompassView()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er$1;->a:Lcom/amap/api/mapcore/util/er;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/er;->b(Lcom/amap/api/mapcore/util/er;)Lcom/amap/api/mapcore/util/eo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er$1;->a:Lcom/amap/api/mapcore/util/er;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/er;->b(Lcom/amap/api/mapcore/util/er;)Lcom/amap/api/mapcore/util/eo;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/er$1$2;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/er$1$2;-><init>(Lcom/amap/api/mapcore/util/er$1;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eo;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public invalidateScaleView()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er$1;->a:Lcom/amap/api/mapcore/util/er;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/er;->a(Lcom/amap/api/mapcore/util/er;)Lcom/amap/api/mapcore/util/es;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er$1;->a:Lcom/amap/api/mapcore/util/er;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/er;->a(Lcom/amap/api/mapcore/util/er;)Lcom/amap/api/mapcore/util/es;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/er$1$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/er$1$1;-><init>(Lcom/amap/api/mapcore/util/er$1;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/es;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public invalidateZoomController(F)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/er$1;->a:Lcom/amap/api/mapcore/util/er;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/er;->c(Lcom/amap/api/mapcore/util/er;)Lcom/amap/api/mapcore/util/eu;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/er$1;->a:Lcom/amap/api/mapcore/util/er;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/er;->c(Lcom/amap/api/mapcore/util/er;)Lcom/amap/api/mapcore/util/eu;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/er$1$3;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/er$1$3;-><init>(Lcom/amap/api/mapcore/util/er$1;F)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eu;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFrontViewVisibility(Z)V
    .locals 0

    return-void
.end method
