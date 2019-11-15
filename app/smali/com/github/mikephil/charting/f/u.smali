.class public Lcom/github/mikephil/charting/f/u;
.super Lcom/github/mikephil/charting/f/t;
.source "YAxisRendererHorizontalBarChart.java"


# instance fields
.field protected r:Landroid/graphics/Path;

.field protected s:Landroid/graphics/Path;

.field protected t:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/g/g;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/f/t;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/g/g;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/u;->r:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/u;->s:Landroid/graphics/Path;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/u;->t:[F

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2

    aget v0, p3, p2

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    aget v0, p3, p2

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method public a(FFZ)V
    .locals 6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->j()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->b:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/g/g;->a(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->b:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/github/mikephil/charting/g/g;->a(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v3

    if-nez p3, :cond_1

    iget-wide v0, v2, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v1, v0

    iget-wide v4, v3, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v0, v4

    :goto_0
    invoke-static {v2}, Lcom/github/mikephil/charting/g/d;->a(Lcom/github/mikephil/charting/g/d;)V

    invoke-static {v3}, Lcom/github/mikephil/charting/g/d;->a(Lcom/github/mikephil/charting/g/d;)V

    move p2, v0

    move p1, v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/f/u;->a(FF)V

    return-void

    :cond_1
    iget-wide v0, v3, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v1, v0

    iget-wide v4, v2, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v0, v4

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/f/u;->c()[F

    move-result-object v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->u()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->v()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->w()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->d:Landroid/graphics/Paint;

    const-string v3, "Q"

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->y()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    iget-object v4, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->B()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v4

    sget-object v5, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v3, v5, :cond_3

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v4, v2, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    sub-float v0, v2, v0

    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->t()F

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/github/mikephil/charting/f/u;->a(Landroid/graphics/Canvas;F[FF)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    sub-float v0, v2, v0

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v4, v3, :cond_4

    iget-object v3, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Canvas;F[FF)V
    .locals 5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->u()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->v()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->d:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/YAxis;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->C()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->d:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    mul-int/lit8 v2, v0, 0x2

    aget v2, p3, v2

    sub-float v3, p2, p4

    iget-object v4, p0, Lcom/github/mikephil/charting/f/u;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/a;->f()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->y()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/u;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/u;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected c()[F
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->k:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->d:I

    mul-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->d:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/u;->k:[F

    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->k:[F

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/YAxis;->b:[F

    div-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->b:Lcom/github/mikephil/charting/g/g;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/g/g;->a([F)V

    return-object v1
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->I()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->q:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->b:Lcom/github/mikephil/charting/g/g;

    invoke-virtual {v1, v3, v3}, Lcom/github/mikephil/charting/g/g;->b(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->h:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->H()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->h:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->I()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/github/mikephil/charting/f/u;->r:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-wide v4, v1, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v3, v4

    sub-float/2addr v3, v6

    iget-object v4, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-wide v4, v1, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v1, v4

    sub-float/2addr v1, v6

    iget-object v3, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/u;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->m()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/f/u;->t:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v3, v0

    iget-object v4, p0, Lcom/github/mikephil/charting/f/u;->s:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

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

    iget-object v6, p0, Lcom/github/mikephil/charting/f/u;->q:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/u;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->b()F

    move-result v7

    neg-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/u;->q:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->a()F

    move-result v7

    aput v7, v3, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->a()F

    move-result v7

    aput v7, v3, v6

    iget-object v6, p0, Lcom/github/mikephil/charting/f/u;->b:Lcom/github/mikephil/charting/g/g;

    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/g/g;->a([F)V

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v7

    aput v7, v3, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v7

    aput v7, v3, v6

    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v6, 0x2

    aget v6, v3, v6

    const/4 v7, 0x3

    aget v7, v3, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->d()Landroid/graphics/DashPathEffect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v6, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->b()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->g()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->e()Landroid/graphics/Paint$Style;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->w()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->u()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v7, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->v()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->b()F

    move-result v7

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->s()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v8

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->t()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->f()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    move-result-object v0

    sget-object v9, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->c:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v0, v9, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-static {v0, v6}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iget-object v9, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v9, 0x0

    aget v9, v3, v9

    add-float/2addr v7, v9

    iget-object v9, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v0, v8

    iget-object v8, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    :cond_4
    sget-object v9, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->d:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v0, v9, :cond_5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v0, 0x0

    aget v0, v3, v0

    add-float/2addr v0, v7

    iget-object v7, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v7

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    sget-object v9, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->a:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v0, v9, :cond_6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-static {v0, v6}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/4 v9, 0x0

    aget v9, v3, v9

    sub-float v7, v9, v7

    iget-object v9, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v0, v8

    iget-object v8, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v0, 0x0

    aget v0, v3, v0

    sub-float/2addr v0, v7

    iget-object v7, p0, Lcom/github/mikephil/charting/f/u;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v7

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/github/mikephil/charting/f/u;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method
