.class public Lcom/github/mikephil/charting/charts/PieChart;
.super Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/PieRadarChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/m;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:F

.field protected b:F

.field private e:Landroid/graphics/RectF;

.field private f:Z

.field private g:[F

.field private h:[F

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/CharSequence;

.field private n:Lcom/github/mikephil/charting/g/e;

.field private o:F

.field private p:Z

.field private q:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->e:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->f:Z

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->g:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->i:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->j:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->k:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->m:Ljava/lang/CharSequence;

    invoke-static {v3, v3}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->n:Lcom/github/mikephil/charting/g/e;

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->o:F

    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->a:F

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->p:Z

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->q:F

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->e:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->f:Z

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->g:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->i:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->j:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->k:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->m:Ljava/lang/CharSequence;

    invoke-static {v3, v3}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->n:Lcom/github/mikephil/charting/g/e;

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->o:F

    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->a:F

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->p:Z

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->q:F

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->e:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->f:Z

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->g:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->i:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->j:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->k:Z

    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->m:Ljava/lang/CharSequence;

    invoke-static {v3, v3}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->n:Lcom/github/mikephil/charting/g/e;

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->o:F

    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->a:F

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->p:Z

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->q:F

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->b:F

    return-void
.end method

.method private e(FF)F
    .locals 2

    div-float v0, p1, p2

    iget v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->b:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private k()V
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/m;->j()I

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->g:[F

    array-length v0, v0

    if-eq v0, v1, :cond_2

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->g:[F

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    array-length v0, v0

    if-eq v0, v1, :cond_3

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/m;->l()F

    move-result v6

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/m;->i()Ljava/util/List;

    move-result-object v7

    move v2, v3

    move v1, v3

    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/m;->d()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/i;

    move v5, v3

    move v4, v1

    :goto_1
    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/i;->s()I

    move-result v1

    if-ge v5, v1, :cond_5

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/PieChart;->g:[F

    invoke-interface {v0, v5}, Lcom/github/mikephil/charting/e/b/i;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieEntry;->b()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0, v1, v6}, Lcom/github/mikephil/charting/charts/PieChart;->e(FF)F

    move-result v1

    aput v1, v8, v4

    if-nez v4, :cond_4

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/PieChart;->g:[F

    aget v8, v8, v4

    aput v8, v1, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_3
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->g:[F

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_4
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/github/mikephil/charting/charts/PieChart;->g:[F

    aget v9, v9, v4

    add-float/2addr v8, v9

    aput v8, v1, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v4

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->c(F)F

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    aget v2, v2, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected a()V
    .locals 3

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a()V

    new-instance v0, Lcom/github/mikephil/charting/f/m;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->T:Lcom/github/mikephil/charting/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/f/m;-><init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    new-instance v0, Lcom/github/mikephil/charting/d/g;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/d/g;-><init>(Lcom/github/mikephil/charting/charts/PieChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->R:Lcom/github/mikephil/charting/d/f;

    return-void
.end method

.method public a(I)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->v()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->U:[Lcom/github/mikephil/charting/d/d;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->U:[Lcom/github/mikephil/charting/d/d;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/d/d;->a()F

    move-result v2

    float-to-int v2, v2

    if-ne v2, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected a(Lcom/github/mikephil/charting/d/d;)[F
    .locals 10

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/g/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v2

    const/high16 v0, 0x41200000    # 10.0f

    div-float v0, v2, v0

    const v3, 0x40666666    # 3.6f

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v0, v2, v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v3

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    div-float/2addr v0, v5

    :cond_0
    sub-float v0, v2, v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->a()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/PieChart;->g:[F

    aget v4, v4, v3

    div-float/2addr v4, v5

    float-to-double v6, v0

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    aget v5, v5, v3

    add-float/2addr v5, v2

    sub-float/2addr v5, v4

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/PieChart;->T:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v8

    mul-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget v5, v1, Lcom/github/mikephil/charting/g/e;->a:F

    float-to-double v8, v5

    add-double/2addr v6, v8

    double-to-float v5, v6

    float-to-double v6, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    aget v0, v0, v3

    add-float/2addr v0, v2

    sub-float/2addr v0, v4

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->T:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    iget v0, v1, Lcom/github/mikephil/charting/g/e;->b:F

    float-to-double v6, v0

    add-double/2addr v2, v6

    double-to-float v0, v2

    invoke-static {v1}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v5, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    return-object v1
.end method

.method protected b()V
    .locals 0

    invoke-direct {p0}, Lcom/github/mikephil/charting/charts/PieChart;->k()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->j:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->i:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->p:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->k:Z

    return v0
.end method

.method public getAbsoluteAngles()[F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->h:[F

    return-object v0
.end method

.method public getCenterCircleBox()Lcom/github/mikephil/charting/g/e;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    return-object v0
.end method

.method public getCenterText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->m:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCenterTextOffset()Lcom/github/mikephil/charting/g/e;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->n:Lcom/github/mikephil/charting/g/e;

    iget v0, v0, Lcom/github/mikephil/charting/g/e;->a:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->n:Lcom/github/mikephil/charting/g/e;

    iget v1, v1, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    return-object v0
.end method

.method public getCenterTextRadiusPercent()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->q:F

    return v0
.end method

.method public getCircleBox()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->e:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDrawAngles()[F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->g:[F

    return-object v0
.end method

.method public getHoleRadius()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->o:F

    return v0
.end method

.method public getMaxAngle()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->b:F

    return v0
.end method

.method public getRadius()F
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->e:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method protected getRequiredBaseOffset()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getRequiredLegendOffset()F
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->P:Lcom/github/mikephil/charting/f/i;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/i;->a()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getTransparentCircleRadius()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->a:F

    return v0
.end method

.method public getXAxis()Lcom/github/mikephil/charting/components/XAxis;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PieChart has no XAxis"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 8

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->j()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getDiameter()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterOffsets()Lcom/github/mikephil/charting/g/e;

    move-result-object v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/m;->a()Lcom/github/mikephil/charting/e/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/i;->z()F

    move-result v0

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieChart;->e:Landroid/graphics/RectF;

    iget v4, v2, Lcom/github/mikephil/charting/g/e;->a:F

    sub-float/2addr v4, v1

    add-float/2addr v4, v0

    iget v5, v2, Lcom/github/mikephil/charting/g/e;->b:F

    sub-float/2addr v5, v1

    add-float/2addr v5, v0

    iget v6, v2, Lcom/github/mikephil/charting/g/e;->a:F

    add-float/2addr v6, v1

    sub-float/2addr v6, v0

    iget v7, v2, Lcom/github/mikephil/charting/g/e;->b:F

    add-float/2addr v1, v7

    sub-float v0, v1, v0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v2}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    instance-of v0, v0, Lcom/github/mikephil/charting/f/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    check-cast v0, Lcom/github/mikephil/charting/f/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/m;->f()V

    :cond_0
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/g;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->U:[Lcom/github/mikephil/charting/d/d;

    invoke-virtual {v0, p1, v1}, Lcom/github/mikephil/charting/f/g;->a(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/d/d;)V

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/g;->c(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/g;->b(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->P:Lcom/github/mikephil/charting/f/i;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/i;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/PieChart;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/PieChart;->c(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setCenterText(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->m:Ljava/lang/CharSequence;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->m:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setCenterTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    check-cast v0, Lcom/github/mikephil/charting/f/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/m;->d()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method public setCenterTextOffset(FF)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->n:Lcom/github/mikephil/charting/g/e;

    invoke-static {p1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/g/e;->a:F

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->n:Lcom/github/mikephil/charting/g/e;

    invoke-static {p2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/g/e;->b:F

    return-void
.end method

.method public setCenterTextRadiusPercent(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->q:F

    return-void
.end method

.method public setCenterTextSize(F)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    check-cast v0, Lcom/github/mikephil/charting/f/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/m;->d()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public setCenterTextSizePixels(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    check-cast v0, Lcom/github/mikephil/charting/f/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/m;->d()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public setCenterTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    check-cast v0, Lcom/github/mikephil/charting/f/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/m;->d()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setDrawCenterText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->p:Z

    return-void
.end method

.method public setDrawEntryLabels(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->f:Z

    return-void
.end method

.method public setDrawHoleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->i:Z

    return-void
.end method

.method public setDrawSliceText(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->f:Z

    return-void
.end method

.method public setDrawSlicesUnderHole(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->j:Z

    return-void
.end method

.method public setEntryLabelColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    check-cast v0, Lcom/github/mikephil/charting/f/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/m;->e()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setEntryLabelTextSize(F)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    check-cast v0, Lcom/github/mikephil/charting/f/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/m;->e()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {p1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setEntryLabelTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    check-cast v0, Lcom/github/mikephil/charting/f/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/m;->e()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setHoleColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    check-cast v0, Lcom/github/mikephil/charting/f/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/m;->b()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setHoleRadius(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->o:F

    return-void
.end method

.method public setMaxAngle(F)V
    .locals 3

    const/high16 v1, 0x43b40000    # 360.0f

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    :goto_0
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    :goto_1
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->b:F

    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public setTransparentCircleAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    check-cast v0, Lcom/github/mikephil/charting/f/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/m;->c()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setTransparentCircleColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Lcom/github/mikephil/charting/f/g;

    check-cast v0, Lcom/github/mikephil/charting/f/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/m;->c()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setTransparentCircleRadius(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->a:F

    return-void
.end method

.method public setUsePercentValues(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->k:Z

    return-void
.end method
