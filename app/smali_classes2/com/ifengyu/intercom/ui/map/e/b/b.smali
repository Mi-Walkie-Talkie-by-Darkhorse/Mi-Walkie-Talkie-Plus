.class public Lcom/ifengyu/intercom/ui/map/e/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/osmdroid/events/MapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/map/e/b/b$e;
    }
.end annotation


# instance fields
.field private final a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

.field private b:Lorg/osmdroid/views/MapView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/map/e/b/a;",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/intercom/ui/map/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/Paint;

.field private i:Lcom/ifengyu/intercom/ui/map/e/b/a;

.field private j:Lcom/ifengyu/intercom/ui/map/e/b/b$e;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/map/f/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/map/f/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;ILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->f:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/ifengyu/intercom/ui/map/e/b/b$c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/map/e/b/b$c;-><init>(Lcom/ifengyu/intercom/ui/map/e/b/b;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->m:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->e:Landroid/content/Context;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->b:Lorg/osmdroid/views/MapView;

    int-to-float p1, p2

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->d:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->c:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->g:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->l:Ljava/util/ArrayList;

    new-instance p1, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->l:Ljava/util/ArrayList;

    new-instance p3, Lcom/ifengyu/intercom/ui/map/e/b/b$a;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/map/e/b/b$a;-><init>(Lcom/ifengyu/intercom/ui/map/e/b/b;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->e:Landroid/content/Context;

    invoke-direct {p1, p2, p3, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1, p0}, Lorg/osmdroid/views/MapView;->setMapListener(Lorg/osmdroid/events/MapListener;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->h:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->h:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->h:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(DDDD)D
    .locals 0

    sub-double/2addr p1, p5

    mul-double p1, p1, p1

    sub-double/2addr p3, p7

    mul-double p3, p3, p3

    add-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private a(Landroid/graphics/Point;)Lcom/ifengyu/intercom/ui/map/e/b/a;
    .locals 13

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/map/e/b/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->b()Landroid/graphics/Point;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-double v5, v3

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-double v7, v3

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-double v9, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v11, v2

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(DDDD)D

    move-result-wide v2

    const-wide v4, 0x4052c00000000000L    # 75.0

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/e/b/b;Lcom/ifengyu/intercom/ui/map/e/b/a;)Lcom/ifengyu/intercom/ui/map/e/b/a;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->i:Lcom/ifengyu/intercom/ui/map/e/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/e/b/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->k:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/e/b/b;)Lorg/osmdroid/views/MapView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->b:Lorg/osmdroid/views/MapView;

    return-object p0
.end method

.method private a(Lcom/ifengyu/intercom/ui/map/e/b/a;)V
    .locals 9

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->e()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->b(Lcom/ifengyu/intercom/ui/map/e/b/a;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->a()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/map/f/a/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0}, Lcom/ifengyu/intercom/ui/map/f/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/ui/map/f/a/f;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/f/a/f;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v3}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v3

    int-to-long v7, v3

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x384

    cmp-long v3, v5, v7

    if-gez v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    const/4 v3, 0x0

    if-ne v0, v4, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/ui/map/f/a/f;

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;ILcom/ifengyu/intercom/ui/map/f/a/f;Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/map/f/a/f;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;ILcom/ifengyu/intercom/ui/map/f/a/f;Z)V

    :goto_1
    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/ui/map/f/a/f;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v0, v2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z

    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/ui/map/e/b/a;->b(Lcom/ifengyu/intercom/ui/map/f/a/f;)V

    :goto_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/f/a/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v1, v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->removeItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z

    goto :goto_3

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/e/b/b;Lorg/osmdroid/views/MapView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/ui/map/f/a/f;ILcom/ifengyu/intercom/ui/map/f/a/f;Z)V
    .locals 10

    invoke-virtual {p3}, Lcom/ifengyu/intercom/ui/map/f/a/f;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    if-eqz p3, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->e:Landroid/content/Context;

    const v1, 0x7f0c00ce

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f090256

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object p3

    const-string v4, "null"

    const-string v5, ""

    if-eqz p3, :cond_0

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    :cond_0
    const v6, 0x7f08014e

    const/4 v7, 0x1

    const v8, 0x7f110273

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v9

    invoke-static {v8, v2}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p2

    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v5, v4}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-virtual {p2, p3, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_6

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->e:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p2}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p4, :cond_4

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v8, v1}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/map/e/b/b$d;

    invoke-direct {v1, p0, p4, p2, p1}, Lcom/ifengyu/intercom/ui/map/e/b/b$d;-><init>(Lcom/ifengyu/intercom/ui/map/e/b/b;ZILcom/ifengyu/intercom/ui/map/f/a/f;)V

    invoke-virtual {v0, p3, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/ui/map/f/a/f;Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V
    .locals 7

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->g:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->e:Landroid/content/Context;

    const v1, 0x7f0c00d1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090266

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    const-string v5, ""

    if-eqz v3, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v3, v5, v4}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-virtual {v2, p2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_2

    invoke-static {p2}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p2, 0x8

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p2

    new-instance v0, Lcom/ifengyu/intercom/ui/map/e/b/b$b;

    invoke-direct {v0, p0, p3, p1}, Lcom/ifengyu/intercom/ui/map/e/b/b$b;-><init>(Lcom/ifengyu/intercom/ui/map/e/b/b;ZLcom/ifengyu/intercom/ui/map/f/a/f;)V

    invoke-virtual {p2, v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Lorg/osmdroid/views/MapView;)V
    .locals 9

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->e:Landroid/content/Context;

    const v1, 0x7f0c00c1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v2, Lcom/ifengyu/intercom/ui/map/e/b/b$e;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/map/e/b/b$e;-><init>(Lcom/ifengyu/intercom/ui/map/e/b/b;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->j:Lcom/ifengyu/intercom/ui/map/e/b/b$e;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->m:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->i:Lcom/ifengyu/intercom/ui/map/e/b/a;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/map/e/b/a;->e()I

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v5, 0x2

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v5, :cond_0

    div-float/2addr v2, v4

    mul-float v2, v2, v6

    :cond_0
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v7

    float-to-int v7, v7

    invoke-static {v2}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v3, v0, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    div-float/2addr v1, v6

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    div-int/2addr v1, v5

    int-to-float v1, v1

    invoke-static {v2}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->d:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v3, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

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

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/e/b/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->e:Landroid/content/Context;

    return-object p0
.end method

.method private b(Lcom/ifengyu/intercom/ui/map/e/b/a;)V
    .locals 11

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->c()Lcom/ifengyu/intercom/ui/map/f/a/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/f/a/f;

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/intercom/ui/map/f/a/f;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/ui/map/f/a/f;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v4}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v4

    int-to-long v9, v4

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x384

    cmp-long v4, v7, v9

    if-gez v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_0
    if-ne v3, v6, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->e()I

    move-result p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/map/f/a/f;

    invoke-direct {p0, v0, p1, v1, v5}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;ILcom/ifengyu/intercom/ui/map/f/a/f;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->e()I

    move-result p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/map/f/a/f;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;ILcom/ifengyu/intercom/ui/map/f/a/f;Z)V

    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/e/b/b;)Lcom/ifengyu/intercom/ui/map/e/b/a;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->i:Lcom/ifengyu/intercom/ui/map/e/b/a;

    return-object p0
