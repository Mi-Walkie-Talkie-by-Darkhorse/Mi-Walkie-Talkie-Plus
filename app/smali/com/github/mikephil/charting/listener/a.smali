.class public Lcom/github/mikephil/charting/listener/a;
.super Lcom/github/mikephil/charting/listener/ChartTouchListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/listener/ChartTouchListener<",
        "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
        "+",
        "Lcom/github/mikephil/charting/data/b<",
        "+",
        "Lb/a/a/a/e/b/b<",
        "+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field private f:Landroid/graphics/Matrix;

.field private g:Landroid/graphics/Matrix;

.field private h:Lb/a/a/a/g/e;

.field private i:Lb/a/a/a/g/e;

.field private j:F

.field private k:F

.field private l:F

.field private m:Lb/a/a/a/e/b/e;

.field private n:Landroid/view/VelocityTracker;

.field private o:J

.field private p:Lb/a/a/a/g/e;

.field private q:Lb/a/a/a/g/e;

.field private r:F

.field private s:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
            "+",
            "Lcom/github/mikephil/charting/data/b<",
            "+",
            "Lb/a/a/a/e/b/b<",
            "+",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;>;>;",
            "Landroid/graphics/Matrix;",
            "F)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/listener/a;->g:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->h:Lb/a/a/a/g/e;

    invoke-static {p1, p1}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->i:Lb/a/a/a/g/e;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/listener/a;->j:F

    iput v0, p0, Lcom/github/mikephil/charting/listener/a;->k:F

    iput v0, p0, Lcom/github/mikephil/charting/listener/a;->l:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/mikephil/charting/listener/a;->o:J

    invoke-static {p1, p1}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->p:Lb/a/a/a/g/e;

    invoke-static {p1, p1}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/listener/a;->q:Lb/a/a/a/g/e;

    iput-object p2, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    invoke-static {p3}, Lb/a/a/a/g/i;->a(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/listener/a;->r:F

    const/high16 p1, 0x40600000    # 3.5f

    invoke-static {p1}, Lb/a/a/a/g/i;->a(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/listener/a;->s:F

    return-void
.end method

.method private static a(Lb/a/a/a/g/e;Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    iput v1, p0, Lb/a/a/a/g/e;->c:F

    div-float/2addr v0, p1

    iput v0, p0, Lb/a/a/a/g/e;->d:F

    return-void
.end method

.method private static c(Landroid/view/MotionEvent;)F
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->m:Lb/a/a/a/e/b/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->m:Lb/a/a/a/e/b/e;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-interface {v0}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static d(Landroid/view/MotionEvent;)F
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 4

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->b:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/github/mikephil/charting/listener/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    instance-of v1, v1, Lcom/github/mikephil/charting/charts/HorizontalBarChart;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->h:Lb/a/a/a/g/e;

    iget v2, v2, Lb/a/a/a/g/e;->c:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->h:Lb/a/a/a/g/e;

    iget v3, v3, Lb/a/a/a/g/e;->d:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->h:Lb/a/a/a/g/e;

    iget v2, v2, Lb/a/a/a/g/e;->c:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->h:Lb/a/a/a/g/e;

    iget v3, v3, Lb/a/a/a/g/e;->d:F

    sub-float/2addr v2, v3

    neg-float v2, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->h:Lb/a/a/a/g/e;

    iget v2, v2, Lb/a/a/a/g/e;->c:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->h:Lb/a/a/a/g/e;

    iget v3, v3, Lb/a/a/a/g/e;->d:F

    :goto_0
    sub-float/2addr v2, v3

    :goto_1
    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, v1, v2}, Lcom/github/mikephil/charting/listener/b;->b(Landroid/view/MotionEvent;FF)V

    :cond_2
    return-void
.end method

.method private f(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/github/mikephil/charting/charts/Chart;->a(FF)Lb/a/a/a/d/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->c:Lb/a/a/a/d/d;

    invoke-virtual {p1, v0}, Lb/a/a/a/d/d;->a(Lb/a/a/a/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->c:Lb/a/a/a/d/d;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/github/mikephil/charting/charts/Chart;->a(Lb/a/a/a/d/d;Z)V

    :cond_0
    return-void
.end method

.method private g(Landroid/view/MotionEvent;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v0

    invoke-static {p1}, Lcom/github/mikephil/charting/listener/a;->i(Landroid/view/MotionEvent;)F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/listener/a;->s:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_d

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->i:Lb/a/a/a/g/e;

    iget v4, v3, Lb/a/a/a/g/e;->c:F

    iget v3, v3, Lb/a/a/a/g/e;->d:F

    invoke-virtual {p0, v4, v3}, Lcom/github/mikephil/charting/listener/a;->a(FF)Lb/a/a/a/g/e;

    move-result-object v3

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lb/a/a/a/g/j;

    move-result-object v4

    iget v5, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne v5, v6, :cond_6

    sget-object v1, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->e:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget v1, p0, Lcom/github/mikephil/charting/listener/a;->l:F

    div-float/2addr v2, v1

    cmpg-float v1, v2, v9

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lb/a/a/a/g/j;->c()Z

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lb/a/a/a/g/j;->a()Z

    move-result v1

    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lb/a/a/a/g/j;->d()Z

    move-result v4

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lb/a/a/a/g/j;->b()Z

    move-result v4

    :goto_2
    iget-object v5, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v5, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_3
    iget-object v6, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v6, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y()Z

    move-result v6

    if-eqz v6, :cond_4

    move v9, v2

    :cond_4
    if-nez v4, :cond_5

    if-eqz v1, :cond_c

    :cond_5
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget v2, v3, Lb/a/a/a/g/e;->c:F

    iget v4, v3, Lb/a/a/a/g/e;->d:F

    invoke-virtual {v1, v5, v9, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, v5, v9}, Lcom/github/mikephil/charting/listener/b;->a(Landroid/view/MotionEvent;FF)V

    goto/16 :goto_8

    :cond_6
    if-ne v5, v1, :cond_9

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->c:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    invoke-static {p1}, Lcom/github/mikephil/charting/listener/a;->c(Landroid/view/MotionEvent;)F

    move-result v1

    iget v2, p0, Lcom/github/mikephil/charting/listener/a;->j:F

    div-float/2addr v1, v2

    cmpg-float v2, v1, v9

    if-gez v2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_8

    invoke-virtual {v4}, Lb/a/a/a/g/j;->c()Z

    move-result v2

    goto :goto_5

    :cond_8
    invoke-virtual {v4}, Lb/a/a/a/g/j;->a()Z

    move-result v2

    :goto_5
    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/a;->g:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget v4, v3, Lb/a/a/a/g/e;->c:F

    iget v5, v3, Lb/a/a/a/g/e;->d:F

    invoke-virtual {v2, v1, v9, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, v1, v9}, Lcom/github/mikephil/charting/listener/b;->a(Landroid/view/MotionEvent;FF)V

    goto :goto_8

    :cond_9
    iget v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->d:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    invoke-static {p1}, Lcom/github/mikephil/charting/listener/a;->d(Landroid/view/MotionEvent;)F

    move-result v1

    iget v2, p0, Lcom/github/mikephil/charting/listener/a;->k:F

    div-float/2addr v1, v2

    cmpg-float v2, v1, v9

    if-gez v2, :cond_a

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_b

    invoke-virtual {v4}, Lb/a/a/a/g/j;->d()Z

    move-result v2

    goto :goto_7

    :cond_b
    invoke-virtual {v4}, Lb/a/a/a/g/j;->b()Z

    move-result v2

    :goto_7
    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/github/mikephil/charting/listener/a;->g:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget v4, v3, Lb/a/a/a/g/e;->c:F

    iget v5, v3, Lb/a/a/a/g/e;->d:F

    invoke-virtual {v2, v9, v1, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, v9, v1}, Lcom/github/mikephil/charting/listener/b;->a(Landroid/view/MotionEvent;FF)V

    :cond_c
    :goto_8
    invoke-static {v3}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    :cond_d
    return-void
.end method

.method private h(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->h:Lb/a/a/a/g/e;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lb/a/a/a/g/e;->c:F

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->h:Lb/a/a/a/g/e;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lb/a/a/a/g/e;->d:F

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c(FF)Lb/a/a/a/e/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/listener/a;->m:Lb/a/a/a/e/b/e;

    return-void
.end method

.method private static i(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public a(FF)Lb/a/a/a/g/e;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lb/a/a/a/g/j;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/g/j;->x()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-direct {p0}, Lcom/github/mikephil/charting/listener/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lb/a/a/a/g/j;->z()F

    move-result v0

    sub-float/2addr p2, v0

    neg-float p2, p2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-virtual {v0}, Lb/a/a/a/g/j;->w()F

    move-result p2

    sub-float/2addr v1, p2

    neg-float p2, v1

    :goto_0
    invoke-static {p1, p2}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 11

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lb/a/a/a/g/e;

    iget v1, v0, Lb/a/a/a/g/e;->c:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v0, v0, Lb/a/a/a/g/e;->d:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lb/a/a/a/g/e;

    iget v1, v0, Lb/a/a/a/g/e;->c:F

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->getDragDecelerationFrictionCoef()F

    move-result v2

    mul-float v1, v1, v2

    iput v1, v0, Lb/a/a/a/g/e;->c:F

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lb/a/a/a/g/e;

    iget v1, v0, Lb/a/a/a/g/e;->d:F

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->getDragDecelerationFrictionCoef()F

    move-result v2

    mul-float v1, v1, v2

    iput v1, v0, Lb/a/a/a/g/e;->d:F

    iget-wide v0, p0, Lcom/github/mikephil/charting/listener/a;->o:J

    sub-long v0, v9, v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->q:Lb/a/a/a/g/e;

    iget v2, v1, Lb/a/a/a/g/e;->c:F

    mul-float v2, v2, v0

    iget v1, v1, Lb/a/a/a/g/e;->d:F

    mul-float v1, v1, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->p:Lb/a/a/a/g/e;

    iget v3, v0, Lb/a/a/a/g/e;->c:F

    add-float v6, v3, v2

    iput v6, v0, Lb/a/a/a/g/e;->c:F

    iget v2, v0, Lb/a/a/a/g/e;->d:F

    add-float v7, v2, v1

    iput v7, v0, Lb/a/a/a/g/e;->d:F

    const/4 v5, 0x2

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/mikephil/charting/listener/a;->e(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lb/a/a/a/g/j;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lb/a/a/a/g/j;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iput-wide v9, p0, Lcom/github/mikephil/charting/listener/a;->o:J

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lb/a/a/a/g/e;

    iget v0, v0, Lb/a/a/a/g/e;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v0, v2

    if-gez v4, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lb/a/a/a/g/e;

    iget v0, v0, Lb/a/a/a/g/e;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d()V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/a;->b()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {v0}, Lb/a/a/a/g/i;->a(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->q:Lb/a/a/a/g/e;

    const/4 v1, 0x0

    iput v1, v0, Lb/a/a/a/g/e;->c:F

    iput v1, v0, Lb/a/a/a/g/e;->d:F

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->h:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/listener/b;->c(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/b;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->d()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/listener/a;->a(FF)Lb/a/a/a/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    move-object v2, v1

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x()Z

    move-result v1

    const v3, 0x3fb33333    # 1.4f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    const v1, 0x3fb33333    # 1.4f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v5, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v5, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    iget v4, v0, Lb/a/a/a/g/e;->c:F

    iget v5, v0, Lb/a/a/a/g/e;->d:F

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(FFFF)V

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Double-Tap, Zooming In, x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lb/a/a/a/g/e;->c:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lb/a/a/a/g/e;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BarlineChartTouch"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v0}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    :cond_4
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->j:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/listener/b;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->i:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/listener/b;->b(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->g:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/listener/b;->a(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->j()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/Chart;->a(FF)Lb/a/a/a/d/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a(Lb/a/a/a/d/d;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    :cond_1
    iget p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->d:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y()Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_19

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eq p1, v2, :cond_13

    if-eq p1, v6, :cond_c

    if-eq p1, v1, :cond_b

    if-eq p1, v5, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object p1, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    invoke-static {p2, p1}, Lb/a/a/a/g/i;->a(Landroid/view/MotionEvent;Landroid/view/VelocityTracker;)V

    iput v5, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-lt p1, v6, :cond_1a

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->e()V

    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/a;->h(Landroid/view/MotionEvent;)V

    invoke-static {p2}, Lcom/github/mikephil/charting/listener/a;->c(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/listener/a;->j:F

    invoke-static {p2}, Lcom/github/mikephil/charting/listener/a;->d(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/listener/a;->k:F

    invoke-static {p2}, Lcom/github/mikephil/charting/listener/a;->i(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/listener/a;->l:F

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_a

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w()Z

    move-result p1

    if-eqz p1, :cond_6

    iput v3, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x()Z

    move-result p1

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y()Z

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v1, 0x2

    :cond_7
    iput v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    goto :goto_0

    :cond_8
    iget p1, p0, Lcom/github/mikephil/charting/listener/a;->j:F

    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->k:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    const/4 v1, 0x2

    :cond_9
    iput v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/github/mikephil/charting/listener/a;->i:Lb/a/a/a/g/e;

    invoke-static {p1, p2}, Lcom/github/mikephil/charting/listener/a;->a(Lb/a/a/a/g/e;Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_b
    iput v4, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_c
    iget p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    if-ne p1, v2, :cond_d

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->e()V

    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/a;->e(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_d
    if-eq p1, v6, :cond_11

    if-eq p1, v1, :cond_11

    if-ne p1, v3, :cond_e

    goto :goto_1

    :cond_e
    if-nez p1, :cond_1a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/a;->h:Lb/a/a/a/g/e;

    iget v0, v0, Lb/a/a/a/g/e;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/a;->h:Lb/a/a/a/g/e;

    iget v3, v3, Lb/a/a/a/g/e;->d:F

    invoke-static {p1, v0, v1, v3}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a(FFFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/github/mikephil/charting/listener/a;->r:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1a

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t()Z

    move-result p1

    if-eqz p1, :cond_f

    iput v2, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    goto/16 :goto_2

    :cond_f
    sget-object p1, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->b:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/a;->f(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_10
    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t()Z

    move-result p1

    if-eqz p1, :cond_1a

    sget-object p1, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->b:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput v2, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    goto/16 :goto_2

    :cond_11
    :goto_1
    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->e()V

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y()Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_12
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/a;->g(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_13
    iget-object p1, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    const/16 v8, 0x3e8

    invoke-static {}, Lb/a/a/a/g/i;->c()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v8

    invoke-virtual {p1, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Lb/a/a/a/g/i;->d()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_14

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Lb/a/a/a/g/i;->d()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_15

    :cond_14
    iget v7, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    if-ne v7, v2, :cond_15

    iget-object v7, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v7, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/Chart;->h()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/a;->b()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/github/mikephil/charting/listener/a;->o:J

    iget-object v7, p0, Lcom/github/mikephil/charting/listener/a;->p:Lb/a/a/a/g/e;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, v7, Lb/a/a/a/g/e;->c:F

    iget-object v7, p0, Lcom/github/mikephil/charting/listener/a;->p:Lb/a/a/a/g/e;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, v7, Lb/a/a/a/g/e;->d:F

    iget-object v7, p0, Lcom/github/mikephil/charting/listener/a;->q:Lb/a/a/a/g/e;

    iput p1, v7, Lb/a/a/a/g/e;->c:F

    iput v8, v7, Lb/a/a/a/g/e;->d:F

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {p1}, Lb/a/a/a/g/i;->a(Landroid/view/View;)V

    :cond_15
    iget p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    if-eq p1, v6, :cond_16

    if-eq p1, v1, :cond_16

    if-eq p1, v3, :cond_16

    if-ne p1, v5, :cond_17

    :cond_16
    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d()V

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_17
    iput v4, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b:I

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->f()V

    iget-object p1, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/a;->n:Landroid/view/VelocityTracker;

    :cond_18
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->a(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_19
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->b(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/a;->b()V

    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/listener/a;->h(Landroid/view/MotionEvent;)V

    :cond_1a
    :goto_2
    iget-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lb/a/a/a/g/j;

    move-result-object p1

    iget-object p2, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->e:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {p1, p2, v0, v2}, Lb/a/a/a/g/j;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    iput-object p2, p0, Lcom/github/mikephil/charting/listener/a;->f:Landroid/graphics/Matrix;

    return v2
.end method
