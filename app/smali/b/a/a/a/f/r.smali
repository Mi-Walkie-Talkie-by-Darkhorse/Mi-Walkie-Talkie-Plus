.class public Lb/a/a/a/f/r;
.super Lb/a/a/a/f/q;
.source "XAxisRendererHorizontalBarChart.java"


# instance fields
.field protected p:Lcom/github/mikephil/charting/charts/BarChart;

.field protected q:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lb/a/a/a/g/j;Lcom/github/mikephil/charting/components/XAxis;Lb/a/a/a/g/g;Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lb/a/a/a/f/q;-><init>(Lb/a/a/a/g/j;Lcom/github/mikephil/charting/components/XAxis;Lb/a/a/a/g/g;)V

    .line 2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lb/a/a/a/f/r;->q:Landroid/graphics/Path;

    .line 3
    iput-object p4, p0, Lb/a/a/a/f/r;->p:Lcom/github/mikephil/charting/charts/BarChart;

    return-void
.end method


# virtual methods
.method public a(FFZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->j()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lb/a/a/a/f/a;->c:Lb/a/a/a/g/g;

    iget-object p2, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {p2}, Lb/a/a/a/g/j;->g()F

    move-result p2

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->e()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lb/a/a/a/g/g;->b(FF)Lb/a/a/a/g/d;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lb/a/a/a/f/a;->c:Lb/a/a/a/g/g;

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->g()F

    move-result v0

    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->i()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lb/a/a/a/g/g;->b(FF)Lb/a/a/a/g/d;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 4
    iget-wide v0, p2, Lb/a/a/a/g/d;->d:D

    double-to-float p3, v0

    .line 5
    iget-wide v0, p1, Lb/a/a/a/g/d;->d:D

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v0, p1, Lb/a/a/a/g/d;->d:D

    double-to-float p3, v0

    .line 7
    iget-wide v0, p2, Lb/a/a/a/g/d;->d:D

    :goto_0
    double-to-float v0, v0

    .line 8
    invoke-static {p1}, Lb/a/a/a/g/d;->a(Lb/a/a/a/g/d;)V

    .line 9
    invoke-static {p2}, Lb/a/a/a/g/d;->a(Lb/a/a/a/g/d;)V

    move p1, p3

    move p2, v0

    .line 10
    :cond_1
    invoke-virtual {p0, p1, p2}, Lb/a/a/a/f/q;->a(FF)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 7

    .line 11
    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/a;->u()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/b;->d()F

    move-result v0

    .line 13
    iget-object v1, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/b;->c()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 14
    iget-object v1, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/b;->b()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 15
    iget-object v1, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 16
    invoke-static {v1, v1}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v2

    .line 17
    iget-object v3, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->z()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v3

    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->a:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_1

    .line 18
    iput v1, v2, Lb/a/a/a/g/e;->c:F

    .line 19
    iput v5, v2, Lb/a/a/a/g/e;->d:F

    .line 20
    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->h()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lb/a/a/a/f/r;->a(Landroid/graphics/Canvas;FLb/a/a/a/g/e;)V

    goto :goto_0

    .line 21
    :cond_1
    iget-object v3, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->z()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v3

    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->d:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_2

    .line 22
    iput v6, v2, Lb/a/a/a/g/e;->c:F

    .line 23
    iput v5, v2, Lb/a/a/a/g/e;->d:F

    .line 24
    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->h()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lb/a/a/a/f/r;->a(Landroid/graphics/Canvas;FLb/a/a/a/g/e;)V

    goto :goto_0

    .line 25
    :cond_2
    iget-object v3, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->z()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v3

    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->b:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v3, v4, :cond_3

    .line 26
    iput v6, v2, Lb/a/a/a/g/e;->c:F

    .line 27
    iput v5, v2, Lb/a/a/a/g/e;->d:F

    .line 28
    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->g()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lb/a/a/a/f/r;->a(Landroid/graphics/Canvas;FLb/a/a/a/g/e;)V

    goto :goto_0

    .line 29
    :cond_3
    iget-object v3, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->z()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v3

    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->e:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v3, v4, :cond_4

    .line 30
    iput v6, v2, Lb/a/a/a/g/e;->c:F

    .line 31
    iput v5, v2, Lb/a/a/a/g/e;->d:F

    .line 32
    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->g()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lb/a/a/a/f/r;->a(Landroid/graphics/Canvas;FLb/a/a/a/g/e;)V

    goto :goto_0

    .line 33
    :cond_4
    iput v1, v2, Lb/a/a/a/g/e;->c:F

    .line 34
    iput v5, v2, Lb/a/a/a/g/e;->d:F

    .line 35
    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->h()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lb/a/a/a/f/r;->a(Landroid/graphics/Canvas;FLb/a/a/a/g/e;)V

    .line 36
    iput v6, v2, Lb/a/a/a/g/e;->c:F

    .line 37
    iput v5, v2, Lb/a/a/a/g/e;->d:F

    .line 38
    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->g()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lb/a/a/a/f/r;->a(Landroid/graphics/Canvas;FLb/a/a/a/g/e;)V

    .line 39
    :goto_0
    invoke-static {v2}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V
    .locals 0

    .line 50
    iget-object p2, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {p2}, Lb/a/a/a/g/j;->h()F

    move-result p2

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 51
    iget-object p2, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {p2}, Lb/a/a/a/g/j;->g()F

    move-result p2

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    iget-object p2, p0, Lb/a/a/a/f/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 53
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;FLb/a/a/a/g/e;)V
    .locals 11

    .line 40
    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()F

    move-result v0

    .line 41
    iget-object v1, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/a;->r()Z

    move-result v1

    .line 42
    iget-object v2, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/a;->n:I

    mul-int/lit8 v8, v2, 0x2

    new-array v9, v8, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_1

    if-eqz v1, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 43
    iget-object v5, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v5, v5, Lcom/github/mikephil/charting/components/a;->m:[F

    div-int/lit8 v6, v3, 0x2

    aget v5, v5, v6

    aput v5, v9, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 44
    iget-object v5, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v5, v5, Lcom/github/mikephil/charting/components/a;->l:[F

    div-int/lit8 v6, v3, 0x2

    aget v5, v5, v6

    aput v5, v9, v4

    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lb/a/a/a/f/a;->c:Lb/a/a/a/g/g;

    invoke-virtual {v1, v9}, Lb/a/a/a/g/g;->b([F)V

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_3

    add-int/lit8 v1, v10, 0x1

    .line 46
    aget v5, v9, v1

    .line 47
    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1, v5}, Lb/a/a/a/g/j;->f(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    iget-object v1, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/a;->q()Lb/a/a/a/c/d;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, v2, Lcom/github/mikephil/charting/components/a;->l:[F

    div-int/lit8 v4, v10, 0x2

    aget v3, v3, v4

    invoke-interface {v1, v3, v2}, Lb/a/a/a/c/d;->a(FLcom/github/mikephil/charting/components/a;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v6, p3

    move v7, v0

    .line 49
    invoke-virtual/range {v1 .. v7}, Lb/a/a/a/f/q;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLb/a/a/a/g/e;F)V

    :cond_2
    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/b;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object v0, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/b;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/a;->p()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    invoke-static {v1, v0}, Lb/a/a/a/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)Lb/a/a/a/g/b;

    move-result-object v0

    .line 5
    iget v1, v0, Lb/a/a/a/g/b;->c:F

    iget-object v2, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/b;->d()F

    move-result v2

    const/high16 v3, 0x40600000    # 3.5f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 6
    iget v2, v0, Lb/a/a/a/g/b;->d:F

    .line 7
    iget v0, v0, Lb/a/a/a/g/b;->c:F

    iget-object v4, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    .line 8
    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/XAxis;->y()F

    move-result v4

    .line 9
    invoke-static {v0, v2, v4}, Lb/a/a/a/g/i;->a(FFF)Lb/a/a/a/g/b;

    move-result-object v0

    .line 10
    iget-object v4, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v4, Lcom/github/mikephil/charting/components/XAxis;->I:I

    .line 11
    iget-object v1, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/components/XAxis;->J:I

    .line 12
    iget-object v1, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v0, Lb/a/a/a/g/b;->c:F

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/b;->d()F

    move-result v4

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Lcom/github/mikephil/charting/components/XAxis;->K:I

    .line 13
    iget-object v1, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v0, Lb/a/a/a/g/b;->d:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/components/XAxis;->L:I

    .line 14
    invoke-static {v0}, Lb/a/a/a/g/b;->a(Lb/a/a/a/g/b;)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 7

    .line 15
    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/a;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lb/a/a/a/f/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v0, p0, Lb/a/a/a/f/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/a;->i()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->z()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->a:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    .line 19
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->z()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->d:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    .line 20
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->z()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->c:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_2

    .line 21
    :cond_1
    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->h()F

    move-result v2

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    .line 22
    invoke-virtual {v0}, Lb/a/a/a/g/j;->i()F

    move-result v3

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->h()F

    move-result v4

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    .line 23
    invoke-virtual {v0}, Lb/a/a/a/g/j;->e()F

    move-result v5

    iget-object v6, p0, Lb/a/a/a/f/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    .line 24
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 25
    :cond_2
    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->z()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->b:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    .line 26
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->z()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->e:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    .line 27
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->z()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->c:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_4

    .line 28
    :cond_3
    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->g()F

    move-result v2

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    .line 29
    invoke-virtual {v0}, Lb/a/a/a/g/j;->i()F

    move-result v3

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->g()F

    move-result v4

    iget-object v0, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    .line 30
    invoke-virtual {v0}, Lb/a/a/a/g/j;->e()F

    move-result v5

    iget-object v6, p0, Lb/a/a/a/f/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    .line 31
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c()Landroid/graphics/RectF;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/a/f/q;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->n()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2
    iget-object v0, p0, Lb/a/a/a/f/q;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/a;->m()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 3
    iget-object v0, p0, Lb/a/a/a/f/q;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/a;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v1, p0, Lb/a/a/a/f/q;->l:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    aput v3, v1, v2

    const/4 v4, 0x1

    .line 5
    aput v3, v1, v4

    .line 6
    iget-object v5, p0, Lb/a/a/a/f/r;->q:Landroid/graphics/Path;

    .line 7
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/components/LimitLine;

    .line 10
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/b;->f()Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_2

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 12
    iget-object v8, p0, Lb/a/a/a/f/q;->m:Landroid/graphics/RectF;

    iget-object v9, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v9}, Lb/a/a/a/g/j;->n()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 13
    iget-object v8, p0, Lb/a/a/a/f/q;->m:Landroid/graphics/RectF;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->l()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v8, v3, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 14
    iget-object v8, p0, Lb/a/a/a/f/q;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 15
    iget-object v8, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    iget-object v8, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->k()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v8, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->l()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget-object v8, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->g()Landroid/graphics/DashPathEffect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 19
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->j()F

    move-result v8

    aput v8, v1, v4

    .line 20
    iget-object v8, p0, Lb/a/a/a/f/a;->c:Lb/a/a/a/g/g;

    invoke-virtual {v8, v1}, Lb/a/a/a/g/g;->b([F)V

    .line 21
    iget-object v8, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v8}, Lb/a/a/a/g/j;->g()F

    move-result v8

    aget v9, v1, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 22
    iget-object v8, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v8}, Lb/a/a/a/g/j;->h()F

    move-result v8

    aget v9, v1, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    iget-object v8, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 24
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 25
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->h()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    const-string v9, ""

    .line 26
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 27
    iget-object v9, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->m()Landroid/graphics/Paint$Style;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object v9, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 29
    iget-object v9, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/b;->a()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v9, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    iget-object v9, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/b;->b()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    iget-object v9, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-static {v9, v8}, Lb/a/a/a/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40800000    # 4.0f

    .line 33
    invoke-static {v10}, Lb/a/a/a/g/i;->a(F)F

    move-result v10

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/b;->d()F

    move-result v11

    add-float/2addr v10, v11

    .line 34
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->l()F

    move-result v11

    add-float/2addr v11, v9

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/b;->e()F

    move-result v12

    add-float/2addr v11, v12

    .line 35
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->i()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    move-result-object v6

    .line 36
    sget-object v12, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->c:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v6, v12, :cond_2

    .line 37
    iget-object v6, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 38
    iget-object v6, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    .line 39
    invoke-virtual {v6}, Lb/a/a/a/g/j;->h()F

    move-result v6

    sub-float/2addr v6, v10

    aget v10, v1, v4

    sub-float/2addr v10, v11

    add-float/2addr v10, v9

    iget-object v9, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p1, v8, v6, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 41
    :cond_2
    sget-object v12, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->d:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v6, v12, :cond_3

    .line 42
    iget-object v6, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 43
    iget-object v6, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    .line 44
    invoke-virtual {v6}, Lb/a/a/a/g/j;->h()F

    move-result v6

    sub-float/2addr v6, v10

    aget v9, v1, v4

    add-float/2addr v9, v11

    iget-object v10, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    .line 45
    invoke-virtual {p1, v8, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 46
    :cond_3
    sget-object v12, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->a:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v6, v12, :cond_4

    .line 47
    iget-object v6, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 48
    iget-object v6, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    .line 49
    invoke-virtual {v6}, Lb/a/a/a/g/j;->g()F

    move-result v6

    add-float/2addr v6, v10

    aget v10, v1, v4

    sub-float/2addr v10, v11

    add-float/2addr v10, v9

    iget-object v9, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p1, v8, v6, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 51
    :cond_4
    iget-object v6, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 52
    iget-object v6, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    .line 53
    invoke-virtual {v6}, Lb/a/a/a/g/j;->x()F

    move-result v6

    add-float/2addr v6, v10

    aget v9, v1, v4

    add-float/2addr v9, v11

    iget-object v10, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {p1, v8, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 55
    :cond_5
    :goto_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method