.end method

.method private c(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/ui/map/f/a/f;
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/f;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->d(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/ifengyu/intercom/ui/map/f/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/map/f/a/f;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/ui/map/d/a;

    invoke-direct {v3, p1, v0}, Lcom/ifengyu/intercom/ui/map/d/a;-><init>(Lcom/ifengyu/intercom/bean/BeanUserLocation;Lcom/ifengyu/intercom/ui/map/f/a/f;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V

    :goto_0
    return-object v0
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/map/e/b/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->removeAllItems()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/map/d/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/d/a;->a()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/ui/map/f/a/f;

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/map/e/b/b;->d(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4}, Lcom/ifengyu/intercom/ui/map/f/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v3, v2}, Lcom/ifengyu/intercom/ui/map/f/a/f;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v4}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V

    :goto_2
    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/map/d/a;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;)V

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/map/e/b/b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method private d(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lorg/osmdroid/util/GeoPoint;
    .locals 5

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->c(Lcom/ifengyu/intercom/bean/BeanUserLocation;)Lcom/ifengyu/intercom/ui/map/f/a/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/map/f/a/f;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Landroid/graphics/Point;)Lcom/ifengyu/intercom/ui/map/e/b/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;)V

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/e/b/a;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/ifengyu/intercom/ui/map/e/b/a;

    invoke-direct {v2, v1, v0}, Lcom/ifengyu/intercom/ui/map/e/b/a;-><init>(Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v2, p1}, Lcom/ifengyu/intercom/ui/map/e/b/a;->a(Lcom/ifengyu/intercom/ui/map/f/a/f;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->a:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOrUpdateSingleFriendIcon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OsmClusterOverlayManager"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/d/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/map/d/a;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/e/b/b;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    :goto_0
    return-void
.end method

.method public onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onZoom(Lorg/osmdroid/events/ZoomEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->b:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/e/b/b;->c()V

    iput p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b;->f:F

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
