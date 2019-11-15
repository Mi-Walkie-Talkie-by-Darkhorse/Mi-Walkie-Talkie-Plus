.class public Lcom/ifengyu/intercom/ui/map/c/a/d;
.super Ljava/lang/Object;
.source "ClusterOverlay.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnCameraChangeListener;
.implements Lcom/amap/api/maps/AMap$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/map/c/a/d$c;,
        Lcom/ifengyu/intercom/ui/map/c/a/d$a;,
        Lcom/ifengyu/intercom/ui/map/c/a/d$b;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps/AMap;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/map/c/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/map/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/ifengyu/intercom/ui/map/c/a/b;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private h:D

.field private i:Landroid/os/HandlerThread;

.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/Handler;

.field private l:Landroid/os/Handler;

.field private m:F

.field private n:Z

.field private o:F

.field private p:Lcom/amap/api/maps/model/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/AMap;Ljava/util/List;ILandroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps/AMap;",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/map/c/a/c;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->g:Ljava/util/List;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "addMarker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->i:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "calculateCluster"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->j:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->n:Z

    new-instance v0, Lcom/amap/api/maps/model/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/amap/api/maps/model/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->p:Lcom/amap/api/maps/model/animation/AlphaAnimation;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->a:Lcom/amap/api/maps/AMap;

    iput p3, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->e:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getScalePerPixel()F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->m:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->m:F

    int-to-float v1, p3

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->h:D

    invoke-virtual {p1, p0}, Lcom/amap/api/maps/AMap;->setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V

    invoke-virtual {p1, p0}, Lcom/amap/api/maps/AMap;->setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->d()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->c()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->o:F

    return-void
.end method

.method private a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Lcom/ifengyu/intercom/ui/map/c/a/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/map/c/a/a;",
            ">;)",
            "Lcom/ifengyu/intercom/ui/map/c/a/a;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/c/a/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/c/a/a;->a()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v2

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->h:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/ifengyu/intercom/ui/map/c/a/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/a/a;->a()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/a/a;->c()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/ui/map/c/a/d;->b(Ljava/util/List;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    const-string v2, "\u662f\u7ecf\u6d4e\u6570\u636e"

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->infoWindowEnable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->p:Lcom/amap/api/maps/model/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->startAnimation()Z

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/map/c/a/a;->a(Lcom/amap/api/maps/model/Marker;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/c/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->e()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/c/a/d;Lcom/ifengyu/intercom/ui/map/c/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/c/a/d;->a(Lcom/ifengyu/intercom/ui/map/c/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/c/a/d;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/c/a/d;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/map/c/a/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/amap/api/maps/model/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/amap/api/maps/model/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Lcom/ifengyu/intercom/ui/map/c/a/d$b;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/ui/map/c/a/d$b;-><init>(Lcom/ifengyu/intercom/ui/map/c/a/d;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Marker;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->startAnimation()Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/c/a/a;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->a(Lcom/ifengyu/intercom/ui/map/c/a/a;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(I)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    int-to-long v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x384

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/map/c/a/c;",
            ">;)",
            "Lcom/amap/api/maps/model/BitmapDescriptor;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/high16 v10, 0x42480000    # 50.0f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->b:Landroid/content/Context;

    const v1, 0x7f0400cd

    invoke-static {v0, v1, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f1002d8

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/map/c/a/e;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/c/a/e;->c()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    new-instance v5, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-static {v10}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v10}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/c/a/e;->c()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/map/c/a/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-static {v3}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->b:Landroid/content/Context;

    const v1, 0x7f0400ca

    invoke-static {v0, v1, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v0, 0x7f1002ce

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f1002cf

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090175

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v5

    move-object v4, v7

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/map/c/a/c;

    check-cast v1, Lcom/ifengyu/intercom/ui/map/c/a/e;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/c/a/e;->c()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v2

    if-le v2, v3, :cond_6

    move-object v3, v1

    move v1, v2

    :goto_3
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/map/c/a/d;->a(I)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v5

    :goto_4
    move v6, v2

    move-object v4, v3

    move v3, v1

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/ifengyu/intercom/ui/map/c/a/e;->c()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v7

    :cond_3
    if-eqz v7, :cond_5

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-static {v10}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v10}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-virtual {v1, v7, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v6, :cond_4

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    invoke-static {v8}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    move v1, v3

    move-object v3, v4

    goto :goto_3

    :cond_7
    move v2, v6

    goto :goto_4

    :cond_8
    move-object v1, v2

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/c/a/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->c:Ljava/util/List;

    return-object v0
.end method

.method private b(Lcom/ifengyu/intercom/ui/map/c/a/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/a/a;->b()Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/a/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/map/c/a/d;->b(Ljava/util/List;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/c/a/d;Lcom/ifengyu/intercom/ui/map/c/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/c/a/d;->b(Lcom/ifengyu/intercom/ui/map/c/a/a;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/ifengyu/intercom/ui/map/c/a/d$a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/map/c/a/d$a;-><init>(Lcom/ifengyu/intercom/ui/map/c/a/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->k:Landroid/os/Handler;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/c/a/d$c;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/map/c/a/d$c;-><init>(Lcom/ifengyu/intercom/ui/map/c/a/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->l:Landroid/os/Handler;

    return-void
.end method

.method private e()V
    .locals 5

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->n:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getProjection()Lcom/amap/api/maps/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/Projection;->getVisibleRegion()Lcom/amap/api/maps/model/VisibleRegion;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/maps/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/c/a/c;

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->n:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/map/c/a/c;->a()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->d:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/ifengyu/intercom/ui/map/c/a/d;->a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Lcom/ifengyu/intercom/ui/map/c/a/a;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/ui/map/c/a/a;->a(Lcom/ifengyu/intercom/ui/map/c/a/c;)V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/ifengyu/intercom/ui/map/c/a/a;

    invoke-direct {v3, v2}, Lcom/ifengyu/intercom/ui/map/c/a/a;-><init>(Lcom/amap/api/maps/model/LatLng;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/ui/map/c/a/a;->a(Lcom/ifengyu/intercom/ui/map/c/a/c;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->n:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/map/c/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->f:Lcom/ifengyu/intercom/ui/map/c/a/b;

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/map/c/a/c;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->n:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCameraChange(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 0

    return-void
.end method

.method public onCameraChangeFinish(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 2

    iget v0, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    iget v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->o:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getScalePerPixel()F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->m:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->m:F

    iget v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->e:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->h:D

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->c()V

    iget v0, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->o:F

    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->f:Lcom/ifengyu/intercom/ui/map/c/a/b;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/c/a/a;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/c/a/d;->f:Lcom/ifengyu/intercom/ui/map/c/a/b;

    invoke-interface {v2, p1, v0}, Lcom/ifengyu/intercom/ui/map/c/a/b;->a(Lcom/amap/api/maps/model/Marker;Lcom/ifengyu/intercom/ui/map/c/a/a;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
