.class public Lcom/github/mikephil/charting/listener/a;
.super Lcom/github/mikephil/charting/listener/ChartTouchListener;
.source "BarLineChartTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/listener/ChartTouchListener",
        "<",
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<+",
        "Lcom/github/mikephil/charting/data/b",
        "<+",
        "Lcom/github/mikephil/charting/e/b/b",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field private f:Landroid/graphics/Matrix;

.field private g:Landroid/graphics/Matrix;

.field private h:Lcom/github/mikephil/charting/g/e;

.field private i:Lcom/github/mikephil/charting/g/e;

.field private j:F

.field private k:F

.field private l:F

.field private m:Lcom/github/mikephil/charting/e/b/e;

.field private n:Landroid/view/VelocityTracker;

.field private o:J

.field private p:Lcom/github/mikephil/charting/g/e;

.field private q:Lcom/github/mikephil/charting/g/e;

.field private r:F

.field private s:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/BarLineChartBase",
            "<+",
            "Lcom/github/mikephil/charting/data/b",
            "<+",
            "Lcom/github/mikephil/charting/e/b/b",
            "<+",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;>;>;",
            "Landroid/graphics/Matrix;",
            "F)V"
        }
    .end annotation

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->g:Landroid/graphics/Matrix;

    invoke-static {v2, v2}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->h:Lcom/github/mikephil/charting/g/e;

    invoke-static {v2, v2}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->i:Lcom/github/mikephil/charting/g/e;

    iput v1, p0, Lcom/github/mikephil/charting/listener/a;->j:F

    iput v1, p0, Lcom/github/mikephil/charting/listener/a;->k:F

    iput v1, p0, Lcom/github/mikephil/charting/listener/a;->l:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/mikephil/charting/listener/a;->o:J

    invoke-static {v2, v2}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->p:Lcom/github/mikephil/charting/g/e;

    invoke-static {v2, v2}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lcom/github/mikephil/charting/g/e;

    iput-object p2, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    invoke-static {p3}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/listener/a;->r:F

    const/high16 v0, 0x40600000    # 3.5f

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/listener/a;->s:F

    return-void
.end method

