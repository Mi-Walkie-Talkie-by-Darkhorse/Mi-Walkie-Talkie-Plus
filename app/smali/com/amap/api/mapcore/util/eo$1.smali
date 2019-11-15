.class Lcom/amap/api/mapcore/util/eo$1;
.super Ljava/lang/Object;
.source "CompassView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/eo;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/eo;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/eo;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/eo$1;->a:Lcom/amap/api/mapcore/util/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo$1;->a:Lcom/amap/api/mapcore/util/eo;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/eo;->e:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->isMaploaded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo$1;->a:Lcom/amap/api/mapcore/util/eo;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eo$1;->a:Lcom/amap/api/mapcore/util/eo;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/eo;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CompassView"

    const-string v2, "onTouch"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo$1;->a:Lcom/amap/api/mapcore/util/eo;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/eo;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eo$1;->a:Lcom/amap/api/mapcore/util/eo;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/eo;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo$1;->a:Lcom/amap/api/mapcore/util/eo;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/eo;->e:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eo$1;->a:Lcom/amap/api/mapcore/util/eo;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/eo;->e:Lcom/amap/api/mapcore/util/l;

    new-instance v2, Lcom/amap/api/maps/model/CameraPosition;

    iget-object v3, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    invoke-static {v2}, Lcom/amap/api/mapcore/util/aa;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/util/l;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
