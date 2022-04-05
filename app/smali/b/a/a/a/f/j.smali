.class public Lb/a/a/a/f/j;
.super Lb/a/a/a/f/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/a/f/j$b;
    }
.end annotation


# instance fields
.field protected h:Lb/a/a/a/e/a/g;

.field protected i:Landroid/graphics/Paint;

.field protected j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Landroid/graphics/Canvas;

.field protected l:Landroid/graphics/Bitmap$Config;

.field protected m:Landroid/graphics/Path;

.field protected n:Landroid/graphics/Path;

.field private o:[F

.field protected p:Landroid/graphics/Path;

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lb/a/a/a/e/b/e;",
            "Lb/a/a/a/f/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private r:[F


# direct methods
.method public constructor <init>(Lb/a/a/a/e/a/g;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lb/a/a/a/f/k;-><init>(Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p2, p0, Lb/a/a/a/f/j;->l:Landroid/graphics/Bitmap$Config;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lb/a/a/a/f/j;->m:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lb/a/a/a/f/j;->n:Landroid/graphics/Path;

    const/4 p2, 0x4

    new-array p2, p2, [F

    iput-object p2, p0, Lb/a/a/a/f/j;->o:[F

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lb/a/a/a/f/j;->p:Landroid/graphics/Path;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lb/a/a/a/f/j;->q:Ljava/util/HashMap;

    const/4 p2, 0x2

    new-array p2, p2, [F

    iput-object p2, p0, Lb/a/a/a/f/j;->r:[F

    iput-object p1, p0, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lb/a/a/a/f/j;->i:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lb/a/a/a/f/j;->i:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(Lb/a/a/a/e/b/f;IILandroid/graphics/Path;)V
    .locals 6

    invoke-interface {p1}, Lb/a/a/a/e/b/f;->k()Lb/a/a/a/c/e;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-interface {v0, p1, v1}, Lb/a/a/a/c/e;->a(Lb/a/a/a/e/b/f;Lb/a/a/a/e/a/g;)F

    move-result v0

    iget-object v1, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->b()F

    move-result v1

    invoke-interface {p1}, Lb/a/a/a/e/b/f;->getMode()Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->b:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    invoke-interface {p1, p2}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v5

    invoke-virtual {p4, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v5

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v3

    mul-float v3, v3, v1

    invoke-virtual {p4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/2addr p2, v4

    const/4 v3, 0x0

    :goto_1
    move-object v4, v3

    if-gt p2, p3, :cond_2

    invoke-interface {p1, p2}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v5

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v4

    mul-float v4, v4, v1

    invoke-virtual {p4, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v4

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v5

    mul-float v5, v5, v1

    invoke-virtual {p4, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result p1

    invoke-virtual {p4, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

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
    .locals 4

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->l()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->k()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lb/a/a/a/f/j;->j:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lb/a/a/a/f/j;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    if-lez v0, :cond_4

    if-lez v1, :cond_4

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lb/a/a/a/f/j;->l:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lb/a/a/a/f/j;->j:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lb/a/a/a/f/j;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lb/a/a/a/f/j;->k:Landroid/graphics/Canvas;

    :cond_1
    iget-object v0, p0, Lb/a/a/a/f/j;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-interface {v0}, Lb/a/a/a/e/a/g;->getLineData()Lcom/github/mikephil/charting/data/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/e/b/f;

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v1}, Lb/a/a/a/f/j;->a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/f;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lb/a/a/a/f/j;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/f;)V
    .locals 2

    invoke-interface {p2}, Lb/a/a/a/e/b/e;->q0()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface {p2}, Lb/a/a/a/e/b/g;->o()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface {p2}, Lb/a/a/a/e/b/f;->A()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    sget-object v0, Lb/a/a/a/f/j$a;->a:[I

    invoke-interface {p2}, Lb/a/a/a/e/b/f;->getMode()Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lb/a/a/a/f/j;->b(Landroid/graphics/Canvas;Lb/a/a/a/e/b/f;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lb/a/a/a/f/j;->b(Lb/a/a/a/e/b/f;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lb/a/a/a/f/j;->a(Lb/a/a/a/e/b/f;)V

    :goto_0
    iget-object p1, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/f;Landroid/graphics/Path;Lb/a/a/a/g/g;Lb/a/a/a/f/c$a;)V
    .locals 3

    invoke-interface {p2}, Lb/a/a/a/e/b/f;->k()Lb/a/a/a/c/e;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-interface {v0, p2, v1}, Lb/a/a/a/c/e;->a(Lb/a/a/a/e/b/f;Lb/a/a/a/e/a/g;)F

    move-result v0

    iget v1, p5, Lb/a/a/a/f/c$a;->a:I

    iget v2, p5, Lb/a/a/a/f/c$a;->c:I

    add-int/2addr v1, v2

    invoke-interface {p2, v1}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget p5, p5, Lb/a/a/a/f/c$a;->a:I

    invoke-interface {p2, p5}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p5

    invoke-virtual {p5}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result p5

    invoke-virtual {p3, p5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    invoke-virtual {p4, p3}, Lb/a/a/a/g/g;->a(Landroid/graphics/Path;)V

    invoke-interface {p2}, Lb/a/a/a/e/b/g;->B()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Lb/a/a/a/f/k;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lb/a/a/a/e/b/g;->getFillColor()I

    move-result p4

    invoke-interface {p2}, Lb/a/a/a/e/b/g;->h()I

    move-result p2

    invoke-virtual {p0, p1, p3, p4, p2}, Lb/a/a/a/f/k;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    :goto_0
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/f;Lb/a/a/a/g/g;Lb/a/a/a/f/c$a;)V
    .locals 7

    iget-object v0, p0, Lb/a/a/a/f/j;->p:Landroid/graphics/Path;

    iget v1, p4, Lb/a/a/a/f/c$a;->a:I

    iget p4, p4, Lb/a/a/a/f/c$a;->c:I

    add-int/2addr p4, v1

    const/4 v2, 0x0

    :cond_0
    mul-int/lit16 v3, v2, 0x80

    add-int/2addr v3, v1

    add-int/lit16 v4, v3, 0x80

    if-le v4, p4, :cond_1

    move v4, p4

    :cond_1
    if-gt v3, v4, :cond_3

    invoke-direct {p0, p2, v3, v4, v0}, Lb/a/a/a/f/j;->a(Lb/a/a/a/e/b/f;IILandroid/graphics/Path;)V

    invoke-virtual {p3, v0}, Lb/a/a/a/g/g;->a(Landroid/graphics/Path;)V

    invoke-interface {p2}, Lb/a/a/a/e/b/g;->B()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, p1, v0, v5}, Lb/a/a/a/f/k;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lb/a/a/a/e/b/g;->getFillColor()I

    move-result v5

    invoke-interface {p2}, Lb/a/a/a/e/b/g;->h()I

    move-result v6

    invoke-virtual {p0, p1, v0, v5, v6}, Lb/a/a/a/f/k;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    :cond_3
    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-le v3, v4, :cond_0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lb/a/a/a/d/d;)V
    .locals 9

    iget-object v0, p0, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-interface {v0}, Lb/a/a/a/e/a/g;->getLineData()Lcom/github/mikephil/charting/data/j;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    invoke-virtual {v3}, Lb/a/a/a/d/d;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object v4

    check-cast v4, Lb/a/a/a/e/b/f;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lb/a/a/a/e/b/e;->s0()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lb/a/a/a/d/d;->g()F

    move-result v5

    invoke-virtual {v3}, Lb/a/a/a/d/d;->i()F

    move-result v6

    invoke-interface {v4, v5, v6}, Lb/a/a/a/e/b/e;->a(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lb/a/a/a/f/c;->a(Lcom/github/mikephil/charting/data/Entry;Lb/a/a/a/e/b/b;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-interface {v4}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-interface {v6, v7}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v7

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v5

    iget-object v8, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v8}, Lb/a/a/a/a/a;->b()F

    move-result v8

    mul-float v5, v5, v8

    invoke-virtual {v6, v7, v5}, Lb/a/a/a/g/g;->a(FF)Lb/a/a/a/g/d;

    move-result-object v5

    iget-wide v6, v5, Lb/a/a/a/g/d;->c:D

    double-to-float v6, v6

    iget-wide v7, v5, Lb/a/a/a/g/d;->d:D

    double-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Lb/a/a/a/d/d;->a(FF)V

    iget-wide v6, v5, Lb/a/a/a/g/d;->c:D

    double-to-float v3, v6

    iget-wide v5, v5, Lb/a/a/a/g/d;->d:D

    double-to-float v5, v5

    invoke-virtual {p0, p1, v3, v5, v4}, Lb/a/a/a/f/l;->a(Landroid/graphics/Canvas;FFLb/a/a/a/e/b/h;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected a(Lb/a/a/a/e/b/f;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->a()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    iget-object v0, v6, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->b()F

    move-result v0

    iget-object v1, v6, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-interface/range {p1 .. p1}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v8

    iget-object v1, v6, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget-object v2, v6, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-virtual {v1, v2, v7}, Lb/a/a/a/f/c$a;->a(Lb/a/a/a/e/a/b;Lb/a/a/a/e/b/b;)V

    invoke-interface/range {p1 .. p1}, Lb/a/a/a/e/b/f;->z()F

    move-result v1

    iget-object v2, v6, Lb/a/a/a/f/j;->m:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v6, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v3, v2, Lb/a/a/a/f/c$a;->c:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_3

    iget v2, v2, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v2, v4

    add-int/lit8 v3, v2, -0x2

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v7, v3}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    sub-int/2addr v2, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v7, v2}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    const/4 v5, -0x1

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v9, v6, Lb/a/a/a/f/j;->m:Landroid/graphics/Path;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v10

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v11

    mul-float v11, v11, v0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v9, v6, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v9, v9, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v9, v4

    move-object v4, v2

    :goto_0
    iget-object v10, v6, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v11, v10, Lb/a/a/a/f/c$a;->c:I

    iget v10, v10, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v11, v10

    if-gt v9, v11, :cond_3

    if-ne v5, v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v7, v9}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    :goto_1
    add-int/lit8 v5, v9, 0x1

    invoke-interface/range {p1 .. p1}, Lb/a/a/a/e/b/e;->q0()I

    move-result v10

    if-ge v5, v10, :cond_2

    move v9, v5

    :cond_2
    invoke-interface {v7, v9}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v11

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v12

    sub-float/2addr v11, v12

    mul-float v11, v11, v1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v12

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v3

    sub-float/2addr v12, v3

    mul-float v12, v12, v1

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v13

    sub-float/2addr v3, v13

    mul-float v3, v3, v1

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v13

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v14

    sub-float/2addr v13, v14

    mul-float v13, v13, v1

    iget-object v14, v6, Lb/a/a/a/f/j;->m:Landroid/graphics/Path;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v15

    add-float/2addr v15, v11

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v11

    add-float/2addr v11, v12

    mul-float v16, v11, v0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v11

    sub-float v17, v11, v3

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v3

    sub-float/2addr v3, v13

    mul-float v18, v3, v0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v19

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v3

    mul-float v20, v3, v0

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v3, v4

    move-object v4, v2

    move-object v2, v10

    move/from16 v21, v9

    move v9, v5

    move/from16 v5, v21

    goto :goto_0

    :cond_3
    invoke-interface/range {p1 .. p1}, Lb/a/a/a/e/b/g;->J()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lb/a/a/a/f/j;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v6, Lb/a/a/a/f/j;->n:Landroid/graphics/Path;

    iget-object v1, v6, Lb/a/a/a/f/j;->m:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v1, v6, Lb/a/a/a/f/j;->k:Landroid/graphics/Canvas;

    iget-object v3, v6, Lb/a/a/a/f/j;->n:Landroid/graphics/Path;

    iget-object v5, v6, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lb/a/a/a/f/j;->a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/f;Landroid/graphics/Path;Lb/a/a/a/g/g;Lb/a/a/a/f/c$a;)V

    :cond_4
    iget-object v0, v6, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface/range {p1 .. p1}, Lb/a/a/a/e/b/e;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v6, Lb/a/a/a/f/j;->m:Landroid/graphics/Path;

    invoke-virtual {v8, v0}, Lb/a/a/a/g/g;->a(Landroid/graphics/Path;)V

    iget-object v0, v6, Lb/a/a/a/f/j;->k:Landroid/graphics/Canvas;

    iget-object v1, v6, Lb/a/a/a/f/j;->m:Landroid/graphics/Path;

    iget-object v2, v6, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, v6, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/f/j;->k:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lb/a/a/a/f/j;->k:Landroid/graphics/Canvas;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/f/j;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lb/a/a/a/f/j;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v1, p0, Lb/a/a/a/f/j;->j:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lb/a/a/a/f/j;->d(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;Lb/a/a/a/e/b/f;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->q0()I

    move-result v2

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/f;->y0()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    iget-object v7, v0, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v8

    invoke-interface {v7, v8}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v7

    iget-object v8, v0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v8}, Lb/a/a/a/a/a;->b()F

    move-result v8

    iget-object v9, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/f;->s()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Lb/a/a/a/f/j;->k:Landroid/graphics/Canvas;

    goto :goto_1

    :cond_1
    move-object/from16 v9, p1

    :goto_1
    iget-object v10, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget-object v11, v0, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-virtual {v10, v11, v1}, Lb/a/a/a/f/c$a;->a(Lb/a/a/a/e/a/b;Lb/a/a/a/e/b/b;)V

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/g;->J()Z

    move-result v10

    if-eqz v10, :cond_2

    if-lez v2, :cond_2

    iget-object v10, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    move-object/from16 v11, p1

    invoke-virtual {v0, v11, v1, v7, v10}, Lb/a/a/a/f/j;->a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/f;Lb/a/a/a/g/g;Lb/a/a/a/f/c$a;)V

    :cond_2
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->Z()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-le v10, v12, :cond_b

    iget-object v2, v0, Lb/a/a/a/f/j;->o:[F

    array-length v2, v2

    mul-int/lit8 v10, v6, 0x2

    if-gt v2, v10, :cond_3

    mul-int/lit8 v6, v6, 0x4

    new-array v2, v6, [F

    iput-object v2, v0, Lb/a/a/a/f/j;->o:[F

    :cond_3
    iget-object v2, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v2, v2, Lb/a/a/a/f/c$a;->a:I

    :goto_2
    iget-object v6, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v13, v6, Lb/a/a/a/f/c$a;->c:I

    iget v6, v6, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v13, v6

    if-gt v2, v13, :cond_12

    invoke-interface {v1, v2}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    if-nez v6, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v13, v0, Lb/a/a/a/f/j;->o:[F

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v14

    aput v14, v13, v11

    iget-object v13, v0, Lb/a/a/a/f/j;->o:[F

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v6

    mul-float v6, v6, v8

    aput v6, v13, v12

    iget-object v6, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v6, v6, Lb/a/a/a/f/c$a;->b:I

    const/4 v13, 0x3

    if-ge v2, v6, :cond_7

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v1, v6}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    if-nez v6, :cond_5

    goto/16 :goto_8

    :cond_5
    if-eqz v3, :cond_6

    iget-object v14, v0, Lb/a/a/a/f/j;->o:[F

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v15

    aput v15, v14, v5

    iget-object v14, v0, Lb/a/a/a/f/j;->o:[F

    aget v15, v14, v12

    aput v15, v14, v13

    aget v15, v14, v5

    aput v15, v14, v4

    const/4 v15, 0x5

    aget v16, v14, v13

    aput v16, v14, v15

    const/4 v15, 0x6

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v16

    aput v16, v14, v15

    iget-object v14, v0, Lb/a/a/a/f/j;->o:[F

    const/4 v15, 0x7

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v6

    mul-float v6, v6, v8

    aput v6, v14, v15

    goto :goto_3

    :cond_6
    iget-object v14, v0, Lb/a/a/a/f/j;->o:[F

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v15

    aput v15, v14, v5

    iget-object v14, v0, Lb/a/a/a/f/j;->o:[F

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v6

    mul-float v6, v6, v8

    aput v6, v14, v13

    goto :goto_3

    :cond_7
    iget-object v6, v0, Lb/a/a/a/f/j;->o:[F

    aget v14, v6, v11

    aput v14, v6, v5

    aget v14, v6, v12

    aput v14, v6, v13

    :goto_3
    iget-object v6, v0, Lb/a/a/a/f/j;->o:[F

    invoke-virtual {v7, v6}, Lb/a/a/a/g/g;->b([F)V

    iget-object v6, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v14, v0, Lb/a/a/a/f/j;->o:[F

    aget v14, v14, v11

    invoke-virtual {v6, v14}, Lb/a/a/a/g/j;->c(F)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_8

    :cond_8
    iget-object v6, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v14, v0, Lb/a/a/a/f/j;->o:[F

    aget v14, v14, v5

    invoke-virtual {v6, v14}, Lb/a/a/a/g/j;->b(F)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v14, v0, Lb/a/a/a/f/j;->o:[F

    aget v14, v14, v12

    invoke-virtual {v6, v14}, Lb/a/a/a/g/j;->d(F)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v14, v0, Lb/a/a/a/f/j;->o:[F

    aget v13, v14, v13

    invoke-virtual {v6, v13}, Lb/a/a/a/g/j;->a(F)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_4

    :cond_9
    iget-object v6, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface {v1, v2}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lb/a/a/a/f/j;->o:[F

    iget-object v13, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v9, v6, v11, v10, v13}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_b
    iget-object v10, v0, Lb/a/a/a/f/j;->o:[F

    array-length v10, v10

    mul-int v2, v2, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    if-ge v10, v13, :cond_c

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [F

    iput-object v2, v0, Lb/a/a/a/f/j;->o:[F

    :cond_c
    iget-object v2, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v2, v2, Lb/a/a/a/f/c$a;->a:I

    invoke-interface {v1, v2}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v2, v2, Lb/a/a/a/f/c$a;->a:I

    const/4 v4, 0x0

    :goto_5
    iget-object v10, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v13, v10, Lb/a/a/a/f/c$a;->c:I

    iget v10, v10, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v13, v10

    if-gt v2, v13, :cond_11

    if-nez v2, :cond_d

    const/4 v10, 0x0

    goto :goto_6

    :cond_d
    add-int/lit8 v10, v2, -0x1

    :goto_6
    invoke-interface {v1, v10}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    invoke-interface {v1, v2}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v13

    if-eqz v10, :cond_10

    if-nez v13, :cond_e

    goto :goto_7

    :cond_e
    iget-object v14, v0, Lb/a/a/a/f/j;->o:[F

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v16

    aput v16, v14, v4

    iget-object v4, v0, Lb/a/a/a/f/j;->o:[F

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v16

    mul-float v16, v16, v8

    aput v16, v4, v15

    if-eqz v3, :cond_f

    iget-object v4, v0, Lb/a/a/a/f/j;->o:[F

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v16

    aput v16, v4, v14

    iget-object v4, v0, Lb/a/a/a/f/j;->o:[F

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v16

    mul-float v16, v16, v8

    aput v16, v4, v15

    iget-object v4, v0, Lb/a/a/a/f/j;->o:[F

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v16

    aput v16, v4, v14

    iget-object v4, v0, Lb/a/a/a/f/j;->o:[F

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v10

    mul-float v10, v10, v8

    aput v10, v4, v15

    :cond_f
    iget-object v4, v0, Lb/a/a/a/f/j;->o:[F

    add-int/lit8 v10, v14, 0x1

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v15

    aput v15, v4, v14

    iget-object v4, v0, Lb/a/a/a/f/j;->o:[F

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v13

    mul-float v13, v13, v8

    aput v13, v4, v10

    move v4, v14

    :cond_10
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    if-lez v4, :cond_12

    iget-object v2, v0, Lb/a/a/a/f/j;->o:[F

    invoke-virtual {v7, v2}, Lb/a/a/a/g/g;->b([F)V

    iget-object v2, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v2, v2, Lb/a/a/a/f/c$a;->c:I

    add-int/2addr v2, v12

    mul-int v2, v2, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->getColor()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lb/a/a/a/f/j;->o:[F

    iget-object v3, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_12
    :goto_8
    iget-object v1, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method protected b(Lb/a/a/a/e/b/f;)V
    .locals 14

    iget-object v0, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->b()F

    move-result v0

    iget-object v1, p0, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget-object v3, p0, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-virtual {v2, v3, p1}, Lb/a/a/a/f/c$a;->a(Lb/a/a/a/e/a/b;Lb/a/a/a/e/b/b;)V

    iget-object v2, p0, Lb/a/a/a/f/j;->m:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v3, v2, Lb/a/a/a/f/c$a;->c:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    iget v2, v2, Lb/a/a/a/f/c$a;->a:I

    invoke-interface {p1, v2}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    iget-object v3, p0, Lb/a/a/a/f/j;->m:Landroid/graphics/Path;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v5

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v6

    mul-float v6, v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v3, v3, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v3, v4

    :goto_0
    iget-object v4, p0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v5, v4, Lb/a/a/a/f/c$a;->c:I

    iget v4, v4, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v5, v4

    if-gt v3, v5, :cond_0

    invoke-interface {p1, v3}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v5

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v6

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v10, v5, v6

    iget-object v7, p0, Lb/a/a/a/f/j;->m:Landroid/graphics/Path;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v2

    mul-float v9, v2, v0

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v2

    mul-float v11, v2, v0

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v12

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v2

    mul-float v13, v2, v0

    move v8, v10

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lb/a/a/a/e/b/g;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/f/j;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lb/a/a/a/f/j;->n:Landroid/graphics/Path;

    iget-object v2, p0, Lb/a/a/a/f/j;->m:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v4, p0, Lb/a/a/a/f/j;->k:Landroid/graphics/Canvas;

    iget-object v6, p0, Lb/a/a/a/f/j;->n:Landroid/graphics/Path;

    iget-object v8, p0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    move-object v3, p0

    move-object v5, p1

    move-object v7, v1

    invoke-virtual/range {v3 .. v8}, Lb/a/a/a/f/j;->a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/f;Landroid/graphics/Path;Lb/a/a/a/g/g;Lb/a/a/a/f/c$a;)V

    :cond_1
    iget-object v0, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lb/a/a/a/f/j;->m:Landroid/graphics/Path;

    invoke-virtual {v1, p1}, Lb/a/a/a/g/g;->a(Landroid/graphics/Path;)V

    iget-object p1, p0, Lb/a/a/a/f/j;->k:Landroid/graphics/Canvas;

    iget-object v0, p0, Lb/a/a/a/f/j;->m:Landroid/graphics/Path;

    iget-object v1, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v9, p0

    iget-object v0, v9, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-virtual {v9, v0}, Lb/a/a/a/f/g;->a(Lb/a/a/a/e/a/e;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v9, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-interface {v0}, Lb/a/a/a/e/a/g;->getLineData()Lcom/github/mikephil/charting/data/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->c()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_6

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lb/a/a/a/e/b/f;

    invoke-virtual {v9, v13}, Lb/a/a/a/f/c;->b(Lb/a/a/a/e/b/e;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v9, v13}, Lb/a/a/a/f/g;->a(Lb/a/a/a/e/b/e;)V

    iget-object v0, v9, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-interface {v13}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v1

    invoke-interface {v13}, Lb/a/a/a/e/b/f;->I()F

    move-result v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-interface {v13}, Lb/a/a/a/e/b/f;->r0()Z

    move-result v2

    if-nez v2, :cond_1

    div-int/lit8 v0, v0, 0x2

    :cond_1
    move v14, v0

    iget-object v0, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget-object v2, v9, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-virtual {v0, v2, v13}, Lb/a/a/a/f/c$a;->a(Lb/a/a/a/e/a/b;Lb/a/a/a/e/b/b;)V

    iget-object v0, v9, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->a()F

    move-result v3

    iget-object v0, v9, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->b()F

    move-result v4

    iget-object v0, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v5, v0, Lb/a/a/a/f/c$a;->a:I

    iget v6, v0, Lb/a/a/a/f/c$a;->b:I

    move-object v2, v13

    invoke-virtual/range {v1 .. v6}, Lb/a/a/a/g/g;->a(Lb/a/a/a/e/b/f;FFII)[F

    move-result-object v15

    const/4 v8, 0x0

    :goto_1
    array-length v0, v15

    if-ge v8, v0, :cond_5

    aget v6, v15, v8

    add-int/lit8 v0, v8, 0x1

    aget v0, v15, v0

    iget-object v1, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1, v6}, Lb/a/a/a/g/j;->c(F)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    iget-object v1, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1, v6}, Lb/a/a/a/g/j;->b(F)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1, v0}, Lb/a/a/a/g/j;->f(F)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    div-int/lit8 v1, v8, 0x2

    iget-object v2, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v2, v2, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v2, v1

    invoke-interface {v13, v2}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-interface {v13}, Lb/a/a/a/e/b/e;->E()Lb/a/a/a/c/f;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v3

    int-to-float v5, v14

    sub-float v7, v0, v5

    invoke-interface {v13, v1}, Lb/a/a/a/e/b/e;->c(I)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v12

    move/from16 v17, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lb/a/a/a/f/g;->a(Landroid/graphics/Canvas;Lb/a/a/a/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v17, v8

    :goto_3
    add-int/lit8 v8, v17, 0x2

    goto :goto_1

    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->b()F

    move-result v1

    iget-object v2, v0, Lb/a/a/a/f/j;->r:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    aput v3, v2, v5

    iget-object v2, v0, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-interface {v2}, Lb/a/a/a/e/a/g;->getLineData()Lcom/github/mikephil/charting/data/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/h;->c()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/a/a/a/e/b/f;

    invoke-interface {v7}, Lb/a/a/a/e/b/e;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Lb/a/a/a/e/b/f;->r0()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Lb/a/a/a/e/b/e;->q0()I

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v8, v0, Lb/a/a/a/f/j;->i:Landroid/graphics/Paint;

    invoke-interface {v7}, Lb/a/a/a/e/b/f;->u()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, v0, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-interface {v7}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v9

    invoke-interface {v8, v9}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v8

    iget-object v9, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget-object v10, v0, Lb/a/a/a/f/j;->h:Lb/a/a/a/e/a/g;

    invoke-virtual {v9, v10, v7}, Lb/a/a/a/f/c$a;->a(Lb/a/a/a/e/a/b;Lb/a/a/a/e/b/b;)V

    invoke-interface {v7}, Lb/a/a/a/e/b/f;->I()F

    move-result v9

    invoke-interface {v7}, Lb/a/a/a/e/b/f;->u0()F

    move-result v10

    invoke-interface {v7}, Lb/a/a/a/e/b/f;->x0()Z

    move-result v11

    if-eqz v11, :cond_1

    cmpg-float v11, v10, v9

    if-gez v11, :cond_1

    cmpl-float v10, v10, v3

    if-lez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_2

    invoke-interface {v7}, Lb/a/a/a/e/b/f;->u()I

    move-result v11

    const v12, 0x112233

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    iget-object v12, v0, Lb/a/a/a/f/j;->q:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v0, Lb/a/a/a/f/j;->q:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lb/a/a/a/f/j$b;

    goto :goto_3

    :cond_3
    new-instance v12, Lb/a/a/a/f/j$b;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13}, Lb/a/a/a/f/j$b;-><init>(Lb/a/a/a/f/j;Lb/a/a/a/f/j$a;)V

    iget-object v13, v0, Lb/a/a/a/f/j;->q:Ljava/util/HashMap;

    invoke-virtual {v13, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-virtual {v12, v7}, Lb/a/a/a/f/j$b;->a(Lb/a/a/a/e/b/f;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12, v7, v10, v11}, Lb/a/a/a/f/j$b;->a(Lb/a/a/a/e/b/f;ZZ)V

    :cond_4
    iget-object v10, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v11, v10, Lb/a/a/a/f/c$a;->c:I

    iget v10, v10, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v11, v10

    :goto_4
    if-gt v10, v11, :cond_9

    invoke-interface {v7, v10}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v13

    if-nez v13, :cond_5

    goto :goto_7

    :cond_5
    iget-object v14, v0, Lb/a/a/a/f/j;->r:[F

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v15

    aput v15, v14, v4

    iget-object v14, v0, Lb/a/a/a/f/j;->r:[F

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v13

    mul-float v13, v13, v1

    aput v13, v14, v5

    iget-object v13, v0, Lb/a/a/a/f/j;->r:[F

    invoke-virtual {v8, v13}, Lb/a/a/a/g/g;->b([F)V

    iget-object v13, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v14, v0, Lb/a/a/a/f/j;->r:[F

    aget v14, v14, v4

    invoke-virtual {v13, v14}, Lb/a/a/a/g/j;->c(F)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_7

    :cond_6
    iget-object v13, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v14, v0, Lb/a/a/a/f/j;->r:[F

    aget v14, v14, v4

    invoke-virtual {v13, v14}, Lb/a/a/a/g/j;->b(F)Z

    move-result v13

    if-eqz v13, :cond_8

    iget-object v13, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v14, v0, Lb/a/a/a/f/j;->r:[F

    aget v14, v14, v5

    invoke-virtual {v13, v14}, Lb/a/a/a/g/j;->f(F)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v12, v10}, Lb/a/a/a/f/j$b;->a(I)Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_8

    iget-object v14, v0, Lb/a/a/a/f/j;->r:[F

    aget v15, v14, v4

    sub-float/2addr v15, v9

    aget v14, v14, v5

    sub-float/2addr v14, v9

    iget-object v3, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v13, v15, v14, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v4, p1

    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    :goto_7
    move-object/from16 v4, p1

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    return-void
.end method