.method private static a(Lcom/github/mikephil/charting/g/e;Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/github/mikephil/charting/g/e;->a:F

    div-float v0, v1, v3

    iput v0, p0, Lcom/github/mikephil/charting/g/e;->b:F

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->h:Lcom/github/mikephil/charting/g/e;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/g/e;->a:F

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->h:Lcom/github/mikephil/charting/g/e;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(FF)Lcom/github/mikephil/charting/e/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->m:Lcom/github/mikephil/charting/e/b/e;

    return-void
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->m:Lcom/github/mikephil/charting/e/b/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->m:Lcom/github/mikephil/charting/e/b/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->m:Lcom/github/mikephil/charting/e/b/e;

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/e;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 4

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->b:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v2

    invoke-direct {p0}, Lcom/github/mikephil/charting/listener/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    instance-of v0, v0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->h:Lcom/github/mikephil/charting/g/e;

    iget v1, v1, Lcom/github/mikephil/charting/g/e;->a:F

    sub-float/2addr v0, v1

    neg-float v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->h:Lcom/github/mikephil/charting/g/e;

    iget v3, v3, Lcom/github/mikephil/charting/g/e;->b:F

    sub-float/2addr v0, v3

    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, v1, v0}, Lcom/github/mikephil/charting/listener/b;->b(Landroid/view/MotionEvent;FF)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->h:Lcom/github/mikephil/charting/g/e;

    iget v1, v1, Lcom/github/mikephil/charting/g/e;->a:F

    sub-float v1, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->h:Lcom/github/mikephil/charting/g/e;

    iget v3, v3, Lcom/github/mikephil/charting/g/e;->b:F

    sub-float/2addr v0, v3

    neg-float v0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->h:Lcom/github/mikephil/charting/g/e;

    iget v1, v1, Lcom/github/mikephil/charting/g/e;->a:F

    sub-float v1, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->h:Lcom/github/mikephil/charting/g/e;

    iget v3, v3, Lcom/github/mikephil/charting/g/e;->b:F

    sub-float/2addr v0, v3

    goto :goto_0
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v9, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v6

    invoke-static {p1}, Lcom/github/mikephil/charting/listener/a;->g(Landroid/view/MotionEvent;)F

    move-result v3

    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->s:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->i:Lcom/github/mikephil/charting/g/e;

    iget v0, v0, Lcom/github/mikephil/charting/g/e;->a:F

    iget-object v5, p0, Lcom/github/mikephil/charting/listener/a;->i:Lcom/github/mikephil/charting/g/e;

    iget v5, v5, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {p0, v0, v5}, Lcom/github/mikephil/charting/listener/a;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v7

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/g/j;

    move-result-object v8

    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_8

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->e:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->l:F

    div-float/2addr v3, v0

    cmpg-float v0, v3, v4

    if-gez v0, :cond_3

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v8}, Lcom/github/mikephil/charting/g/j;->w()Z

    move-result v0

    move v5, v0

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v8}, Lcom/github/mikephil/charting/g/j;->y()Z

    move-result v0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v3

    :goto_3
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_4
    if-nez v1, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget v1, v7, Lcom/github/mikephil/charting/g/e;->a:F

    iget v4, v7, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz v6, :cond_1

    invoke-interface {v6, p1, v2, v3}, Lcom/github/mikephil/charting/listener/b;->a(Landroid/view/MotionEvent;FF)V

    :cond_1
    :goto_5
    invoke-static {v7}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Lcom/github/mikephil/charting/g/j;->x()Z

    move-result v0

    move v5, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Lcom/github/mikephil/charting/g/j;->z()Z

    move-result v0

    move v1, v0

    goto :goto_2

    :cond_6
    move v2, v4

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    if-ne v0, v9, :cond_b

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->c:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    invoke-static {p1}, Lcom/github/mikephil/charting/listener/a;->h(Landroid/view/MotionEvent;)F

    move-result v0

    iget v3, p0, Lcom/github/mikephil/charting/listener/a;->j:F

    div-float v3, v0, v3

    cmpg-float v0, v3, v4

    if-gez v0, :cond_9

    :goto_6
    if-eqz v1, :cond_a

    invoke-virtual {v8}, Lcom/github/mikephil/charting/g/j;->w()Z

    move-result v0

    :goto_7
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget v1, v7, Lcom/github/mikephil/charting/g/e;->a:F

    iget v2, v7, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz v6, :cond_1

    invoke-interface {v6, p1, v3, v4}, Lcom/github/mikephil/charting/listener/b;->a(Landroid/view/MotionEvent;FF)V

    goto :goto_5

    :cond_9
    move v1, v2

    goto :goto_6

    :cond_a
    invoke-virtual {v8}, Lcom/github/mikephil/charting/g/j;->x()Z

    move-result v0

    goto :goto_7

    :cond_b
    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->d:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    invoke-static {p1}, Lcom/github/mikephil/charting/listener/a;->i(Landroid/view/MotionEvent;)F

    move-result v0

    iget v3, p0, Lcom/github/mikephil/charting/listener/a;->k:F

    div-float v3, v0, v3

    cmpg-float v0, v3, v4

    if-gez v0, :cond_c

    move v0, v1

    :goto_8
    if-eqz v0, :cond_d

    invoke-virtual {v8}, Lcom/github/mikephil/charting/g/j;->y()Z

    move-result v0

    :goto_9
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget v1, v7, Lcom/github/mikephil/charting/g/e;->a:F

    iget v2, v7, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz v6, :cond_1

    invoke-interface {v6, p1, v4, v3}, Lcom/github/mikephil/charting/listener/b;->a(Landroid/view/MotionEvent;FF)V

    goto/16 :goto_5

    :cond_c
    move v0, v2

    goto :goto_8

    :cond_d
    invoke-virtual {v8}, Lcom/github/mikephil/charting/g/j;->z()Z

    move-result v0

    goto :goto_9
