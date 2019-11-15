.class public Lcom/ifengyu/intercom/ui/map/c/b/b;
.super Ljava/lang/Object;
.source "OsmClusterOverlayManager.java"

# interfaces
.implements Lorg/osmdroid/events/MapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/map/c/b/b$a;
    }
.end annotation


# instance fields
.field private final a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

.field private b:Lorg/osmdroid/views/MapView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/map/c/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/content/Context;

.field private f:F

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/ui/map/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/graphics/Paint;

.field private j:Lcom/ifengyu/intercom/ui/map/c/b/a;

.field private k:Lcom/ifengyu/intercom/ui/map/c/b/b$a;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/ui/map/d/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/ui/map/d/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;ILandroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->f:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->h:Ljava/util/Map;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/c/b/b$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/map/c/b/b$3;-><init>(Lcom/ifengyu/intercom/ui/map/c/b/b;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->n:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->e:Landroid/content/Context;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->b:Lorg/osmdroid/views/MapView;

    int-to-float v0, p2

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->c:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->m:Ljava/util/ArrayList;

    new-instance v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->m:Ljava/util/ArrayList;

    new-instance v2, Lcom/ifengyu/intercom/ui/map/c/b/b$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/map/c/b/b$1;-><init>(Lcom/ifengyu/intercom/ui/map/c/b/b;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p0}, Lorg/osmdroid/views/MapView;->setMapListener(Lorg/osmdroid/events/MapListener;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->i:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(DDDD)D
    .locals 7

    sub-double v0, p1, p5

    sub-double v2, p1, p5

    mul-double/2addr v0, v2

    sub-double v2, p3, p7

    sub-double v4, p3, p7

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private a(Landroid/graphics/Point;)Lcom/ifengyu/intercom/ui/map/c/b/a;
    .locals 11

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/c/b/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/c/b/a;->b()Landroid/graphics/Point;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    iget v4, p1, Landroid/graphics/Point;->y:I

    int-to-double v4, v4

    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-double v6, v6

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v8, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(DDDD)D

    move-result-wide v2

    const-wide v4, 0x4052c00000000000L    # 75.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/c/b/b;Lcom/ifengyu/intercom/ui/map/c/b/a;)Lcom/ifengyu/intercom/ui/map/c/b/a;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->j:Lcom/ifengyu/intercom/ui/map/c/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/c/b/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->l:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/c/b/b;)Lorg/osmdroid/views/MapView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->b:Lorg/osmdroid/views/MapView;

    return-object v0
.end method

.method private a(Lcom/ifengyu/intercom/ui/map/c/b/a;)V
    .locals 10

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->a()I

    move-result v0

    if-gt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->b(Lcom/ifengyu/intercom/ui/map/c/b/a;)V

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/d/a/f;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v2, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->removeItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->c()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    new-instance v3, Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-direct {v3, v4, v4, v0}, Lcom/ifengyu/intercom/ui/map/d/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v0

    int-to-long v8, v0

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x384

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    move v0, v1

    :goto_2
    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;ILcom/ifengyu/intercom/ui/map/d/a/f;Z)V

    :goto_3
    invoke-virtual {v3, p1}, Lcom/ifengyu/intercom/ui/map/d/a/f;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z

    invoke-virtual {p1, v3}, Lcom/ifengyu/intercom/ui/map/c/b/a;->b(Lcom/ifengyu/intercom/ui/map/d/a/f;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-direct {p0, v3, v1, v0, v5}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;ILcom/ifengyu/intercom/ui/map/d/a/f;Z)V

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/c/b/b;Lorg/osmdroid/views/MapView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/ui/map/d/a/f;ILcom/ifengyu/intercom/ui/map/d/a/f;Z)V
    .locals 11

    const v10, 0x7f090175

    const v9, 0x7f020131

    const/4 v8, 0x1

    const/high16 v7, 0x42480000    # 50.0f

    const/4 v6, 0x0

    invoke-virtual {p3}, Lcom/ifengyu/intercom/ui/map/d/a/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->e:Landroid/content/Context;

    const v2, 0x7f0400ca

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f1002ce

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f1002cf

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v10, v0}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/map/d/a/f;->setMarker(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz v4, :cond_4

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "null"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/map/c/b/b$4;

    invoke-direct {v1, p0, p4, p2, p1}, Lcom/ifengyu/intercom/ui/map/c/b/b$4;-><init>(Lcom/ifengyu/intercom/ui/map/c/b/b;ZILcom/ifengyu/intercom/ui/map/d/a/f;)V

    invoke-virtual {v0, v4, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    invoke-static {v10, v0}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v5, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-static {v7}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v7}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_6

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/map/d/a/f;->setMarker(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Lcom/ifengyu/intercom/ui/map/d/a/f;Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V
    .locals 7

    const/4 v1, 0x0

    const/high16 v6, 0x42480000    # 50.0f

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->g:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->e:Landroid/content/Context;

    const v2, 0x7f0400cd

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f1002d8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/map/d/a/f;->setMarker(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v3, :cond_3

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/map/c/b/b$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/ifengyu/intercom/ui/map/c/b/b$2;-><init>(Lcom/ifengyu/intercom/ui/map/c/b/b;ZLcom/ifengyu/intercom/ui/map/d/a/f;)V

    invoke-virtual {v0, v3, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-static {v6}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v6}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_5

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/map/d/a/f;->setMarker(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Lorg/osmdroid/views/MapView;)V
    .locals 9

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->e:Landroid/content/Context;

    const v1, 0x7f0400be

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f1002c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/ifengyu/intercom/ui/map/c/b/b$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/map/c/b/b$a;-><init>(Lcom/ifengyu/intercom/ui/map/c/b/b;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->k:Lcom/ifengyu/intercom/ui/map/c/b/b$a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->k:Lcom/ifengyu/intercom/ui/map/c/b/b$a;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->n:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->j:Lcom/ifengyu/intercom/ui/map/c/b/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/c/b/a;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    div-float/2addr v0, v8

    mul-float/2addr v0, v6

    :cond_0
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    div-float/2addr v2, v6

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v0

    add-float/2addr v0, v2

    iget v2, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->d:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-static {v8}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual {v3, p1, v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

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

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/c/b/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method private b(Lcom/ifengyu/intercom/ui/map/c/b/a;)V
    .locals 11

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->d()Lcom/ifengyu/intercom/ui/map/d/a/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->e()Ljava/util/List;

    move-result-object v4

    if-nez v0, :cond_3

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/d/a/f;

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v0

    int-to-long v8, v0

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x384

    cmp-long v0, v6, v8

    if-gez v0, :cond_0

    move v0, v2

    :goto_1
    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->a()I

    move-result v3

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;ILcom/ifengyu/intercom/ui/map/d/a/f;Z)V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->a()I

    move-result v2

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-direct {p0, v1, v2, v0, v10}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;ILcom/ifengyu/intercom/ui/map/d/a/f;Z)V

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/c/b/b;)Lcom/ifengyu/intercom/ui/map/c/b/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->j:Lcom/ifengyu/intercom/ui/map/c/b/a;

    return-object v0
.end method

.method private c(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/ui/map/d/a/f;
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->d(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-direct {v0, v2, v2, v1}, Lcom/ifengyu/intercom/ui/map/d/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/map/d/a/f;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/ui/map/b/a;

    invoke-direct {v3, p1, v0}, Lcom/ifengyu/intercom/ui/map/b/a;-><init>(Lcom/ifengyu/intercom/bean/BeanUserLocation;Lcom/ifengyu/intercom/ui/map/d/a/f;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V

    goto :goto_0
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/c/b/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/c/b/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->removeAllItems()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->g:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/b/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b/a;->a()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/map/c/b/b;->d(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    invoke-direct {v3, v5, v5, v4}, Lcom/ifengyu/intercom/ui/map/d/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v3, v2}, Lcom/ifengyu/intercom/ui/map/d/a/f;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v4}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V

    :goto_2
    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/map/b/a;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;)V

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/map/c/b/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lorg/osmdroid/util/GeoPoint;
    .locals 6

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 3

    const-string v0, "OsmClusterOverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrUpdateSingleFriendIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/b/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/map/b/a;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->b(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    goto :goto_0
.end method

.method public a(Lcom/ifengyu/intercom/ui/map/d/a/f;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/d/a/f;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Landroid/graphics/Point;)Lcom/ifengyu/intercom/ui/map/c/b/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;)V

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/c/b/a;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/ifengyu/intercom/ui/map/c/b/a;

    invoke-direct {v2, v1, v0}, Lcom/ifengyu/intercom/ui/map/c/b/a;-><init>(Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->c(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/ui/map/d/a/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/d/a/f;)V

    return-void
.end method

.method public onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onZoom(Lorg/osmdroid/events/ZoomEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->c()V

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b;->f:F

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
