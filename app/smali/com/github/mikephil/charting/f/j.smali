.class public Lcom/github/mikephil/charting/f/j;
.super Lcom/github/mikephil/charting/f/k;
.source "LineChartRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/f/j$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/github/mikephil/charting/e/a/g;

.field protected b:Landroid/graphics/Paint;

.field protected c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroid/graphics/Canvas;

.field protected e:Landroid/graphics/Bitmap$Config;

.field protected l:Landroid/graphics/Path;

.field protected m:Landroid/graphics/Path;

.field protected n:Landroid/graphics/Path;

.field private p:[F

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/github/mikephil/charting/e/b/e;",
            "Lcom/github/mikephil/charting/f/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private r:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/e/a/g;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/f/k;-><init>(Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/github/mikephil/charting/f/j;->e:Landroid/graphics/Bitmap$Config;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/j;->l:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/j;->m:Landroid/graphics/Path;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/j;->n:Landroid/graphics/Path;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/j;->q:Ljava/util/HashMap;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/j;->r:[F

    iput-object p1, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/j;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(Lcom/github/mikephil/charting/e/b/f;IILandroid/graphics/Path;)V
    .locals 7

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/f;->J()Lcom/github/mikephil/charting/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-interface {v0, p1, v1}, Lcom/github/mikephil/charting/c/e;->a(Lcom/github/mikephil/charting/e/b/f;Lcom/github/mikephil/charting/e/a/g;)F

    move-result v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v5

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/f;->y()Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->b:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    invoke-interface {p1, p2}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v3

    invoke-virtual {p4, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v3

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p4, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, p2, 0x1

    move-object v3, v2

    :goto_1
    if-gt v1, p3, :cond_2

    invoke-interface {p1, v1}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v6

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v2

    mul-float/2addr v2, v5

    invoke-virtual {p4, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v2

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v6

    mul-float/2addr v6, v5

    invoke-virtual {p4, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v0

    invoke-virtual {p4, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->n()F

    move-result v0

    float-to-int v1, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    if-lez v1, :cond_4

    if-lez v2, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->e:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/j;->c:Ljava/lang/ref/WeakReference;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/f/j;->d:Landroid/graphics/Canvas;

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/g;->getLineData()Lcom/github/mikephil/charting/data/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/j;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/f;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/f;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/f/j;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/f;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/f;)V
    .locals 2

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->s()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->N()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->D()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    sget-object v0, Lcom/github/mikephil/charting/f/j$1;->a:[I

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->y()Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/f/j;->b(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/f;)V

    :goto_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/f/j;->b(Lcom/github/mikephil/charting/e/b/f;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/f/j;->a(Lcom/github/mikephil/charting/e/b/f;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/f;Landroid/graphics/Path;Lcom/github/mikephil/charting/g/g;Lcom/github/mikephil/charting/f/c$a;)V
    .locals 3

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->J()Lcom/github/mikephil/charting/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-interface {v0, p2, v1}, Lcom/github/mikephil/charting/c/e;->a(Lcom/github/mikephil/charting/e/b/f;Lcom/github/mikephil/charting/e/a/g;)F

    move-result v0

    iget v1, p5, Lcom/github/mikephil/charting/f/c$a;->a:I

    iget v2, p5, Lcom/github/mikephil/charting/f/c$a;->c:I

    add-int/2addr v1, v2

    invoke-interface {p2, v1}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p5, Lcom/github/mikephil/charting/f/c$a;->a:I

    invoke-interface {p2, v1}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    invoke-virtual {p4, p3}, Lcom/github/mikephil/charting/g/g;->a(Landroid/graphics/Path;)V

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->L()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3, v0}, Lcom/github/mikephil/charting/f/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->K()I

    move-result v0

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->M()I

    move-result v1

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/github/mikephil/charting/f/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/f;Lcom/github/mikephil/charting/g/g;Lcom/github/mikephil/charting/f/c$a;)V
    .locals 8

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->n:Landroid/graphics/Path;

    iget v4, p4, Lcom/github/mikephil/charting/f/c$a;->a:I

    iget v0, p4, Lcom/github/mikephil/charting/f/c$a;->c:I

    iget v1, p4, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/2addr v1, v0

    const/4 v0, 0x0

    move v2, v0

    :cond_0
    mul-int/lit16 v0, v2, 0x80

    add-int v5, v4, v0

    add-int/lit16 v0, v5, 0x80

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    if-gt v5, v0, :cond_2

    invoke-direct {p0, p2, v5, v0, v3}, Lcom/github/mikephil/charting/f/j;->a(Lcom/github/mikephil/charting/e/b/f;IILandroid/graphics/Path;)V

    invoke-virtual {p3, v3}, Lcom/github/mikephil/charting/g/g;->a(Landroid/graphics/Path;)V

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->L()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, p1, v3, v6}, Lcom/github/mikephil/charting/f/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-le v5, v0, :cond_0

    return-void

    :cond_3
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->K()I

    move-result v6

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->M()I

    move-result v7

    invoke-virtual {p0, p1, v3, v6, v7}, Lcom/github/mikephil/charting/f/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/d/d;)V
    .locals 10

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/g;->getLineData()Lcom/github/mikephil/charting/data/j;

    move-result-object v2

    array-length v3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, p2, v1

    invoke-virtual {v4}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/j;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/f;->f()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/github/mikephil/charting/d/d;->a()F

    move-result v5

    invoke-virtual {v4}, Lcom/github/mikephil/charting/d/d;->b()F

    move-result v6

    invoke-interface {v0, v5, v6}, Lcom/github/mikephil/charting/e/b/f;->b(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/github/mikephil/charting/f/j;->a(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/e/b/b;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/f;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/e/a/g;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v7

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v5

    iget-object v8, p0, Lcom/github/mikephil/charting/f/j;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v8

    mul-float/2addr v5, v8

    invoke-virtual {v6, v7, v5}, Lcom/github/mikephil/charting/g/g;->b(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v5

    iget-wide v6, v5, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v6, v6

    iget-wide v8, v5, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v7, v8

    invoke-virtual {v4, v6, v7}, Lcom/github/mikephil/charting/d/d;->a(FF)V

    iget-wide v6, v5, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v4, v6

    iget-wide v6, v5, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v5, v6

    invoke-virtual {p0, p1, v4, v5, v0}, Lcom/github/mikephil/charting/f/j;->a(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/e/b/h;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected a(Lcom/github/mikephil/charting/e/b/f;)V
    .locals 11

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v9

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/f;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/e/a/g;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v10

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-virtual {v0, v1, p1}, Lcom/github/mikephil/charting/f/c$a;->a(Lcom/github/mikephil/charting/e/a/b;Lcom/github/mikephil/charting/e/b/b;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v0, v0, Lcom/github/mikephil/charting/f/c$a;->c:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v0, v0, Lcom/github/mikephil/charting/f/c$a;->a:I

    invoke-interface {p1, v0}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->l:Landroid/graphics/Path;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v3

    mul-float/2addr v3, v9

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v0, v0, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/lit8 v0, v0, 0x1

    move v7, v0

    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v0, v0, Lcom/github/mikephil/charting/f/c$a;->c:I

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v1, v1, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/2addr v0, v1

    if-gt v7, v0, :cond_0

    invoke-interface {p1, v7}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v0

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->l:Landroid/graphics/Path;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v2

    mul-float/2addr v2, v9

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v3

    mul-float v4, v3, v9

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v5

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v3

    mul-float v6, v3, v9

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move-object v2, v8

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/f;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->m:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->m:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->l:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->d:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->m:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/f/j;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/f;Landroid/graphics/Path;Lcom/github/mikephil/charting/g/g;Lcom/github/mikephil/charting/f/c$a;)V

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->l:Landroid/graphics/Path;

    invoke-virtual {v10, v0}, Lcom/github/mikephil/charting/g/g;->a(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->d:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->l:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->d:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->d:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/f/j;->d:Landroid/graphics/Canvas;

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v1, p0, Lcom/github/mikephil/charting/f/j;->c:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/f/j;->a(Lcom/github/mikephil/charting/e/a/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/g;->getLineData()Lcom/github/mikephil/charting/data/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/j;->i()Ljava/util/List;

    move-result-object v12

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/e/b/f;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/f/j;->a(Lcom/github/mikephil/charting/e/b/e;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/f/j;->b(Lcom/github/mikephil/charting/e/b/e;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/f;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/e/a/g;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v0

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/f;->A()F

    move-result v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/f;->E()Z

    move-result v3

    if-nez v3, :cond_5

    div-int/lit8 v2, v2, 0x2

    move v11, v2

    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-virtual {v2, v3, v1}, Lcom/github/mikephil/charting/f/c$a;->a(Lcom/github/mikephil/charting/e/a/b;Lcom/github/mikephil/charting/e/b/b;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/f/j;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v4, v4, Lcom/github/mikephil/charting/f/c$a;->a:I

    iget-object v5, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v5, v5, Lcom/github/mikephil/charting/f/c$a;->b:I

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/g/g;->a(Lcom/github/mikephil/charting/e/b/f;FFII)[F

    move-result-object v13

    const/4 v0, 0x0

    :goto_2
    array-length v2, v13

    if-ge v0, v2, :cond_0

    aget v8, v13, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, v13, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3, v8}, Lcom/github/mikephil/charting/g/j;->h(F)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3, v8}, Lcom/github/mikephil/charting/g/j;->g(F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/g/j;->f(F)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    div-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v4, v4, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/f;->g()Lcom/github/mikephil/charting/c/f;

    move-result-object v4

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v5

    int-to-float v3, v11

    sub-float v9, v2, v3

    div-int/lit8 v2, v0, 0x2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/e/b/f;->c(I)I

    move-result v10

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/github/mikephil/charting/f/j;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_3

    :cond_4
    return-void

    :cond_5
    move v11, v2

    goto :goto_1
.end method

.method protected b(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/f;)V
    .locals 12

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->s()I

    move-result v2

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->F()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/github/mikephil/charting/e/a/g;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v6

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v7

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->C()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->d:Landroid/graphics/Canvas;

    :goto_1
    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-virtual {v3, v4, p2}, Lcom/github/mikephil/charting/f/c$a;->a(Lcom/github/mikephil/charting/e/a/b;Lcom/github/mikephil/charting/e/b/b;)V

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->O()Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    invoke-virtual {p0, p1, p2, v6, v3}, Lcom/github/mikephil/charting/f/j;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/f;Lcom/github/mikephil/charting/g/g;Lcom/github/mikephil/charting/f/c$a;)V

    :cond_0
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_b

    iget-object v2, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    array-length v2, v2

    mul-int/lit8 v3, v0, 0x2

    if-gt v2, v3, :cond_1

    mul-int/lit8 v2, v0, 0x4

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v2, v2, Lcom/github/mikephil/charting/f/c$a;->a:I

    :goto_2
    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v3, v3, Lcom/github/mikephil/charting/f/c$a;->c:I

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v4, v4, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_6

    invoke-interface {p2, v2}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    move-object v1, p1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x0

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v9

    aput v9, v4, v8

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v3

    mul-float/2addr v3, v7

    aput v3, v4, v8

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v3, v3, Lcom/github/mikephil/charting/f/c$a;->b:I

    if-ge v2, v3, :cond_a

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v3}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void

    :cond_7
    if-eqz v5, :cond_9

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x2

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v9

    aput v9, v4, v8

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    aput v9, v4, v8

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x6

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v9

    aput v9, v4, v8

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x7

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v3

    mul-float/2addr v3, v7

    aput v3, v4, v8

    :goto_5
    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/g/g;->a([F)V

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x0

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/g/j;->h(F)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x2

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/g/j;->g(F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x1

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/g/j;->i(F)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x3

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/g/j;->j(F)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_8
    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-interface {p2, v2}, Lcom/github/mikephil/charting/e/b/f;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v4, 0x0

    mul-int/lit8 v8, v0, 0x2

    iget-object v9, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_9
    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x2

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v9

    aput v9, v4, v8

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v8, 0x3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v3

    mul-float/2addr v3, v7

    aput v3, v4, v8

    goto :goto_5

    :cond_a
    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v4, 0x2

    iget-object v8, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    aput v8, v3, v4

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v4, 0x3

    iget-object v8, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    aput v8, v3, v4

    goto :goto_5

    :cond_b
    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    array-length v3, v3

    mul-int v4, v2, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_c

    mul-int/2addr v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    :cond_c
    iget-object v2, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v2, v2, Lcom/github/mikephil/charting/f/c$a;->a:I

    invoke-interface {p2, v2}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v2, v2, Lcom/github/mikephil/charting/f/c$a;->a:I

    :goto_6
    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v4, v4, Lcom/github/mikephil/charting/f/c$a;->c:I

    iget-object v8, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v8, v8, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/2addr v4, v8

    if-gt v2, v4, :cond_11

    if-nez v2, :cond_e

    const/4 v4, 0x0

    :goto_7
    invoke-interface {p2, v4}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-interface {p2, v2}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    if-eqz v4, :cond_d

    if-nez v8, :cond_f

    :cond_d
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    add-int/lit8 v4, v2, -0x1

    goto :goto_7

    :cond_f
    iget-object v9, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v11

    aput v11, v9, v3

    iget-object v9, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v11

    mul-float/2addr v11, v7

    aput v11, v9, v10

    if-eqz v5, :cond_10

    iget-object v9, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v11

    aput v11, v9, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    add-int/lit8 v9, v10, 0x1

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v11

    mul-float/2addr v11, v7

    aput v11, v3, v10

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v11

    aput v11, v3, v9

    iget-object v9, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v4

    mul-float/2addr v4, v7

    aput v4, v9, v10

    :cond_10
    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v10

    aput v10, v4, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v8

    mul-float/2addr v8, v7

    aput v8, v4, v9

    goto :goto_8

    :cond_11
    if-lez v3, :cond_6

    iget-object v2, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    invoke-virtual {v6, v2}, Lcom/github/mikephil/charting/g/g;->a([F)V

    iget-object v2, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v2, v2, Lcom/github/mikephil/charting/f/c$a;->c:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/f;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/github/mikephil/charting/f/j;->p:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method protected b(Lcom/github/mikephil/charting/e/b/f;)V
    .locals 17

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/j;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/e/b/f;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/e/a/g;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/f/c$a;->a(Lcom/github/mikephil/charting/e/a/b;Lcom/github/mikephil/charting/e/b/b;)V

    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/e/b/f;->z()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->l:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v1, v1, Lcom/github/mikephil/charting/f/c$a;->c:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v1, v1, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v2, v2, Lcom/github/mikephil/charting/f/c$a;->a:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v3, v3, Lcom/github/mikephil/charting/f/c$a;->c:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v1, -0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    const/4 v2, -0x1

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->l:Landroid/graphics/Path;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v4

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v5

    mul-float/2addr v5, v13

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v1, v1, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/lit8 v1, v1, 0x1

    move v8, v1

    move v1, v2

    move-object v2, v3

    move-object/from16 v16, v3

    move-object v3, v11

    move-object/from16 v11, v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v4, v4, Lcom/github/mikephil/charting/f/c$a;->c:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v5, v5, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/2addr v4, v5

    if-gt v8, v4, :cond_3

    if-ne v1, v8, :cond_1

    move-object v12, v2

    :goto_2
    add-int/lit8 v1, v8, 0x1

    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/e/b/f;->s()I

    move-result v2

    if-ge v1, v2, :cond_2

    add-int/lit8 v9, v8, 0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v2, v1, v15

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v3

    sub-float/2addr v1, v3

    mul-float v3, v1, v15

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v1

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v4

    sub-float/2addr v1, v4

    mul-float v4, v1, v15

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v1

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v5

    sub-float/2addr v1, v5

    mul-float v5, v1, v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->l:Landroid/graphics/Path;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v6

    add-float/2addr v2, v6

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v6

    add-float/2addr v3, v6

    mul-float/2addr v3, v13

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v6

    sub-float v4, v6, v4

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v6

    sub-float v5, v6, v5

    mul-float/2addr v5, v13

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v6

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v7

    mul-float/2addr v7, v13

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move-object v2, v10

    move-object v3, v11

    move-object v11, v12

    move v1, v9

    goto :goto_1

    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    goto :goto_2

    :cond_2
    move v9, v8

    goto :goto_3

    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/e/b/f;->O()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->m:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/j;->l:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/j;->d:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/j;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/f/j;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/f;Landroid/graphics/Path;Lcom/github/mikephil/charting/g/g;Lcom/github/mikephil/charting/f/c$a;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/e/b/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->l:Landroid/graphics/Path;

    invoke-virtual {v14, v1}, Lcom/github/mikephil/charting/g/g;->a(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->d:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/j;->l:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_0
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/f/j;->d(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->r:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->r:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/g;->getLineData()Lcom/github/mikephil/charting/data/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/j;->i()Ljava/util/List;

    move-result-object v6

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/f;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/f;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/f;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/f;->s()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->b:Landroid/graphics/Paint;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/f;->H()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/f;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/github/mikephil/charting/e/a/g;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v7

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->a:Lcom/github/mikephil/charting/e/a/g;

    invoke-virtual {v1, v3, v0}, Lcom/github/mikephil/charting/f/c$a;->a(Lcom/github/mikephil/charting/e/a/b;Lcom/github/mikephil/charting/e/b/b;)V

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/f;->A()F

    move-result v8

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/f;->B()F

    move-result v1

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/f;->I()Z

    move-result v3

    if-eqz v3, :cond_4

    cmpg-float v3, v1, v8

    if-gez v3, :cond_4

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    const/4 v1, 0x1

    move v4, v1

    :goto_1
    if-eqz v4, :cond_5

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/f;->H()I

    move-result v1

    const v3, 0x112233

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    move v3, v1

    :goto_2
    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->q:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/github/mikephil/charting/f/j;->q:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/f/j$a;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/f/j$a;->a(Lcom/github/mikephil/charting/e/b/f;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1, v0, v4, v3}, Lcom/github/mikephil/charting/f/j$a;->a(Lcom/github/mikephil/charting/e/b/f;ZZ)V

    :cond_2
    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v3, v3, Lcom/github/mikephil/charting/f/c$a;->c:I

    iget-object v4, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v4, v4, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/2addr v4, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/f/j;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v3, v3, Lcom/github/mikephil/charting/f/c$a;->a:I

    :goto_4
    if-gt v3, v4, :cond_0

    invoke-interface {v0, v3}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v10, p0, Lcom/github/mikephil/charting/f/j;->r:[F

    const/4 v11, 0x0

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v12

    aput v12, v10, v11

    iget-object v10, p0, Lcom/github/mikephil/charting/f/j;->r:[F

    const/4 v11, 0x1

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v9

    mul-float/2addr v9, v5

    aput v9, v10, v11

    iget-object v9, p0, Lcom/github/mikephil/charting/f/j;->r:[F

    invoke-virtual {v7, v9}, Lcom/github/mikephil/charting/g/g;->a([F)V

    iget-object v9, p0, Lcom/github/mikephil/charting/f/j;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v10, p0, Lcom/github/mikephil/charting/f/j;->r:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/g/j;->h(F)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/github/mikephil/charting/f/j;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v10, p0, Lcom/github/mikephil/charting/f/j;->r:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/g/j;->g(F)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/github/mikephil/charting/f/j;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v10, p0, Lcom/github/mikephil/charting/f/j;->r:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/g/j;->f(F)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_3
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    move v4, v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    move v3, v1

    goto :goto_2

    :cond_6
    new-instance v1, Lcom/github/mikephil/charting/f/j$a;

    const/4 v9, 0x0

    invoke-direct {v1, p0, v9}, Lcom/github/mikephil/charting/f/j$a;-><init>(Lcom/github/mikephil/charting/f/j;Lcom/github/mikephil/charting/f/j$1;)V

    iget-object v9, p0, Lcom/github/mikephil/charting/f/j;->q:Ljava/util/HashMap;

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/f/j$a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v10, p0, Lcom/github/mikephil/charting/f/j;->r:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v10, v8

    iget-object v11, p0, Lcom/github/mikephil/charting/f/j;->r:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-float/2addr v11, v8

    iget-object v12, p0, Lcom/github/mikephil/charting/f/j;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_8
    return-void
.end method
