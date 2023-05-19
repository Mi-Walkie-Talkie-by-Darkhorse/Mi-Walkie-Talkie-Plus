.class public Lcom/ifengyu/intercom/ui/c/g/d;
.super Ljava/lang/Object;
.source "ClusterOverlay.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnCameraChangeListener;
.implements Lcom/amap/api/maps/AMap$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/c/g/d$c;,
        Lcom/ifengyu/intercom/ui/c/g/d$a;,
        Lcom/ifengyu/intercom/ui/c/g/d$b;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps/AMap;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/c/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/c/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/ifengyu/intercom/ui/c/g/b;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private h:D

.field private final i:Landroid/os/HandlerThread;

.field private final j:Landroid/os/HandlerThread;

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
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/c/g/c;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->g:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "addMarker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->i:Landroid/os/HandlerThread;

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "calculateCluster"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->j:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->n:Z

    .line 6
    new-instance v0, Lcom/amap/api/maps/model/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/amap/api/maps/model/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->p:Lcom/amap/api/maps/model/animation/AlphaAnimation;

    .line 7
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/c/g/d;->c:Ljava/util/List;

    .line 8
    iput-object p4, p0, Lcom/ifengyu/intercom/ui/c/g/d;->b:Landroid/content/Context;

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/c/g/d;->d:Ljava/util/List;

    .line 10
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->a:Lcom/amap/api/maps/AMap;

    .line 11
    iput p3, p0, Lcom/ifengyu/intercom/ui/c/g/d;->e:I

    .line 12
    invoke-virtual {p1}, Lcom/amap/api/maps/AMap;->getScalePerPixel()F

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/ui/c/g/d;->m:F

    int-to-float p3, p3

    mul-float p2, p2, p3

    float-to-double p2, p2

    .line 13
    iput-wide p2, p0, Lcom/ifengyu/intercom/ui/c/g/d;->h:D

    .line 14
    invoke-virtual {p1, p0}, Lcom/amap/api/maps/AMap;->setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V

    .line 15
    invoke-virtual {p1, p0}, Lcom/amap/api/maps/AMap;->setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V

    .line 16
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/c/g/d;->m()V

    .line 17
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/c/g/d;->i()V

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {p1}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p1

    iget p1, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    iput p1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->o:F

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/c/g/d;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/c/g/d;->g(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/c/g/d;Lcom/ifengyu/intercom/ui/c/g/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/c/g/d;->h(Lcom/ifengyu/intercom/ui/c/g/a;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/c/g/d;Lcom/ifengyu/intercom/ui/c/g/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/c/g/d;->r(Lcom/ifengyu/intercom/ui/c/g/a;)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/c/g/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/c/g/d;->j()V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/c/g/d;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->c:Ljava/util/List;

    return-object p0
.end method

.method private g(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/c/g/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    new-instance v1, Lcom/amap/api/maps/model/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/amap/api/maps/model/animation/AlphaAnimation;-><init>(FF)V

    .line 4
    new-instance v2, Lcom/ifengyu/intercom/ui/c/g/d$b;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/ui/c/g/d$b;-><init>(Lcom/ifengyu/intercom/ui/c/g/d;Ljava/util/List;)V

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/Marker;

    .line 6
    invoke-virtual {v3, v1}, Lcom/amap/api/maps/model/Marker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    .line 7
    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/Marker;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    .line 8
    invoke-virtual {v3}, Lcom/amap/api/maps/model/Marker;->startAnimation()Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/c/g/a;

    .line 10
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/c/g/d;->h(Lcom/ifengyu/intercom/ui/c/g/a;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private h(Lcom/ifengyu/intercom/ui/c/g/a;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/g/a;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/g/a;->c()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/ui/c/g/d;->k(Ljava/util/List;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->infoWindowEnable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->p:Lcom/amap/api/maps/model/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setObject(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->startAnimation()Z

    .line 8
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/c/g/a;->e(Lcom/amap/api/maps/model/Marker;)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private j()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->n:Z

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1}, Lcom/amap/api/maps/AMap;->getProjection()Lcom/amap/api/maps/Projection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/Projection;->getVisibleRegion()Lcom/amap/api/maps/model/VisibleRegion;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/maps/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/ui/c/g/c;

    .line 5
    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/c/g/d;->n:Z

    if-eqz v3, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/c/g/c;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/c/g/d;->d:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lcom/ifengyu/intercom/ui/c/g/d;->l(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Lcom/ifengyu/intercom/ui/c/g/a;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v4, v2}, Lcom/ifengyu/intercom/ui/c/g/a;->a(Lcom/ifengyu/intercom/ui/c/g/c;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v4, Lcom/ifengyu/intercom/ui/c/g/a;

    invoke-direct {v4, v3}, Lcom/ifengyu/intercom/ui/c/g/a;-><init>(Lcom/amap/api/maps/model/LatLng;)V

    .line 10
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/c/g/d;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v4, v2}, Lcom/ifengyu/intercom/ui/c/g/a;->a(Lcom/ifengyu/intercom/ui/c/g/c;)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/c/g/d;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 15
    iput v0, v2, Landroid/os/Message;->what:I

    .line 16
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->n:Z

    if-eqz v0, :cond_3

    return-void

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private k(Ljava/util/List;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/c/g/c;",
            ">;)",
            "Lcom/amap/api/maps/model/BitmapDescriptor;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "drawable://2131231177"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42480000    # 50.0f

    if-ne v0, v2, :cond_3

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->b:Landroid/content/Context;

    const v2, 0x7f0c010c

    invoke-static {v0, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0902d9

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/c/g/c;

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/g/c;->a()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    new-instance v6, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v7

    float-to-int v7, v7

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-virtual {v4, v3, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 7
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    new-instance v4, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v4, v6, v5}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/g/c;->a()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/c/g/d;->n(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v3, :cond_1

    .line 9
    invoke-static {v3}, Lcom/ifengyu/intercom/p/b0;->f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 10
    :cond_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 11
    :cond_2
    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p1

    goto/16 :goto_2

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->b:Landroid/content/Context;

    const v6, 0x7f0c010a

    invoke-static {v0, v6, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v6, 0x7f0902cb

    .line 13
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0902ca

    .line 14
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f110303

    new-array v9, v2, [Ljava/lang/Object;

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v8, v9}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v8, v4

    const/4 v9, 0x0

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ifengyu/intercom/ui/c/g/c;

    .line 17
    invoke-virtual {v10}, Lcom/ifengyu/intercom/ui/c/g/c;->a()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v11

    if-le v11, v9, :cond_5

    move-object v8, v10

    move v9, v11

    .line 18
    :cond_5
    invoke-direct {p0, v11}, Lcom/ifengyu/intercom/ui/c/g/d;->n(I)Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    if-eqz v8, :cond_7

    .line 19
    invoke-virtual {v8}, Lcom/ifengyu/intercom/ui/c/g/c;->a()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    :cond_7
    if-eqz v4, :cond_a

    .line 20
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v8

    float-to-int v8, v8

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v3, v8, v9}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-virtual {p1, v4, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_8

    .line 21
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-virtual {p1, v1, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_8
    if-eqz v2, :cond_9

    if-eqz p1, :cond_9

    .line 22
    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 23
    :cond_9
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_a
    if-eqz v2, :cond_b

    .line 24
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080197

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 25
    :cond_b
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080196

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    :goto_1
    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private l(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Lcom/ifengyu/intercom/ui/c/g/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/c/g/a;",
            ">;)",
            "Lcom/ifengyu/intercom/ui/c/g/a;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/c/g/a;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/c/g/a;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    .line 3
    invoke-static {p1, v1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v1

    float-to-double v1, v1

    .line 4
    iget-wide v3, p0, Lcom/ifengyu/intercom/ui/c/g/d;->h:D

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/c/g/d$a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/c/g/d$a;-><init>(Lcom/ifengyu/intercom/ui/c/g/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->k:Landroid/os/Handler;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/c/g/d$c;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/c/g/d$c;-><init>(Lcom/ifengyu/intercom/ui/c/g/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->l:Landroid/os/Handler;

    return-void
.end method

.method private n(I)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    int-to-long v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x384

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private r(Lcom/ifengyu/intercom/ui/c/g/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/g/a;->d()Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/g/a;->c()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/c/g/d;->k(Ljava/util/List;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    return-void
.end method


# virtual methods
.method public f(Lcom/ifengyu/intercom/ui/c/g/c;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->l:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->n:Z

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public o()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->n:Z

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/Marker;

    .line 7
    invoke-virtual {v1}, Lcom/amap/api/maps/model/Marker;->remove()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public onCameraChange(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 0

    return-void
.end method

.method public onCameraChangeFinish(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    iget v1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->o:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getScalePerPixel()F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->m:F

    .line 3
    iget v1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->e:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->h:D

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/c/g/d;->i()V

    .line 5
    iget p1, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    iput p1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->o:F

    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->f:Lcom/ifengyu/intercom/ui/c/g/b;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/c/g/a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/c/g/d;->f:Lcom/ifengyu/intercom/ui/c/g/b;

    invoke-interface {v2, p1, v0}, Lcom/ifengyu/intercom/ui/c/g/b;->s1(Lcom/amap/api/maps/model/Marker;Lcom/ifengyu/intercom/ui/c/g/a;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/Marker;

    .line 2
    invoke-virtual {v1}, Lcom/amap/api/maps/model/Marker;->remove()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public q(Lcom/ifengyu/intercom/ui/c/g/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/c/g/d;->f:Lcom/ifengyu/intercom/ui/c/g/b;

    return-void
.end method
