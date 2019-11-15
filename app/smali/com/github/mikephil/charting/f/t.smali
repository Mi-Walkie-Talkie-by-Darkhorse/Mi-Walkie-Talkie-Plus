.class public Lcom/github/mikephil/charting/f/t;
.super Lcom/github/mikephil/charting/f/a;
.source "YAxisRenderer.java"


# instance fields
.field protected g:Lcom/github/mikephil/charting/components/YAxis;

.field protected h:Landroid/graphics/Paint;

.field protected i:Landroid/graphics/Path;

.field protected j:Landroid/graphics/RectF;

.field protected k:[F

.field protected l:Landroid/graphics/Path;

.field protected m:Landroid/graphics/RectF;

.field protected n:Landroid/graphics/Path;

.field protected p:[F

.field protected q:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/g/g;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p3, p2}, Lcom/github/mikephil/charting/f/a;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/g/g;Lcom/github/mikephil/charting/components/a;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/t;->i:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/t;->j:Landroid/graphics/RectF;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/t;->k:[F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/t;->l:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/t;->m:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/t;->n:Landroid/graphics/Path;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/t;->p:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/t;->q:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->d:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/t;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->h:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->a()F

    move-result v0

    add-int/lit8 v1, p2, 0x1

    aget v1, p3, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v0

    add-int/lit8 v1, p2, 0x1

    aget v1, p3, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/f/t;->c()[F

    move-result-object v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->u()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->v()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->w()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->s()F

    move-result v0

    iget-object v2, p0, Lcom/github/mikephil/charting/f/t;->d:Landroid/graphics/Paint;

    const-string v3, "A"

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->t()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->y()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    iget-object v4, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->B()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v4

    sget-object v5, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v3, v5, :cond_3

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v4, v3, :cond_2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->a()F

    move-result v3

    sub-float v0, v3, v0

    :goto_1
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/github/mikephil/charting/f/t;->a(Landroid/graphics/Canvas;F[FF)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->a()F

    move-result v3

    add-float/2addr v0, v3

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->a:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v4, v3, :cond_4

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v3

    add-float/2addr v0, v3

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v3

    sub-float v0, v3, v0

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Canvas;F[FF)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->d:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/YAxis;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->C()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->d:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    add-float/2addr v2, p4

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->j:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/github/mikephil/charting/f/t;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/a;->f()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->y()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/t;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/t;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->x()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/f/t;->b()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Lcom/github/mikephil/charting/f/t;->c()[F

    move-result-object v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->c:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->c:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->f()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->c:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->q()Landroid/graphics/DashPathEffect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->i:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    invoke-virtual {p0, v3, v0, v2}, Lcom/github/mikephil/charting/f/t;->a(Landroid/graphics/Path;I[F)Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/t;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/f/t;->d(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected c()[F
    .locals 5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->k:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->d:I

    mul-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->d:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/t;->k:[F

    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/f/t;->k:[F

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, v3, Lcom/github/mikephil/charting/components/YAxis;->b:[F

    div-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->b:Lcom/github/mikephil/charting/g/g;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/g/g;->a([F)V

    return-object v1
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/t;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/t;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->I()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/t;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/github/mikephil/charting/f/t;->b:Lcom/github/mikephil/charting/g/g;

    invoke-virtual {v1, v3, v3}, Lcom/github/mikephil/charting/g/g;->b(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/t;->h:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->H()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/github/mikephil/charting/f/t;->h:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->I()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/github/mikephil/charting/f/t;->l:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v3

    iget-wide v4, v1, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v3

    iget-wide v4, v1, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/t;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v1, p0, Lcom/github/mikephil/charting/f/t;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->m()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/f/t;->p:[F

    aput v12, v3, v0

    aput v12, v3, v11

    iget-object v4, p0, Lcom/github/mikephil/charting/f/t;->n:Landroid/graphics/Path;

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

    iget-object v6, p0, Lcom/github/mikephil/charting/f/t;->q:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/t;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->b()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v6, v12, v7}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/t;->q:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v6, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->b()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->d()Landroid/graphics/DashPathEffect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->a()F

    move-result v6

    aput v6, v3, v11

    iget-object v6, p0, Lcom/github/mikephil/charting/f/t;->b:Lcom/github/mikephil/charting/g/g;

    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/g/g;->a([F)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v6

    aget v7, v3, v11

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v6

    aget v7, v3, v11

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->g()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->e()Landroid/graphics/Paint$Style;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->w()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->u()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v7, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->v()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v7, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

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

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v0

    sub-float/2addr v0, v8

    aget v8, v3, v11

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    :cond_4
    sget-object v10, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->d:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v0, v10, :cond_5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v0

    sub-float/2addr v0, v8

    aget v7, v3, v11

    add-float/2addr v7, v9

    iget-object v8, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    sget-object v10, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->a:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v0, v10, :cond_6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v0

    add-float/2addr v0, v8

    aget v8, v3, v11

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/t;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->a()F

    move-result v0

    add-float/2addr v0, v8

    aget v7, v3, v11

    add-float/2addr v7, v9

    iget-object v8, p0, Lcom/github/mikephil/charting/f/t;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method