.end method

.method private f(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(FF)Lcom/github/mikephil/charting/d/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->c:Lcom/github/mikephil/charting/d/d;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/d/d;->a(Lcom/github/mikephil/charting/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/github/mikephil/charting/listener/a;->c:Lcom/github/mikephil/charting/d/d;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcom/github/mikephil/charting/d/d;Z)V

    :cond_0
    return-void
.end method

.method private static g(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static h(Landroid/view/MotionEvent;)F
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private static i(Landroid/view/MotionEvent;)F
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public a(FF)Lcom/github/mikephil/charting/g/e;
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/g/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->a()F

    move-result v0

    sub-float v2, p1, v0

    invoke-direct {p0}, Lcom/github/mikephil/charting/listener/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->c()F

    move-result v0

    sub-float v0, p2, v0

    neg-float v0, v0

    :goto_0
    invoke-static {v2, v0}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->d()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lcom/github/mikephil/charting/g/e;

    iput v1, v0, Lcom/github/mikephil/charting/g/e;->a:F

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lcom/github/mikephil/charting/g/e;

    iput v1, v0, Lcom/github/mikephil/charting/g/e;->b:F

    return-void
.end method

.method public b()V
    .locals 10

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lcom/github/mikephil/charting/g/e;

    iget v0, v0, Lcom/github/mikephil/charting/g/e;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lcom/github/mikephil/charting/g/e;

    iget v0, v0, Lcom/github/mikephil/charting/g/e;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->q:Lcom/github/mikephil/charting/g/e;

    iget v4, v3, Lcom/github/mikephil/charting/g/e;->a:F

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getDragDecelerationFrictionCoef()F

    move-result v2

    mul-float/2addr v2, v4

    iput v2, v3, Lcom/github/mikephil/charting/g/e;->a:F

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->q:Lcom/github/mikephil/charting/g/e;

    iget v4, v3, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getDragDecelerationFrictionCoef()F

    move-result v2

    mul-float/2addr v2, v4

    iput v2, v3, Lcom/github/mikephil/charting/g/e;->b:F

    iget-wide v2, p0, Lcom/github/mikephil/charting/listener/a;->o:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->q:Lcom/github/mikephil/charting/g/e;

    iget v3, v3, Lcom/github/mikephil/charting/g/e;->a:F

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/a;->q:Lcom/github/mikephil/charting/g/e;

    iget v4, v4, Lcom/github/mikephil/charting/g/e;->b:F

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/a;->p:Lcom/github/mikephil/charting/g/e;

    iget v5, v4, Lcom/github/mikephil/charting/g/e;->a:F

    add-float/2addr v3, v5

    iput v3, v4, Lcom/github/mikephil/charting/g/e;->a:F

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->p:Lcom/github/mikephil/charting/g/e;

    iget v4, v3, Lcom/github/mikephil/charting/g/e;->b:F

    add-float/2addr v2, v4

    iput v2, v3, Lcom/github/mikephil/charting/g/e;->b:F

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->p:Lcom/github/mikephil/charting/g/e;

    iget v5, v2, Lcom/github/mikephil/charting/g/e;->a:F

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->p:Lcom/github/mikephil/charting/g/e;

    iget v6, v2, Lcom/github/mikephil/charting/g/e;->b:F

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/github/mikephil/charting/listener/a;->d(Landroid/view/MotionEvent;)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/g/j;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v2, v3, v4, v7}, Lcom/github/mikephil/charting/g/j;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iput-wide v0, p0, Lcom/github/mikephil/charting/listener/a;->o:J

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lcom/github/mikephil/charting/g/e;

    iget v0, v0, Lcom/github/mikephil/charting/g/e;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v8

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lcom/github/mikephil/charting/g/e;

    iget v0, v0, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v8

    if-ltz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j()V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/a;->a()V

    goto/16 :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    const v3, 0x3fb33333    # 1.4f

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->h:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/listener/b;->b(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/b;->j()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/listener/a;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v5

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v3

    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget v1, v5, Lcom/github/mikephil/charting/g/e;->a:F

    iget v4, v5, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(FFFF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BarlineChartTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Double-Tap, Zooming In, x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Lcom/github/mikephil/charting/g/e;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v5}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->j:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/listener/b;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->i:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/listener/b;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->g:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/listener/b;->c(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(FF)Lcom/github/mikephil/charting/d/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/github/mikephil/charting/listener/a;->a(Lcom/github/mikephil/charting/d/d;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    return v8

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getViewPortHandler()Lcom/github/mikephil/charting/g/j;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0, v1, v2, v8}, Lcom/github/mikephil/charting/g/j;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/a;->a(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/a;->a()V

    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/a;->c(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y()V

    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/a;->c(Landroid/view/MotionEvent;)V

    invoke-static {p2}, Lcom/github/mikephil/charting/listener/a;->h(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/listener/a;->j:F

    invoke-static {p2}, Lcom/github/mikephil/charting/listener/a;->i(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/listener/a;->k:F

    invoke-static {p2}, Lcom/github/mikephil/charting/listener/a;->g(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/listener/a;->l:F

    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->l:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    iput v10, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->i:Lcom/github/mikephil/charting/g/e;

    invoke-static {v0, p2}, Lcom/github/mikephil/charting/listener/a;->a(Lcom/github/mikephil/charting/g/e;Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m()Z

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n()Z

    move-result v0

    if-eq v3, v0, :cond_8

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->j:F

    iget v3, p0, Lcom/github/mikephil/charting/listener/a;->k:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    :goto_4
    iput v1, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_4

    :pswitch_3
    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    if-ne v0, v8, :cond_a

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y()V

    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/a;->d(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_a
    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    if-eq v0, v2, :cond_b

    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    if-ne v0, v10, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y()V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_c
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/a;->e(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_d
    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->h:Lcom/github/mikephil/charting/g/e;

    iget v1, v1, Lcom/github/mikephil/charting/g/e;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->h:Lcom/github/mikephil/charting/g/e;

    iget v3, v3, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-static {v0, v1, v2, v3}, Lcom/github/mikephil/charting/listener/a;->a(FFFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/listener/a;->r:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    iput v8, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    goto/16 :goto_1

    :cond_e
    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->b:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/a;->f(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->b:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput v8, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    const/16 v4, 0x3e8

    invoke-static {}, Lcom/github/mikephil/charting/g/i;->c()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {}, Lcom/github/mikephil/charting/g/i;->b()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {}, Lcom/github/mikephil/charting/g/i;->b()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_11

    :cond_10
    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    if-ne v0, v8, :cond_11

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/a;->a()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/github/mikephil/charting/listener/a;->o:J

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->p:Lcom/github/mikephil/charting/g/e;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Lcom/github/mikephil/charting/g/e;->a:F

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->p:Lcom/github/mikephil/charting/g/e;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lcom/github/mikephil/charting/g/e;

    iput v3, v0, Lcom/github/mikephil/charting/g/e;->a:F

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lcom/github/mikephil/charting/g/e;

    iput v4, v0, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(Landroid/view/View;)V

    :cond_11
    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    if-eq v0, v2, :cond_12

    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    if-eq v0, v10, :cond_12

    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    :cond_12
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j()V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    :cond_13
    iput v9, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->z()V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    :cond_14
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/a;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    invoke-static {p2, v0}, Lcom/github/mikephil/charting/g/i;->a(Landroid/view/MotionEvent;Landroid/view/VelocityTracker;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    goto/16 :goto_1

    :pswitch_6
    iput v9, p0, Lcom/github/mikephil/charting/listener/a;->b:I

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/a;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
