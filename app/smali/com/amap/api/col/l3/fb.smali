.class final Lcom/amap/api/col/l3/fb;
.super Landroid/widget/LinearLayout;
.source "ZoomControllerView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/amap/api/col/l3/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->o:Lcom/amap/api/col/l3/u;

    :try_start_0
    const-string p2, "zoomin_selected.png"

    .line 3
    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->g:Landroid/graphics/Bitmap;

    .line 4
    sget v0, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    const-string p2, "zoomin_unselected.png"

    .line 5
    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->h:Landroid/graphics/Bitmap;

    .line 6
    sget v0, Lcom/amap/api/col/l3/p;->a:F

    .line 7
    invoke-static {p2, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->b:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_selected.png"

    .line 8
    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->i:Landroid/graphics/Bitmap;

    .line 9
    sget v0, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->c:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_unselected.png"

    .line 10
    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->j:Landroid/graphics/Bitmap;

    .line 11
    sget v0, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->d:Landroid/graphics/Bitmap;

    const-string p2, "zoomin_pressed.png"

    .line 12
    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->k:Landroid/graphics/Bitmap;

    .line 13
    sget v0, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->e:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_pressed.png"

    .line 14
    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->l:Landroid/graphics/Bitmap;

    .line 15
    sget v0, Lcom/amap/api/col/l3/p;->a:F

    .line 16
    invoke-static {p2, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->f:Landroid/graphics/Bitmap;

    .line 17
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    .line 18
    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 19
    iget-object p2, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 20
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    .line 21
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 22
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 23
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/col/l3/fb$1;

    invoke-direct {p2, p0}, Lcom/amap/api/col/l3/fb$1;-><init>(Lcom/amap/api/col/l3/fb;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 24
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/col/l3/fb$2;

    invoke-direct {p2, p0}, Lcom/amap/api/col/l3/fb$2;-><init>(Lcom/amap/api/col/l3/fb;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 25
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    const/4 p2, -0x2

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 26
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 28
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 29
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "ZoomControllerView"

    const-string v0, "create"

    .line 30
    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/fb;)Lcom/amap/api/col/l3/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->o:Lcom/amap/api/col/l3/u;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/fb;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3/fb;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/fb;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3/fb;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3/fb;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3/fb;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    .line 10
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->b:Landroid/graphics/Bitmap;

    .line 11
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->c:Landroid/graphics/Bitmap;

    .line 12
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->d:Landroid/graphics/Bitmap;

    .line 13
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->e:Landroid/graphics/Bitmap;

    .line 14
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->f:Landroid/graphics/Bitmap;

    .line 15
    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 17
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->g:Landroid/graphics/Bitmap;

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 20
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->h:Landroid/graphics/Bitmap;

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 22
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 23
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->i:Landroid/graphics/Bitmap;

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->j:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 25
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 26
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->g:Landroid/graphics/Bitmap;

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->k:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 29
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->k:Landroid/graphics/Bitmap;

    .line 30
    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->l:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->l:Landroid/graphics/Bitmap;

    .line 33
    :cond_5
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "ZoomControllerView"

    const-string v2, "destory"

    .line 35
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(F)V
    .locals 2

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->o:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMaxZoomLevel()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->o:Lcom/amap/api/col/l3/u;

    .line 38
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 39
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->o:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 42
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->o:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMaxZoomLevel()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "ZoomControllerView"

    const-string v1, "setZoomBitmap"

    .line 47
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 49
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/ey$a;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x10

    .line 50
    iput p1, v0, Lcom/amap/api/col/l3/ey$a;->d:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 p1, 0x50

    .line 51
    iput p1, v0, Lcom/amap/api/col/l3/ey$a;->d:I

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "ZoomControllerView"

    const-string v1, "setZoomPosition"

    .line 53
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
