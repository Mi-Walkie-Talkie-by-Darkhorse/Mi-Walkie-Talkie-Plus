.class public abstract Lcom/github/mikephil/charting/f/a;
.super Lcom/github/mikephil/charting/f/o;
.source "AxisRenderer.java"


# instance fields
.field protected a:Lcom/github/mikephil/charting/components/a;

.field protected b:Lcom/github/mikephil/charting/g/g;

.field protected c:Landroid/graphics/Paint;

.field protected d:Landroid/graphics/Paint;

.field protected e:Landroid/graphics/Paint;

.field protected f:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/g/g;Lcom/github/mikephil/charting/components/a;)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/f/o;-><init>(Lcom/github/mikephil/charting/g/j;)V

    iput-object p2, p0, Lcom/github/mikephil/charting/f/a;->b:Lcom/github/mikephil/charting/g/g;

    iput-object p3, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->o:Lcom/github/mikephil/charting/g/j;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/a;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/a;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->c:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->c:Landroid/graphics/Paint;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/a;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->e:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/a;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->d:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected a(FF)V
    .locals 12

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/a;->j()I

    move-result v3

    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v4, v0

    if-eqz v3, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, v4, v0

    if-lez v0, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    const/4 v1, 0x0

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/github/mikephil/charting/components/a;->b:[F

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    const/4 v1, 0x0

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/github/mikephil/charting/components/a;->c:[F

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/github/mikephil/charting/components/a;->d:I

    :cond_1
    return-void

    :cond_2
    int-to-double v0, v3

    div-double v0, v4, v0

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/i;->a(D)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/a;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/a;->l()F

    move-result v2

    float-to-double v6, v2

    cmpg-double v2, v0, v6

    if-gez v2, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/a;->l()F

    move-result v0

    float-to-double v0, v0

    :cond_3
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    double-to-int v2, v8

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/github/mikephil/charting/g/i;->a(D)F

    move-result v2

    float-to-double v6, v2

    div-double v8, v0, v6

    double-to-int v2, v8

    const/4 v8, 0x5

    if-le v2, v8, :cond_4

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :cond_4
    iget-object v2, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/a;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    iget-object v6, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/a;->i()Z

    move-result v6

    if-eqz v6, :cond_a

    double-to-float v0, v4

    add-int/lit8 v1, v3, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    iput v3, v2, Lcom/github/mikephil/charting/components/a;->d:I

    iget-object v2, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/a;->b:[F

    array-length v2, v2

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    new-array v4, v3, [F

    iput-object v4, v2, Lcom/github/mikephil/charting/components/a;->b:[F

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_7

    iget-object v4, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v4, v4, Lcom/github/mikephil/charting/components/a;->b:[F

    aput p1, v4, v2

    float-to-double v4, p1

    add-double/2addr v4, v0

    double-to-float p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    move v2, v3

    :cond_8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v0, v4

    if-gez v3, :cond_11

    iget-object v3, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v3, Lcom/github/mikephil/charting/components/a;->e:I

    :goto_2
    iget-object v3, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/a;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v3, v3, Lcom/github/mikephil/charting/components/a;->c:[F

    array-length v3, v3

    if-ge v3, v2, :cond_9

    iget-object v3, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    new-array v4, v2, [F

    iput-object v4, v3, Lcom/github/mikephil/charting/components/a;->c:[F

    :cond_9
    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v3, v3, Lcom/github/mikephil/charting/components/a;->c:[F

    iget-object v4, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v4, v4, Lcom/github/mikephil/charting/components/a;->b:[F

    aget v4, v4, v0

    add-float/2addr v4, v1

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-nez v3, :cond_c

    const-wide/16 v4, 0x0

    :goto_4
    iget-object v3, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/a;->c()Z

    move-result v3

    if-eqz v3, :cond_b

    sub-double/2addr v4, v0

    :cond_b
    const-wide/16 v6, 0x0

    cmpl-double v3, v0, v6

    if-nez v3, :cond_d

    const-wide/16 v6, 0x0

    move-wide v10, v6

    :goto_5
    const-wide/16 v6, 0x0

    cmpl-double v3, v0, v6

    if-eqz v3, :cond_e

    move-wide v6, v4

    :goto_6
    cmpg-double v3, v6, v10

    if-gtz v3, :cond_e

    add-int/lit8 v8, v2, 0x1

    add-double v2, v6, v0

    move-wide v6, v2

    move v2, v8

    goto :goto_6

    :cond_c
    float-to-double v4, p1

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    goto :goto_4

    :cond_d
    float-to-double v6, p2

    div-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Lcom/github/mikephil/charting/g/i;->b(D)D

    move-result-wide v6

    move-wide v10, v6

    goto :goto_5

    :cond_e
    iget-object v3, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    iput v2, v3, Lcom/github/mikephil/charting/components/a;->d:I

    iget-object v3, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v3, v3, Lcom/github/mikephil/charting/components/a;->b:[F

    array-length v3, v3

    if-ge v3, v2, :cond_f

    iget-object v3, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    new-array v6, v2, [F

    iput-object v6, v3, Lcom/github/mikephil/charting/components/a;->b:[F

    :cond_f
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_8

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_10

    const-wide/16 v4, 0x0

    :cond_10
    iget-object v6, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v6, v6, Lcom/github/mikephil/charting/components/a;->b:[F

    double-to-float v7, v4

    aput v7, v6, v3

    add-double/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    iget-object v3, p0, Lcom/github/mikephil/charting/f/a;->a:Lcom/github/mikephil/charting/components/a;

    const/4 v4, 0x0

    iput v4, v3, Lcom/github/mikephil/charting/components/a;->e:I

    goto/16 :goto_2
.end method

.method public a(FFZ)V
    .locals 6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->o:Lcom/github/mikephil/charting/g/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->i()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->b:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/a;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/a;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/g/g;->a(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/a;->b:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/a;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/f/a;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/github/mikephil/charting/g/g;->a(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v3

    if-nez p3, :cond_1

    iget-wide v0, v3, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v1, v0

    iget-wide v4, v2, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v0, v4

    :goto_0
    invoke-static {v2}, Lcom/github/mikephil/charting/g/d;->a(Lcom/github/mikephil/charting/g/d;)V

    invoke-static {v3}, Lcom/github/mikephil/charting/g/d;->a(Lcom/github/mikephil/charting/g/d;)V

    move p2, v0

    move p1, v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/f/a;->a(FF)V

    return-void

    :cond_1
    iget-wide v0, v2, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v1, v0

    iget-wide v4, v3, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v0, v4

    goto :goto_0
.end method
