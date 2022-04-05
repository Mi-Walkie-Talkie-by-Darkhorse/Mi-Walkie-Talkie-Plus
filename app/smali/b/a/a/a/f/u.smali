.class public Lb/a/a/a/f/u;
.super Lb/a/a/a/f/t;


# instance fields
.field protected r:Landroid/graphics/Path;

.field protected s:Landroid/graphics/Path;

.field protected t:[F


# direct methods
.method public constructor <init>(Lb/a/a/a/g/j;Lcom/github/mikephil/charting/components/YAxis;Lb/a/a/a/g/g;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lb/a/a/a/f/t;-><init>(Lb/a/a/a/g/j;Lcom/github/mikephil/charting/components/YAxis;Lb/a/a/a/g/g;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lb/a/a/a/f/u;->r:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lb/a/a/a/f/u;->s:Landroid/graphics/Path;

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lb/a/a/a/f/u;->t:[F

    iget-object p1, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2

    aget v0, p3, p2

    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->i()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    aget p2, p3, p2

    iget-object p3, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {p3}, Lb/a/a/a/g/j;->e()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method public a(FFZ)V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->f()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->u()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lb/a/a/a/f/a;->c:Lb/a/a/a/g/g;

    iget-object p2, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {p2}, Lb/a/a/a/g/j;->g()F

    move-result p2

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->i()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lb/a/a/a/g/g;->b(FF)Lb/a/a/a/g/d;

    move-result-object p1

    iget-object p2, p0, Lb/a/a/a/f/a;->c:Lb/a/a/a/g/g;

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->h()F

    move-result v0

    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->i()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lb/a/a/a/g/g;->b(FF)Lb/a/a/a/g/d;

    move-result-object p2

    if-nez p3, :cond_0

    iget-wide v0, p1, Lb/a/a/a/g/d;->c:D

    double-to-float p3, v0

    iget-wide v0, p2, Lb/a/a/a/g/d;->c:D

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Lb/a/a/a/g/d;->c:D

    double-to-float p3, v0

    iget-wide v0, p1, Lb/a/a/a/g/d;->c:D

    :goto_0
    double-to-float v0, v0

    invoke-static {p1}, Lb/a/a/a/g/d;->a(Lb/a/a/a/g/d;)V

    invoke-static {p2}, Lb/a/a/a/g/d;->a(Lb/a/a/a/g/d;)V

    move p1, p3

    move p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lb/a/a/a/f/a;->a(FF)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lb/a/a/a/f/t;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v2}, Lb/a/a/a/g/j;->n()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lb/a/a/a/f/t;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->F()F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, p0, Lb/a/a/a/f/t;->q:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lb/a/a/a/f/a;->c:Lb/a/a/a/g/g;

    invoke-virtual {v1, v3, v3}, Lb/a/a/a/g/g;->a(FF)Lb/a/a/a/g/d;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/f/t;->i:Landroid/graphics/Paint;

    iget-object v3, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->E()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lb/a/a/a/f/t;->i:Landroid/graphics/Paint;

    iget-object v3, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->F()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lb/a/a/a/f/u;->r:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-wide v3, v1, Lb/a/a/a/g/d;->c:D

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iget-object v5, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v5}, Lb/a/a/a/g/j;->i()F

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-wide v5, v1, Lb/a/a/a/g/d;->c:D

    double-to-float v1, v5

    sub-float/2addr v1, v4

    iget-object v3, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v3}, Lb/a/a/a/g/j;->e()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lb/a/a/a/f/t;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;F[FF)V
    .locals 5

    iget-object v0, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/b;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/b;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v1, Lcom/github/mikephil/charting/components/a;->n:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/a;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->G()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/a;->n:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v2, v0, 0x2

    aget v2, p3, v2

    sub-float v3, p2, p4

    iget-object v4, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lb/a/a/a/f/t;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->n()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lb/a/a/a/f/t;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/a;->m()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lb/a/a/a/f/t;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/b;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/a;->u()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lb/a/a/a/f/u;->c()[F

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/b;->c()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/b;->b()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v1}, Lb/a/a/a/g/i;->a(F)F

    move-result v1

    iget-object v2, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    const-string v3, "Q"

    invoke-static {v2, v3}, Lb/a/a/a/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->y()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    iget-object v4, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->z()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v4

    sget-object v5, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v3, v5, :cond_2

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v4, v2, :cond_1

    iget-object v2, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v2}, Lb/a/a/a/g/j;->i()F

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v2}, Lb/a/a/a/g/j;->i()F

    move-result v2

    :goto_0
    sub-float/2addr v2, v1

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v4, v3, :cond_3

    iget-object v3, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v3}, Lb/a/a/a/g/j;->e()F

    move-result v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v3}, Lb/a/a/a/g/j;->e()F

    move-result v3

    :goto_1
    add-float/2addr v3, v2

    add-float v2, v3, v1

    :goto_2
    iget-object v1, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/b;->e()F

    move-result v1

    invoke-virtual {p0, p1, v2, v0, v1}, Lb/a/a/a/f/u;->a(Landroid/graphics/Canvas;F[FF)V

    :cond_4
    :goto_3
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/a;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/f/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lb/a/a/a/f/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/a;->i()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->y()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->g()F

    move-result v2

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->i()F

    move-result v3

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->h()F

    move-result v4

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->i()F

    move-result v5

    iget-object v6, p0, Lb/a/a/a/f/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->g()F

    move-result v2

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->e()F

    move-result v3

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->h()F

    move-result v4

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->e()F

    move-result v5

    iget-object v6, p0, Lb/a/a/a/f/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected c()[F
    .locals 4

    iget-object v0, p0, Lb/a/a/a/f/t;->l:[F

    array-length v0, v0

    iget-object v1, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/a;->n:I

    mul-int/lit8 v2, v1, 0x2

    if-eq v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [F

    iput-object v0, p0, Lb/a/a/a/f/t;->l:[F

    :cond_0
    iget-object v0, p0, Lb/a/a/a/f/t;->l:[F

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/a;->l:[F

    div-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lb/a/a/a/f/a;->c:Lb/a/a/a/g/g;

    invoke-virtual {v1, v0}, Lb/a/a/a/g/g;->b([F)V

    return-object v0
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/a;->o()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v3, v0, Lb/a/a/a/f/u;->t:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v6, 0x1

    aput v4, v3, v6

    const/4 v7, 0x2

    aput v4, v3, v7

    const/4 v8, 0x3

    aput v4, v3, v8

    iget-object v9, v0, Lb/a/a/a/f/u;->s:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/github/mikephil/charting/components/LimitLine;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/b;->f()Z

    move-result v12

    if-nez v12, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    iget-object v13, v0, Lb/a/a/a/f/t;->q:Landroid/graphics/RectF;

    iget-object v14, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v14}, Lb/a/a/a/g/j;->n()Landroid/graphics/RectF;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v13, v0, Lb/a/a/a/f/t;->q:Landroid/graphics/RectF;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->l()F

    move-result v14

    neg-float v14, v14

    invoke-virtual {v13, v14, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v13, v0, Lb/a/a/a/f/t;->q:Landroid/graphics/RectF;

    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->j()F

    move-result v13

    aput v13, v3, v5

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->j()F

    move-result v13

    aput v13, v3, v7

    iget-object v13, v0, Lb/a/a/a/f/a;->c:Lb/a/a/a/g/g;

    invoke-virtual {v13, v3}, Lb/a/a/a/g/g;->b([F)V

    iget-object v13, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v13}, Lb/a/a/a/g/j;->i()F

    move-result v13

    aput v13, v3, v6

    iget-object v13, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v13}, Lb/a/a/a/g/j;->e()F

    move-result v13

    aput v13, v3, v8

    aget v13, v3, v5

    aget v14, v3, v6

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    aget v13, v3, v7

    aget v14, v3, v8

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v13, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v13, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->k()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v13, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->g()Landroid/graphics/DashPathEffect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v13, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->l()F

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v13, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->h()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    iget-object v14, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->m()Landroid/graphics/Paint$Style;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v14, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v14, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/b;->a()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v14, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/b;->c()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v14, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v14, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/b;->b()F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->l()F

    move-result v14

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/b;->d()F

    move-result v15

    add-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v15}, Lb/a/a/a/g/i;->a(F)F

    move-result v15

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/b;->e()F

    move-result v16

    add-float v15, v15, v16

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/LimitLine;->i()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    move-result-object v11

    sget-object v4, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->c:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v11, v4, :cond_2

    iget-object v4, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-static {v4, v13}, Lb/a/a/a/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    iget-object v11, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    aget v6, v3, v5

    add-float/2addr v6, v14

    iget-object v11, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v11}, Lb/a/a/a/g/j;->i()F

    move-result v11

    add-float/2addr v11, v15

    add-float/2addr v11, v4

    iget-object v4, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v6, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->d:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v11, v4, :cond_3

    iget-object v4, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    aget v4, v3, v5

    add-float/2addr v4, v14

    iget-object v6, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v6}, Lb/a/a/a/g/j;->e()F

    move-result v6

    sub-float/2addr v6, v15

    iget-object v11, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v4, v6, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->a:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v11, v4, :cond_4

    iget-object v4, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v4, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-static {v4, v13}, Lb/a/a/a/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    aget v6, v3, v5

    sub-float/2addr v6, v14

    iget-object v11, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v11}, Lb/a/a/a/g/j;->i()F

    move-result v11

    add-float/2addr v11, v15

    add-float/2addr v11, v4

    iget-object v4, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v6, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    aget v4, v3, v5

    sub-float/2addr v4, v14

    iget-object v6, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v6}, Lb/a/a/a/g/j;->e()F

    move-result v6

    sub-float/2addr v6, v15

    iget-object v11, v0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v4, v6, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_1
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method
