.class public Lcom/github/mikephil/charting/f/m;
.super Lcom/github/mikephil/charting/f/g;
.source "PieChartRenderer.java"


# instance fields
.field protected a:Lcom/github/mikephil/charting/charts/PieChart;

.field protected b:Landroid/graphics/Paint;

.field protected c:Landroid/graphics/Paint;

.field protected d:Landroid/graphics/Paint;

.field protected e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Landroid/graphics/Canvas;

.field protected l:Landroid/graphics/Path;

.field protected m:Landroid/graphics/RectF;

.field private n:Landroid/text/TextPaint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/text/StaticLayout;

.field private r:Ljava/lang/CharSequence;

.field private s:Landroid/graphics/RectF;

.field private t:[Landroid/graphics/RectF;

.field private u:Landroid/graphics/Path;

.field private v:Landroid/graphics/RectF;

.field private w:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V
    .locals 6

    const/high16 v5, 0x41500000    # 13.0f

    const/4 v4, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/f/g;-><init>(Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->s:Landroid/graphics/RectF;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/RectF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->t:[Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->v:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->w:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->l:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->m:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->c:Landroid/graphics/Paint;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->n:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->n:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->n:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->k:Landroid/graphics/Paint;

    invoke-static {v5}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->p:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->p:Landroid/graphics/Paint;

    invoke-static {v5}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/github/mikephil/charting/e/b/i;)F
    .locals 3

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/i;->y()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/i;->a()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/i;->a()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/m;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->o()F

    move-result v1

    div-float v1, v0, v1

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/i;->u()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/m;->l()F

    move-result v0

    div-float v0, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/i;->a()F

    move-result v0

    goto :goto_0
.end method

.method protected a(Lcom/github/mikephil/charting/g/e;FFFFFF)F
    .locals 10

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p7, v0

    add-float v0, v0, p6

    iget v1, p1, Lcom/github/mikephil/charting/g/e;->a:F

    add-float v2, p6, p7

    const v3, 0x3c8efa35

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p1, Lcom/github/mikephil/charting/g/e;->b:F

    add-float v3, p6, p7

    const v4, 0x3c8efa35

    mul-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iget v3, p1, Lcom/github/mikephil/charting/g/e;->a:F

    const v4, 0x3c8efa35

    mul-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    iget v4, p1, Lcom/github/mikephil/charting/g/e;->b:F

    const v5, 0x3c8efa35

    mul-float/2addr v0, v5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float/2addr v0, p2

    add-float/2addr v0, v4

    sub-float v4, v1, p4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-float v6, v2, p5

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    float-to-double v8, p3

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const-wide v8, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    sub-float v4, p2, v4

    float-to-double v4, v4

    add-float/2addr v1, p4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    sub-float v1, v3, v1

    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-float v1, v2, p5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    double-to-float v0, v0

    return v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->n()F

    move-result v0

    float-to-int v1, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/ref/WeakReference;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->e:Ljava/lang/ref/WeakReference;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/f/m;->f:Landroid/graphics/Canvas;

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/m;->i()Ljava/util/List;

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

    check-cast v0, Lcom/github/mikephil/charting/e/b/i;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/i;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/i;->s()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/f/m;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/i;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/i;)V
    .locals 29

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v21

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/e/b/i;->s()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/g/e;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->c()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move/from16 v17, v4

    :goto_0
    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v4, v8

    mul-float/2addr v4, v6

    move v12, v4

    :goto_1
    const/4 v13, 0x0

    const/4 v4, 0x0

    move v8, v4

    :goto_2
    move/from16 v0, v22

    if-ge v8, v0, :cond_2

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/github/mikephil/charting/e/b/i;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/PieEntry;->b()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v9, Lcom/github/mikephil/charting/g/i;->b:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_14

    add-int/lit8 v4, v13, 0x1

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v13, v4

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    move/from16 v17, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move v12, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    if-gt v13, v4, :cond_a

    const/4 v4, 0x0

    move v14, v4

    :goto_4
    const/4 v4, 0x0

    move v15, v4

    move/from16 v16, v7

    :goto_5
    move/from16 v0, v22

    if-ge v15, v0, :cond_12

    aget v24, v23, v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/github/mikephil/charting/e/b/i;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v7, Lcom/github/mikephil/charting/g/i;->b:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4, v15}, Lcom/github/mikephil/charting/charts/PieChart;->a(I)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    cmpl-float v4, v14, v4

    if-lez v4, :cond_b

    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v4, v24, v4

    if-gtz v4, :cond_b

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/f/m;->h:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/github/mikephil/charting/e/b/i;->a(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v7, 0x1

    if-ne v13, v7, :cond_c

    const/4 v7, 0x0

    :goto_7
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v7, v8

    add-float v8, v8, v16

    mul-float v8, v8, v20

    add-float v10, v18, v8

    sub-float v7, v24, v7

    mul-float v11, v7, v20

    const/4 v7, 0x0

    cmpg-float v7, v11, v7

    if-gez v7, :cond_3

    const/4 v11, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    iget v7, v5, Lcom/github/mikephil/charting/g/e;->a:F

    const v8, 0x3c8efa35

    mul-float/2addr v8, v10

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v7

    iget v7, v5, Lcom/github/mikephil/charting/g/e;->b:F

    const v9, 0x3c8efa35

    mul-float/2addr v9, v10

    float-to-double v0, v9

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v9, v0

    mul-float/2addr v9, v6

    add-float/2addr v9, v7

    const/high16 v7, 0x43b40000    # 360.0f

    cmpl-float v7, v11, v7

    if-ltz v7, :cond_d

    const/high16 v7, 0x43b40000    # 360.0f

    rem-float v7, v11, v7

    sget v25, Lcom/github/mikephil/charting/g/i;->b:F

    cmpg-float v7, v7, v25

    if-gtz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    iget v0, v5, Lcom/github/mikephil/charting/g/e;->a:F

    move/from16 v25, v0

    iget v0, v5, Lcom/github/mikephil/charting/g/e;->b:F

    move/from16 v26, v0

    sget-object v27, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v7, v0, v1, v6, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/f/m;->v:Landroid/graphics/RectF;

    iget v0, v5, Lcom/github/mikephil/charting/g/e;->a:F

    move/from16 v25, v0

    sub-float v25, v25, v12

    iget v0, v5, Lcom/github/mikephil/charting/g/e;->b:F

    move/from16 v26, v0

    sub-float v26, v26, v12

    iget v0, v5, Lcom/github/mikephil/charting/g/e;->a:F

    move/from16 v27, v0

    add-float v27, v27, v12

    iget v0, v5, Lcom/github/mikephil/charting/g/e;->b:F

    move/from16 v28, v0

    add-float v28, v28, v12

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v17, :cond_10

    const/4 v7, 0x0

    cmpl-float v7, v12, v7

    if-gtz v7, :cond_4

    if-eqz v4, :cond_10

    :cond_4
    if-eqz v4, :cond_13

    mul-float v7, v24, v20

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/github/mikephil/charting/f/m;->a(Lcom/github/mikephil/charting/g/e;FFFFFF)F

    move-result v4

    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_5

    neg-float v4, v4

    :cond_5
    invoke-static {v12, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v7, v4

    :goto_9
    const/4 v4, 0x1

    if-eq v13, v4, :cond_6

    const/4 v4, 0x0

    cmpl-float v4, v7, v4

    if-nez v4, :cond_e

    :cond_6
    const/4 v4, 0x0

    :goto_a
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v4, v8

    add-float v8, v8, v16

    mul-float v8, v8, v20

    add-float v8, v8, v18

    sub-float v4, v24, v4

    mul-float v4, v4, v20

    const/4 v9, 0x0

    cmpg-float v9, v4, v9

    if-gez v9, :cond_7

    const/4 v4, 0x0

    :cond_7
    add-float/2addr v8, v4

    const/high16 v9, 0x43b40000    # 360.0f

    cmpl-float v9, v11, v9

    if-ltz v9, :cond_f

    const/high16 v9, 0x43b40000    # 360.0f

    rem-float v9, v11, v9

    sget v10, Lcom/github/mikephil/charting/g/i;->b:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    iget v8, v5, Lcom/github/mikephil/charting/g/e;->a:F

    iget v9, v5, Lcom/github/mikephil/charting/g/e;->b:F

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v8, v9, v7, v10}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_8
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->f:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/github/mikephil/charting/f/m;->h:Landroid/graphics/Paint;

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    mul-float v4, v24, v19

    add-float v7, v16, v4

    add-int/lit8 v4, v15, 0x1

    move v15, v4

    move/from16 v16, v7

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/f/m;->a(Lcom/github/mikephil/charting/e/b/i;)F

    move-result v4

    move v14, v4

    goto/16 :goto_4

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_c
    const v7, 0x3c8efa35

    mul-float/2addr v7, v6

    div-float v7, v14, v7

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_8

    :cond_e
    const v4, 0x3c8efa35

    mul-float/2addr v4, v7

    div-float v4, v14, v4

    goto/16 :goto_a

    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    iget v10, v5, Lcom/github/mikephil/charting/g/e;->a:F

    const v11, 0x3c8efa35

    mul-float/2addr v11, v8

    float-to-double v0, v11

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v11, v0

    mul-float/2addr v11, v7

    add-float/2addr v10, v11

    iget v11, v5, Lcom/github/mikephil/charting/g/e;->b:F

    const v25, 0x3c8efa35

    mul-float v25, v25, v8

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v25, v0

    mul-float v7, v7, v25

    add-float/2addr v7, v11

    invoke-virtual {v9, v10, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/f/m;->v:Landroid/graphics/RectF;

    neg-float v4, v4

    invoke-virtual {v7, v9, v8, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_b

    :cond_10
    const/high16 v7, 0x43b40000    # 360.0f

    rem-float v7, v11, v7

    sget v25, Lcom/github/mikephil/charting/g/i;->b:F

    cmpl-float v7, v7, v25

    if-lez v7, :cond_8

    if-eqz v4, :cond_11

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v11, v4

    add-float v25, v10, v4

    mul-float v7, v24, v20

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/github/mikephil/charting/f/m;->a(Lcom/github/mikephil/charting/g/e;FFFFFF)F

    move-result v4

    iget v7, v5, Lcom/github/mikephil/charting/g/e;->a:F

    const v8, 0x3c8efa35

    mul-float v8, v8, v25

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget v8, v5, Lcom/github/mikephil/charting/g/e;->b:F

    const v9, 0x3c8efa35

    mul-float v9, v9, v25

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v9, v10

    mul-float/2addr v4, v9

    add-float/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    iget v7, v5, Lcom/github/mikephil/charting/g/e;->a:F

    iget v8, v5, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    :cond_12
    invoke-static {v5}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    return-void

    :cond_13
    move v7, v12

    goto/16 :goto_9

    :cond_14
    move v4, v13

    goto/16 :goto_3
.end method

.method protected a(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/d/d;)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/g/e;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->c()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move/from16 v16, v2

    :goto_0
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v2, v5

    mul-float/2addr v2, v4

    move v10, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/f/m;->m:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v2, 0x0

    move v11, v2

    :goto_2
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v11, v2, :cond_17

    aget-object v2, p2, v11

    invoke-virtual {v2}, Lcom/github/mikephil/charting/d/d;->a()F

    move-result v2

    float-to-int v6, v2

    move-object/from16 v0, v20

    array-length v2, v0

    if-lt v6, v2, :cond_3

    :cond_0
    :goto_3
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    move/from16 v16, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v10, v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/m;

    aget-object v5, p2, v11

    invoke-virtual {v5}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/m;->b(I)Lcom/github/mikephil/charting/e/b/i;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/i;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/i;->s()I

    move-result v8

    const/4 v12, 0x0

    const/4 v2, 0x0

    move v5, v2

    :goto_4
    if-ge v5, v8, :cond_4

    invoke-interface {v7, v5}, Lcom/github/mikephil/charting/e/b/i;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieEntry;->b()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v9, Lcom/github/mikephil/charting/g/i;->b:F

    cmpl-float v2, v2, v9

    if-lez v2, :cond_19

    add-int/lit8 v2, v12, 0x1

    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v12, v2

    goto :goto_4

    :cond_4
    if-nez v6, :cond_d

    const/4 v2, 0x0

    move v15, v2

    :goto_6
    const/4 v2, 0x1

    if-gt v12, v2, :cond_e

    const/4 v2, 0x0

    move v13, v2

    :goto_7
    aget v23, v20, v6

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/i;->z()F

    move-result v2

    add-float v24, v4, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    neg-float v5, v2

    neg-float v2, v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v2}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-lez v2, :cond_f

    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, v23, v2

    if-gtz v2, :cond_f

    const/4 v2, 0x1

    move v14, v2

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->h:Landroid/graphics/Paint;

    invoke-interface {v7, v6}, Lcom/github/mikephil/charting/e/b/i;->a(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    if-ne v12, v2, :cond_10

    const/4 v2, 0x0

    move v5, v2

    :goto_9
    const/4 v2, 0x1

    if-ne v12, v2, :cond_11

    const/4 v2, 0x0

    :goto_a
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    add-float/2addr v6, v15

    mul-float v6, v6, v18

    add-float v8, v19, v6

    sub-float v5, v23, v5

    mul-float v9, v5, v18

    const/4 v5, 0x0

    cmpg-float v5, v9, v5

    if-gez v5, :cond_5

    const/4 v9, 0x0

    :cond_5
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    add-float/2addr v5, v15

    mul-float v5, v5, v18

    add-float v5, v5, v19

    sub-float v2, v23, v2

    mul-float v2, v2, v18

    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_6

    const/4 v2, 0x0

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    const/high16 v6, 0x43b40000    # 360.0f

    cmpl-float v6, v9, v6

    if-ltz v6, :cond_12

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float v6, v9, v6

    sget v7, Lcom/github/mikephil/charting/g/i;->b:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    iget v5, v3, Lcom/github/mikephil/charting/g/e;->a:F

    iget v6, v3, Lcom/github/mikephil/charting/g/e;->b:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v24

    invoke-virtual {v2, v5, v6, v0, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :goto_b
    const/4 v2, 0x0

    if-eqz v14, :cond_7

    mul-float v5, v23, v18

    iget v2, v3, Lcom/github/mikephil/charting/g/e;->a:F

    const v6, 0x3c8efa35

    mul-float/2addr v6, v8

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v2

    iget v2, v3, Lcom/github/mikephil/charting/g/e;->b:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v8

    float-to-double v0, v7

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v7, v0

    mul-float/2addr v7, v4

    add-float/2addr v7, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/github/mikephil/charting/f/m;->a(Lcom/github/mikephil/charting/g/e;FFFFFF)F

    move-result v2

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/f/m;->v:Landroid/graphics/RectF;

    iget v6, v3, Lcom/github/mikephil/charting/g/e;->a:F

    sub-float/2addr v6, v10

    iget v7, v3, Lcom/github/mikephil/charting/g/e;->b:F

    sub-float/2addr v7, v10

    iget v0, v3, Lcom/github/mikephil/charting/g/e;->a:F

    move/from16 v24, v0

    add-float v24, v24, v10

    iget v0, v3, Lcom/github/mikephil/charting/g/e;->b:F

    move/from16 v25, v0

    add-float v25, v25, v10

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v16, :cond_15

    const/4 v5, 0x0

    cmpl-float v5, v10, v5

    if-gtz v5, :cond_8

    if-eqz v14, :cond_15

    :cond_8
    if-eqz v14, :cond_18

    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-gez v5, :cond_9

    neg-float v2, v2

    :cond_9
    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v5, v2

    :goto_c
    const/4 v2, 0x1

    if-eq v12, v2, :cond_a

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-nez v2, :cond_13

    :cond_a
    const/4 v2, 0x0

    :goto_d
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v2, v6

    add-float/2addr v6, v15

    mul-float v6, v6, v18

    add-float v6, v6, v19

    sub-float v2, v23, v2

    mul-float v2, v2, v18

    const/4 v7, 0x0

    cmpg-float v7, v2, v7

    if-gez v7, :cond_b

    const/4 v2, 0x0

    :cond_b
    add-float/2addr v6, v2

    const/high16 v7, 0x43b40000    # 360.0f

    cmpl-float v7, v9, v7

    if-ltz v7, :cond_14

    const/high16 v7, 0x43b40000    # 360.0f

    rem-float v7, v9, v7

    sget v8, Lcom/github/mikephil/charting/g/i;->b:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    iget v6, v3, Lcom/github/mikephil/charting/g/e;->a:F

    iget v7, v3, Lcom/github/mikephil/charting/g/e;->b:F

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v6, v7, v5, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_c
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->f:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/f/m;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v2, v6, -0x1

    aget v2, v21, v2

    mul-float v2, v2, v17

    move v15, v2

    goto/16 :goto_6

    :cond_e
    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/i;->a()F

    move-result v2

    move v13, v2

    goto/16 :goto_7

    :cond_f
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_8

    :cond_10
    const v2, 0x3c8efa35

    mul-float/2addr v2, v4

    div-float v2, v13, v2

    move v5, v2

    goto/16 :goto_9

    :cond_11
    const v2, 0x3c8efa35

    mul-float v2, v2, v24

    div-float v2, v13, v2

    goto/16 :goto_a

    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    iget v7, v3, Lcom/github/mikephil/charting/g/e;->a:F

    const v25, 0x3c8efa35

    mul-float v25, v25, v5

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v24

    add-float v7, v7, v25

    iget v0, v3, Lcom/github/mikephil/charting/g/e;->b:F

    move/from16 v25, v0

    const v26, 0x3c8efa35

    mul-float v26, v26, v5

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    mul-float v24, v24, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    invoke-virtual {v6, v7, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v5, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_b

    :cond_13
    const v2, 0x3c8efa35

    mul-float/2addr v2, v5

    div-float v2, v13, v2

    goto/16 :goto_d

    :cond_14
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    iget v8, v3, Lcom/github/mikephil/charting/g/e;->a:F

    const v9, 0x3c8efa35

    mul-float/2addr v9, v6

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v9, v12

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget v9, v3, Lcom/github/mikephil/charting/g/e;->b:F

    const v12, 0x3c8efa35

    mul-float/2addr v12, v6

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v5, v12

    add-float/2addr v5, v9

    invoke-virtual {v7, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/f/m;->v:Landroid/graphics/RectF;

    neg-float v2, v2

    invoke-virtual {v5, v7, v6, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_e

    :cond_15
    const/high16 v5, 0x43b40000    # 360.0f

    rem-float v5, v9, v5

    sget v6, Lcom/github/mikephil/charting/g/i;->b:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_c

    if-eqz v14, :cond_16

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v9, v5

    add-float/2addr v5, v8

    iget v6, v3, Lcom/github/mikephil/charting/g/e;->a:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v5

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iget v7, v3, Lcom/github/mikephil/charting/g/e;->b:F

    const v8, 0x3c8efa35

    mul-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v2, v5

    add-float/2addr v2, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_e

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/m;->u:Landroid/graphics/Path;

    iget v5, v3, Lcom/github/mikephil/charting/g/e;->a:F

    iget v6, v3, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_e

    :cond_17
    invoke-static {v3}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    return-void

    :cond_18
    move v5, v10

    goto/16 :goto_c

    :cond_19
    move v2, v12

    goto/16 :goto_5
.end method

.method public b()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 50

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/g/e;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v33, v4, v5

    const/high16 v4, 0x41200000    # 10.0f

    div-float v4, v27, v4

    const v5, 0x40666666    # 3.6f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    mul-float v4, v27, v33

    sub-float v4, v27, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    :cond_0
    sub-float v34, v27, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/github/mikephil/charting/data/m;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/m;->i()Ljava/util/List;

    move-result-object v35

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/m;->l()F

    move-result v36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->f()Z

    move-result v37

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v38

    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_0
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_16

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/github/mikephil/charting/e/b/i;

    invoke-interface {v14}, Lcom/github/mikephil/charting/e/b/i;->o()Z

    move-result v39

    if-nez v39, :cond_1

    if-nez v37, :cond_1

    :goto_1
    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto :goto_0

    :cond_1
    invoke-interface {v14}, Lcom/github/mikephil/charting/e/b/i;->A()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-result-object v40

    invoke-interface {v14}, Lcom/github/mikephil/charting/e/b/i;->B()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-result-object v41

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/github/mikephil/charting/f/m;->b(Lcom/github/mikephil/charting/e/b/e;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->k:Landroid/graphics/Paint;

    const-string v6, "Q"

    invoke-static {v4, v6}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v6

    add-float v42, v4, v6

    invoke-interface {v14}, Lcom/github/mikephil/charting/e/b/i;->g()Lcom/github/mikephil/charting/c/f;

    move-result-object v43

    invoke-interface {v14}, Lcom/github/mikephil/charting/e/b/i;->s()I

    move-result v44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->d:Landroid/graphics/Paint;

    invoke-interface {v14}, Lcom/github/mikephil/charting/e/b/i;->C()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->d:Landroid/graphics/Paint;

    invoke-interface {v14}, Lcom/github/mikephil/charting/e/b/i;->D()F

    move-result v6

    invoke-static {v6}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/github/mikephil/charting/f/m;->a(Lcom/github/mikephil/charting/e/b/i;)F

    move-result v45

    const/4 v4, 0x0

    move/from16 v25, v4

    move/from16 v20, v5

    :goto_2
    move/from16 v0, v25

    move/from16 v1, v44

    if-ge v0, v1, :cond_17

    move/from16 v0, v25

    invoke-interface {v14, v0}, Lcom/github/mikephil/charting/e/b/i;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/github/mikephil/charting/data/PieEntry;

    if-nez v20, :cond_8

    const/4 v4, 0x0

    :goto_3
    aget v5, v29, v20

    const v6, 0x3c8efa35

    mul-float v6, v6, v34

    div-float v6, v45, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float v4, v4, v32

    add-float v10, v28, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->g()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->b()F

    move-result v4

    div-float v4, v4, v36

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    move/from16 v17, v4

    :goto_4
    const v4, 0x3c8efa35

    mul-float/2addr v4, v10

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v46, v0

    const v4, 0x3c8efa35

    mul-float/2addr v4, v10

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v47, v0

    if-eqz v37, :cond_a

    sget-object v4, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->b:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-object/from16 v0, v40

    if-ne v0, v4, :cond_a

    const/4 v4, 0x1

    move/from16 v24, v4

    :goto_5
    if-eqz v39, :cond_b

    sget-object v4, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->b:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-object/from16 v0, v41

    if-ne v0, v4, :cond_b

    const/4 v4, 0x1

    move/from16 v23, v4

    :goto_6
    if-eqz v37, :cond_c

    sget-object v4, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->a:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-object/from16 v0, v40

    if-ne v0, v4, :cond_c

    const/4 v4, 0x1

    move/from16 v22, v4

    :goto_7
    if-eqz v39, :cond_d

    sget-object v4, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->a:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-object/from16 v0, v41

    if-ne v0, v4, :cond_d

    const/4 v4, 0x1

    move/from16 v21, v4

    :goto_8
    if-nez v24, :cond_2

    if-eqz v23, :cond_5

    :cond_2
    invoke-interface {v14}, Lcom/github/mikephil/charting/e/b/i;->F()F

    move-result v8

    invoke-interface {v14}, Lcom/github/mikephil/charting/e/b/i;->G()F

    move-result v5

    invoke-interface {v14}, Lcom/github/mikephil/charting/e/b/i;->E()F

    move-result v4

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->d()Z

    move-result v6

    if-eqz v6, :cond_e

    mul-float v6, v27, v33

    sub-float v6, v27, v6

    mul-float/2addr v4, v6

    mul-float v6, v27, v33

    add-float/2addr v4, v6

    :goto_9
    invoke-interface {v14}, Lcom/github/mikephil/charting/e/b/i;->H()Z

    move-result v6

    if-eqz v6, :cond_f

    mul-float v5, v5, v34

    const v6, 0x3c8efa35

    mul-float/2addr v6, v10

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    move v9, v5

    :goto_a
    mul-float v5, v4, v46

    move-object/from16 v0, v26

    iget v6, v0, Lcom/github/mikephil/charting/g/e;->a:F

    add-float/2addr v5, v6

    mul-float v4, v4, v47

    move-object/from16 v0, v26

    iget v6, v0, Lcom/github/mikephil/charting/g/e;->b:F

    add-float/2addr v6, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v8

    mul-float v4, v4, v34

    mul-float v4, v4, v46

    move-object/from16 v0, v26

    iget v7, v0, Lcom/github/mikephil/charting/g/e;->a:F

    add-float/2addr v7, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v8

    mul-float v4, v4, v34

    mul-float v4, v4, v47

    move-object/from16 v0, v26

    iget v8, v0, Lcom/github/mikephil/charting/g/e;->b:F

    add-float/2addr v8, v4

    float-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide v48, 0x4076800000000000L    # 360.0

    rem-double v18, v18, v48

    const-wide v48, 0x4056800000000000L    # 90.0

    cmpl-double v4, v18, v48

    if-ltz v4, :cond_10

    float-to-double v10, v10

    const-wide v18, 0x4076800000000000L    # 360.0

    rem-double v10, v10, v18

    const-wide v18, 0x4070e00000000000L    # 270.0

    cmpg-double v4, v10, v18

    if-gtz v4, :cond_10

    sub-float v9, v7, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->k:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->p:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_3
    sub-float v4, v9, v38

    move/from16 v18, v8

    move/from16 v19, v4

    move v10, v8

    move v12, v9

    :goto_b
    invoke-interface {v14}, Lcom/github/mikephil/charting/e/b/i;->C()I

    move-result v4

    const v9, 0x112233

    if-eq v4, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/f/m;->d:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/github/mikephil/charting/f/m;->d:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v9, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    if-eqz v24, :cond_12

    if-eqz v23, :cond_12

    const/4 v9, 0x0

    move/from16 v0, v25

    invoke-interface {v14, v0}, Lcom/github/mikephil/charting/e/b/i;->c(I)I

    move-result v12

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v43

    move/from16 v7, v17

    move-object v8, v15

    move/from16 v10, v19

    move/from16 v11, v18

    invoke-virtual/range {v4 .. v12}, Lcom/github/mikephil/charting/f/m;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/m;->j()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_5

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->a()Ljava/lang/String;

    move-result-object v4

    add-float v5, v18, v42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/github/mikephil/charting/f/m;->a(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    :cond_5
    :goto_c
    if-nez v22, :cond_6

    if-eqz v21, :cond_7

    :cond_6
    mul-float v4, v34, v46

    move-object/from16 v0, v26

    iget v5, v0, Lcom/github/mikephil/charting/g/e;->a:F

    add-float v10, v4, v5

    mul-float v4, v34, v47

    move-object/from16 v0, v26

    iget v5, v0, Lcom/github/mikephil/charting/g/e;->b:F

    add-float v11, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->k:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v22, :cond_14

    if-eqz v21, :cond_14

    const/4 v9, 0x0

    move/from16 v0, v25

    invoke-interface {v14, v0}, Lcom/github/mikephil/charting/e/b/i;->c(I)I

    move-result v12

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v43

    move/from16 v7, v17

    move-object v8, v15

    invoke-virtual/range {v4 .. v12}, Lcom/github/mikephil/charting/f/m;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/m;->j()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_7

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->a()Ljava/lang/String;

    move-result-object v4

    add-float v5, v11, v42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v10, v5}, Lcom/github/mikephil/charting/f/m;->a(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    :cond_7
    :goto_d
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v4, v25, 0x1

    move/from16 v25, v4

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v4, v20, -0x1

    aget v4, v30, v4

    mul-float v4, v4, v31

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->b()F

    move-result v4

    move/from16 v17, v4

    goto/16 :goto_4

    :cond_a
    const/4 v4, 0x0

    move/from16 v24, v4

    goto/16 :goto_5

    :cond_b
    const/4 v4, 0x0

    move/from16 v23, v4

    goto/16 :goto_6

    :cond_c
    const/4 v4, 0x0

    move/from16 v22, v4

    goto/16 :goto_7

    :cond_d
    const/4 v4, 0x0

    move/from16 v21, v4

    goto/16 :goto_8

    :cond_e
    mul-float v4, v4, v27

    goto/16 :goto_9

    :cond_f
    mul-float v5, v5, v34

    move v9, v5

    goto/16 :goto_a

    :cond_10
    add-float/2addr v9, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->k:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/m;->p:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_11
    add-float v4, v9, v38

    move/from16 v18, v8

    move/from16 v19, v4

    move v10, v8

    move v12, v9

    goto/16 :goto_b

    :cond_12
    if-eqz v24, :cond_13

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/m;->j()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_5

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->a()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v42, v5

    add-float v5, v5, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/github/mikephil/charting/f/m;->a(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto/16 :goto_c

    :cond_13
    if-eqz v23, :cond_5

    const/4 v9, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v42, v4

    add-float v11, v18, v4

    move/from16 v0, v25

    invoke-interface {v14, v0}, Lcom/github/mikephil/charting/e/b/i;->c(I)I

    move-result v12

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v43

    move/from16 v7, v17

    move-object v8, v15

    move/from16 v10, v19

    invoke-virtual/range {v4 .. v12}, Lcom/github/mikephil/charting/f/m;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto/16 :goto_c

    :cond_14
    if-eqz v22, :cond_15

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/m;->j()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_7

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieEntry;->a()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v42, v5

    add-float/2addr v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v10, v5}, Lcom/github/mikephil/charting/f/m;->a(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto/16 :goto_d

    :cond_15
    if-eqz v21, :cond_7

    const/4 v9, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v42, v4

    add-float/2addr v11, v4

    move/from16 v0, v25

    invoke-interface {v14, v0}, Lcom/github/mikephil/charting/e/b/i;->c(I)I

    move-result v12

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v43

    move/from16 v7, v17

    move-object v8, v15

    invoke-virtual/range {v4 .. v12}, Lcom/github/mikephil/charting/f/m;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto/16 :goto_d

    :cond_16
    invoke-static/range {v26 .. v26}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_17
    move/from16 v5, v20

    goto/16 :goto_1
.end method

.method public c()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/f/m;->d(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/f/m;->e(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public d()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->n:Landroid/text/TextPaint;

    return-object v0
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v7, 0x42c80000    # 100.0f

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->f:Landroid/graphics/Canvas;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v1

    div-float/2addr v1, v7

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/g/e;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/m;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/f/m;->f:Landroid/graphics/Canvas;

    iget v4, v2, Lcom/github/mikephil/charting/g/e;->a:F

    iget v5, v2, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v6, p0, Lcom/github/mikephil/charting/f/m;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/f/m;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/github/mikephil/charting/f/m;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v4

    div-float/2addr v4, v7

    mul-float/2addr v0, v4

    iget-object v4, p0, Lcom/github/mikephil/charting/f/m;->c:Landroid/graphics/Paint;

    int-to-float v5, v3

    iget-object v6, p0, Lcom/github/mikephil/charting/f/m;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/github/mikephil/charting/f/m;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/github/mikephil/charting/f/m;->w:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/github/mikephil/charting/f/m;->w:Landroid/graphics/Path;

    iget v5, v2, Lcom/github/mikephil/charting/g/e;->a:F

    iget v6, v2, Lcom/github/mikephil/charting/g/e;->b:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->w:Landroid/graphics/Path;

    iget v4, v2, Lcom/github/mikephil/charting/g/e;->a:F

    iget v5, v2, Lcom/github/mikephil/charting/g/e;->b:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->f:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/m;->w:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/github/mikephil/charting/f/m;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    invoke-static {v2}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    :cond_2
    return-void
.end method

.method public e()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->p:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected e(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/g/e;

    move-result-object v10

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextOffset()Lcom/github/mikephil/charting/g/e;

    move-result-object v11

    iget v0, v10, Lcom/github/mikephil/charting/g/e;->a:F

    iget v2, v11, Lcom/github/mikephil/charting/g/e;->a:F

    add-float/2addr v2, v0

    iget v0, v10, Lcom/github/mikephil/charting/g/e;->b:F

    iget v3, v11, Lcom/github/mikephil/charting/g/e;->b:F

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->c()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v0

    iget-object v4, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v0, v4

    :goto_0
    iget-object v4, p0, Lcom/github/mikephil/charting/f/m;->t:[Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget-object v12, v4, v5

    sub-float v4, v2, v0

    iput v4, v12, Landroid/graphics/RectF;->left:F

    sub-float v4, v3, v0

    iput v4, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, v12, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v3

    iput v0, v12, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->t:[Landroid/graphics/RectF;

    const/4 v2, 0x1

    aget-object v13, v0, v2

    invoke-virtual {v13, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextRadiusPercent()F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-virtual {v13, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->r:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->s:Landroid/graphics/RectF;

    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->s:Landroid/graphics/RectF;

    invoke-virtual {v0, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/f/m;->r:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->s:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/f/m;->n:Landroid/text/TextPaint;

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-int v5, v6

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/m;->q:Landroid/text/StaticLayout;

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->q:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/github/mikephil/charting/f/m;->l:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v12, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_3
    iget v1, v13, Landroid/graphics/RectF;->left:F

    iget v2, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v0, v3, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->q:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v10}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    invoke-static {v11}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->a:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v0

    goto/16 :goto_0
.end method

.method public f()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->f:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->f:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/f/m;->f:Landroid/graphics/Canvas;

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/m;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v1, p0, Lcom/github/mikephil/charting/f/m;->e:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method
