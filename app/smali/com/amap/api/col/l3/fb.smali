.class final Lcom/amap/api/col/l3/fb;
.super Landroid/widget/LinearLayout;


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

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->o:Lcom/amap/api/col/l3/u;

    :try_start_0
    const-string p2, "zoomin_selected.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->g:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    const-string p2, "zoomin_unselected.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->h:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->b:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_selected.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->i:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->c:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_unselected.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->j:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->d:Landroid/graphics/Bitmap;

    const-string p2, "zoomin_pressed.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->k:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->e:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_pressed.png"

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->l:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p2, v0}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->f:Landroid/graphics/Bitmap;

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/col/l3/fb$1;

    invoke-direct {p2, p0}, Lcom/amap/api/col/l3/fb$1;-><init>(Lcom/amap/api/col/l3/fb;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/col/l3/fb$2;

    invoke-direct {p2, p0}, Lcom/amap/api/col/l3/fb$2;-><init>(Lcom/amap/api/col/l3/fb;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    const/4 p2, -0x2

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "ZoomControllerView"

    const-string v0, "create"

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/fb;)Lcom/amap/api/col/l3/u;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->o:Lcom/amap/api/col/l3/u;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/fb;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3/fb;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/fb;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3/fb;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3/fb;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3/fb;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/fb;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->c:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->e:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->g:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->h:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->i:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->j:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->g:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->k:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->k:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->l:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3/fb;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->l:Landroid/graphics/Bitmap;

    :cond_5
    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "ZoomControllerView"

    const-string v2, "destory"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(F)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->o:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMaxZoomLevel()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->o:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->o:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->o:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMaxZoomLevel()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/fb;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/l3/fb;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

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

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/ey$a;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x10

    iput p1, v0, Lcom/amap/api/col/l3/ey$a;->d:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 p1, 0x50

    iput p1, v0, Lcom/amap/api/col/l3/ey$a;->d:I

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

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
