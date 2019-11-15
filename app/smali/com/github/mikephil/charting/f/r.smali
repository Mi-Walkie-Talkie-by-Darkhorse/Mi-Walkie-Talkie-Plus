.class public Lcom/github/mikephil/charting/f/r;
.super Lcom/github/mikephil/charting/f/q;
.source "XAxisRendererHorizontalBarChart.java"


# instance fields
.field protected n:Lcom/github/mikephil/charting/charts/BarChart;

.field protected p:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/g/g;Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/f/q;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/g/g;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/r;->p:Landroid/graphics/Path;

    iput-object p4, p0, Lcom/github/mikephil/charting/f/r;->n:Lcom/github/mikephil/charting/charts/BarChart;

    return-void
.end method


# virtual methods
.method public a(FFZ)V
    .locals 6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->i()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->b:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/g/g;->a(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->b:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/github/mikephil/charting/g/g;->a(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v3

    if-eqz p3, :cond_1

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
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/f/r;->a(FF)V

    return-void

    :cond_1
    iget-wide v0, v2, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v1, v0

    iget-wide v4, v3, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v0, v4

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->s()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->u()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->v()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v5, v5}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->a:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_2

    iput v5, v1, Lcom/github/mikephil/charting/g/e;->a:F

    iput v4, v1, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mikephil/charting/f/r;->a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V

    :goto_1
    invoke-static {v1}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->d:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_3

    iput v6, v1, Lcom/github/mikephil/charting/g/e;->a:F

    iput v4, v1, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v2

    sub-float v0, v2, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mikephil/charting/f/r;->a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->b:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_4

    iput v6, v1, Lcom/github/mikephil/charting/g/e;->a:F

    iput v4, v1, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v2

    sub-float v0, v2, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mikephil/charting/f/r;->a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->e:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_5

    iput v6, v1, Lcom/github/mikephil/charting/g/e;->a:F

    iput v4, v1, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mikephil/charting/f/r;->a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V

    goto :goto_1

    :cond_5
    iput v5, v1, Lcom/github/mikephil/charting/g/e;->a:F

    iput v4, v1, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {p0, p1, v2, v1}, Lcom/github/mikephil/charting/f/r;->a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V

    iput v6, v1, Lcom/github/mikephil/charting/g/e;->a:F

    iput v4, v1, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v2

    sub-float v0, v2, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mikephil/charting/f/r;->a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v0

    invoke-virtual {p4, v0, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v0

    invoke-virtual {p4, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->z()F

    move-result v6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->c()Z

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->d:I

    mul-int/lit8 v0, v0, 0x2

    new-array v8, v0, [F

    move v0, v1

    :goto_0
    array-length v3, v8

    if-ge v0, v3, :cond_1

    if-eqz v2, :cond_0

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v4, v4, Lcom/github/mikephil/charting/components/XAxis;->c:[F

    div-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    aput v4, v8, v3

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v4, v4, Lcom/github/mikephil/charting/components/XAxis;->b:[F

    div-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    aput v4, v8, v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->b:Lcom/github/mikephil/charting/g/g;

    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/g/g;->a([F)V

    move v7, v1

    :goto_2
    array-length v0, v8

    if-ge v7, v0, :cond_3

    add-int/lit8 v0, v7, 0x1

    aget v4, v8, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/g/j;->f(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->p()Lcom/github/mikephil/charting/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/XAxis;->b:[F

    div-int/lit8 v2, v7, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-interface {v0, v1, v2}, Lcom/github/mikephil/charting/c/d;->a(FLcom/github/mikephil/charting/components/a;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/f/r;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/g/e;F)V

    :cond_2
    add-int/lit8 v1, v7, 0x2

    move v7, v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->a:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->d:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->c:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/r;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->b:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->e:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->c:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/r;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected c()V
    .locals 5

    const/high16 v4, 0x40600000    # 3.5f

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->u()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->v()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->d:Landroid/graphics/Paint;

    invoke-static {v1, v0}, Lcom/github/mikephil/charting/g/i;->c(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/g/b;

    move-result-object v0

    iget v1, v0, Lcom/github/mikephil/charting/g/b;->a:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->s()F

    move-result v2

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, v0, Lcom/github/mikephil/charting/g/b;->b:F

    iget v0, v0, Lcom/github/mikephil/charting/g/b;->a:F

    iget-object v3, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->z()F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/github/mikephil/charting/g/i;->a(FFF)Lcom/github/mikephil/charting/g/b;

    move-result-object v0

    iget-object v3, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v3, Lcom/github/mikephil/charting/components/XAxis;->B:I

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/components/XAxis;->C:I

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v0, Lcom/github/mikephil/charting/g/b;->a:F

    iget-object v3, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->s()F

    move-result v3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/github/mikephil/charting/components/XAxis;->D:I

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v0, Lcom/github/mikephil/charting/g/b;->b:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/components/XAxis;->E:I

    invoke-static {v0}, Lcom/github/mikephil/charting/g/b;->a(Lcom/github/mikephil/charting/g/b;)V

    return-void
.end method

.method public d()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->j:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/github/mikephil/charting/f/r;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/a;->f()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v1, p0, Lcom/github/mikephil/charting/f/r;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->m()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/f/r;->k:[F

    aput v12, v3, v0

    aput v12, v3, v11

    iget-object v4, p0, Lcom/github/mikephil/charting/f/r;->p:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/components/LimitLine;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->x()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    iget-object v6, p0, Lcom/github/mikephil/charting/f/r;->l:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/r;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->b()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v6, v12, v7}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/r;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v6, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->b()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->d()Landroid/graphics/DashPathEffect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->a()F

    move-result v6

    aput v6, v3, v11

    iget-object v6, p0, Lcom/github/mikephil/charting/f/r;->b:Lcom/github/mikephil/charting/g/g;

    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/g/g;->a([F)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v6

    aget v7, v3, v11

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v6

    aget v7, v3, v11

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->g()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->e()Landroid/graphics/Paint$Style;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->w()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v7, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->v()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v7, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    invoke-static {v7, v6}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v8

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->s()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->b()F

    move-result v9

    add-float/2addr v9, v7

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->t()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->f()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    move-result-object v0

    sget-object v10, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->c:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v0, v10, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v0

    sub-float/2addr v0, v8

    aget v8, v3, v11

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    :cond_4
    sget-object v10, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->d:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v0, v10, :cond_5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v0

    sub-float/2addr v0, v8

    aget v7, v3, v11

    add-float/2addr v7, v9

    iget-object v8, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    sget-object v10, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->a:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v0, v10, :cond_6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v0

    add-float/2addr v0, v8

    aget v8, v3, v11

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/r;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->a()F

    move-result v0

    add-float/2addr v0, v8

    aget v7, v3, v11

    add-float/2addr v7, v9

    iget-object v8, p0, Lcom/github/mikephil/charting/f/r;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method
