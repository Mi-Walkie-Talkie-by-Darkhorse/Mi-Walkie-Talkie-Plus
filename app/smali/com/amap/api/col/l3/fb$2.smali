.class final Lcom/amap/api/col/l3/fb$2;
.super Ljava/lang/Object;
.source "ZoomControllerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/fb;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/fb;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/fb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/fb$2;->a:Lcom/amap/api/col/l3/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fb$2;->a:Lcom/amap/api/col/l3/fb;

    invoke-static {v0}, Lcom/amap/api/col/l3/fb;->a(Lcom/amap/api/col/l3/fb;)Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->h()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3/fb$2;->a:Lcom/amap/api/col/l3/fb;

    invoke-static {v1}, Lcom/amap/api/col/l3/fb;->a(Lcom/amap/api/col/l3/fb;)Lcom/amap/api/col/l3/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/fb$2;->a:Lcom/amap/api/col/l3/fb;

    invoke-static {v0}, Lcom/amap/api/col/l3/fb;->a(Lcom/amap/api/col/l3/fb;)Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->isMaploaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/amap/api/col/l3/fb$2;->a:Lcom/amap/api/col/l3/fb;

    invoke-static {p2}, Lcom/amap/api/col/l3/fb;->f(Lcom/amap/api/col/l3/fb;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/amap/api/col/l3/fb$2;->a:Lcom/amap/api/col/l3/fb;

    invoke-static {v0}, Lcom/amap/api/col/l3/fb;->e(Lcom/amap/api/col/l3/fb;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 5
    iget-object p2, p0, Lcom/amap/api/col/l3/fb$2;->a:Lcom/amap/api/col/l3/fb;

    invoke-static {p2}, Lcom/amap/api/col/l3/fb;->f(Lcom/amap/api/col/l3/fb;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/amap/api/col/l3/fb$2;->a:Lcom/amap/api/col/l3/fb;

    invoke-static {v0}, Lcom/amap/api/col/l3/fb;->g(Lcom/amap/api/col/l3/fb;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object p2, p0, Lcom/amap/api/col/l3/fb$2;->a:Lcom/amap/api/col/l3/fb;

    invoke-static {p2}, Lcom/amap/api/col/l3/fb;->a(Lcom/amap/api/col/l3/fb;)Lcom/amap/api/col/l3/u;

    move-result-object p2

    .line 7
    invoke-static {}, Lcom/amap/api/col/l3/aj;->b()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    .line 8
    invoke-interface {p2, v0}, Lcom/amap/api/col/l3/u;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    :goto_0
    return p1

    :catchall_0
    move-exception p2

    const-string v0, "ZoomControllerView"

    const-string v1, "zoomout ontouch"

    .line 9
    invoke-static {p2, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return p1
.end method