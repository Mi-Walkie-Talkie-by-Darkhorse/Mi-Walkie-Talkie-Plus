.class final Lcom/amap/api/col/l3/j$1;
.super Landroid/os/Handler;
.source "AMapDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v0, "AMapDelegateImp"

    if-eqz p1, :cond_11

    .line 1
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->a(Lcom/amap/api/col/l3/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 3
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->o(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnPOIClickListener;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/maps/model/Poi;

    invoke-interface {v1, p1}, Lcom/amap/api/maps/AMap$OnPOIClickListener;->onPOIClick(Lcom/amap/api/maps/model/Poi;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v1, "OnPOIClickListener.onPOIClick"

    .line 4
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 6
    :pswitch_1
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->p(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapClickListener;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 7
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, p1, v1}, Lcom/amap/api/col/l3/j;->b(IILcom/autonavi/amap/mapcore/DPoint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 9
    :try_start_3
    iget-object p1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->p(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapClickListener;

    move-result-object p1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v2}, Lcom/amap/api/maps/AMap$OnMapClickListener;->onMapClick(Lcom/amap/api/maps/model/LatLng;)V

    .line 10
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    :try_start_4
    const-string v1, "OnMapClickListener.onMapClick"

    .line 11
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 13
    :pswitch_2
    iget-object p1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->q(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ao;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 14
    iget-object p1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->q(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/col/l3/ao;->d()Lcom/amap/api/col/l3/an;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/amap/api/col/l3/an;->a_()V

    goto/16 :goto_1

    .line 15
    :pswitch_3
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    .line 16
    invoke-static {v1}, Lcom/amap/api/col/l3/j;->l(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ae;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->l(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ae;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3/ae;->b(Z)V

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->l(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ae;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 19
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->l(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ae;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3/ae;->a(Z)V

    return-void

    .line 20
    :pswitch_4
    iget-object p1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->c(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz p1, :cond_e

    .line 21
    :try_start_5
    iget-object p1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->c(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/api/maps/AMap$OnMapLoadedListener;->onMapLoaded()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    :try_start_6
    const-string v1, "onMapLoaded"

    .line 22
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 24
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    .line 25
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_5

    .line 26
    iget-object v2, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v2}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 27
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 28
    iget-object v3, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v3}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/amap/api/col/l3/ey;->h()Lcom/amap/api/col/l3/fa;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 30
    invoke-virtual {v3, v2}, Lcom/amap/api/col/l3/fa;->onDraw(Landroid/graphics/Canvas;)V

    .line 31
    :cond_3
    iget-object v3, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v3}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amap/api/col/l3/ey;->a(Landroid/graphics/Canvas;)V

    .line 32
    iget-object v2, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v2}, Lcom/amap/api/col/l3/j;->f(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 33
    iget-object v2, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v2}, Lcom/amap/api/col/l3/j;->f(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    iget-object v4, v4, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    .line 34
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 35
    invoke-interface {v2, v3}, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;->onMapPrint(Landroid/graphics/drawable/Drawable;)V

    .line 36
    :cond_4
    iget-object v2, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v2}, Lcom/amap/api/col/l3/j;->g(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 37
    iget-object v2, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v2}, Lcom/amap/api/col/l3/j;->g(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    .line 38
    iget-object v2, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v2}, Lcom/amap/api/col/l3/j;->g(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 39
    :cond_5
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->f(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 40
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->f(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;->onMapPrint(Landroid/graphics/drawable/Drawable;)V

    .line 41
    :cond_6
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->g(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 42
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->g(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    .line 43
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->g(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;I)V

    .line 44
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->h(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    .line 45
    iget-object p1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->i(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    return-void

    .line 46
    :pswitch_6
    :try_start_7
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->d(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapTouchListener;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 47
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->d(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapTouchListener;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-interface {v1, p1}, Lcom/amap/api/maps/AMap$OnMapTouchListener;->onTouch(Landroid/view/MotionEvent;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_8
    return-void

    :catchall_3
    move-exception p1

    :try_start_8
    const-string v1, "onTouchHandler"

    .line 48
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 50
    :pswitch_7
    iget-object p1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 51
    iget-object p1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/col/l3/ey;->g()Lcom/amap/api/col/l3/ev;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 52
    :cond_9
    invoke-virtual {p1}, Lcom/amap/api/col/l3/ev;->b()V

    return-void

    .line 53
    :pswitch_8
    iget-object p1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 54
    iget-object p1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/j;->h()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3/ey;->a(F)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    return-void

    .line 55
    :pswitch_9
    :try_start_9
    iget-object p1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/j;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 56
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 57
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3/ey;->a(Lcom/amap/api/maps/model/CameraPosition;)V

    .line 58
    :cond_a
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/j;->a(Lcom/amap/api/col/l3/j;Lcom/amap/api/maps/model/CameraPosition;)V

    .line 59
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->j(Lcom/amap/api/col/l3/j;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 60
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->k(Lcom/amap/api/col/l3/j;)Z

    .line 61
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->l(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ae;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 62
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->l(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ae;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3/ae;->b(Z)V

    .line 63
    :cond_b
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/j;->q()V

    .line 64
    :cond_c
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->m(Lcom/amap/api/col/l3/j;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 65
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/j;->k()V

    .line 66
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->n(Lcom/amap/api/col/l3/j;)Z

    .line 67
    :cond_d
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3/j;->a(Lcom/amap/api/maps/model/CameraPosition;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    return-void

    :catchall_4
    move-exception p1

    :try_start_a
    const-string v1, "CameraUpdateFinish"

    .line 68
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 69
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/maps/model/CameraPosition;

    if-eqz p1, :cond_e

    .line 70
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->b(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 71
    iget-object v1, p0, Lcom/amap/api/col/l3/j$1;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->b(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amap/api/maps/AMap$OnCameraChangeListener;->onCameraChange(Lcom/amap/api/maps/model/CameraPosition;)V

    :cond_e
    :goto_1
    return-void

    .line 72
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key\u9a8c\u8bc1\u5931\u8d25\uff1a["

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_10

    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 76
    :cond_10
    sget-object p1, Lcom/amap/api/col/l3/fx;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string p1, "]"

    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    return-void

    :catchall_5
    move-exception p1

    const-string v1, "handleMessage"

    .line 79
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
