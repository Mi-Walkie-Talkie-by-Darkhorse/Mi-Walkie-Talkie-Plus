.class Lcom/amap/api/mapcore/util/eu$2;
.super Ljava/lang/Object;
.source "ZoomControllerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/eu;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/eu;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/eu;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/eu$2;->a:Lcom/amap/api/mapcore/util/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu$2;->a:Lcom/amap/api/mapcore/util/eu;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/eu;->a(Lcom/amap/api/mapcore/util/eu;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->g()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eu$2;->a:Lcom/amap/api/mapcore/util/eu;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/eu;->a(Lcom/amap/api/mapcore/util/eu;)Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->getMinZoomLevel()F

    move-result v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu$2;->a:Lcom/amap/api/mapcore/util/eu;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/eu;->a(Lcom/amap/api/mapcore/util/eu;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->isMaploaded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu$2;->a:Lcom/amap/api/mapcore/util/eu;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/eu;->f(Lcom/amap/api/mapcore/util/eu;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eu$2;->a:Lcom/amap/api/mapcore/util/eu;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/eu;->e(Lcom/amap/api/mapcore/util/eu;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZoomControllerView"

    const-string v2, "zoomout ontouch"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu$2;->a:Lcom/amap/api/mapcore/util/eu;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/eu;->f(Lcom/amap/api/mapcore/util/eu;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eu$2;->a:Lcom/amap/api/mapcore/util/eu;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/eu;->g(Lcom/amap/api/mapcore/util/eu;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu$2;->a:Lcom/amap/api/mapcore/util/eu;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/eu;->a(Lcom/amap/api/mapcore/util/eu;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/mapcore/util/aa;->b()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
