.class public Lcom/github/mikephil/charting/f/q;
.super Lcom/github/mikephil/charting/f/a;
.source "XAxisRenderer.java"


# instance fields
.field protected g:Lcom/github/mikephil/charting/components/XAxis;

.field protected h:Landroid/graphics/Path;

.field protected i:[F

.field protected j:Landroid/graphics/RectF;

.field protected k:[F

.field protected l:Landroid/graphics/RectF;

.field m:[F

.field private n:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/g/g;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p3, p2}, Lcom/github/mikephil/charting/f/a;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/g/g;Lcom/github/mikephil/charting/components/a;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/q;->h:Landroid/graphics/Path;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/q;->i:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/q;->j:Landroid/graphics/RectF;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/q;->k:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/q;->l:Landroid/graphics/RectF;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/q;->m:[F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/q;->n:Landroid/graphics/Path;

    iput-object p2, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->d:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/f/a;->a(FF)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/f/q;->c()V

    return-void
.end method

.method public a(FFZ)V
    .locals 6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->i()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->b:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/g/g;->a(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->b:Lcom/github/mikephil/charting/g/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/github/mikephil/charting/g/g;->a(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v3

    if-eqz p3, :cond_1

    iget-wide v0, v3, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v1, v0

    iget-wide v4, v2, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v0, v4

    :goto_0
    invoke-static {v2}, Lcom/github/mikephil/charting/g/d;->a(Lcom/github/mikephil/charting/g/d;)V

    invoke-static {v3}, Lcom/github/mikephil/charting/g/d;->a(Lcom/github/mikephil/charting/g/d;)V

    move p2, v0

    move p1, v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/f/q;->a(FF)V

    return-void

    :cond_1
    iget-wide v0, v2, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v1, v0

    iget-wide v4, v3, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v0, v4

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->t()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->u()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->v()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v5, v5}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->a:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_2

    iput v4, v1, Lcom/github/mikephil/charting/g/e;->a:F

    iput v6, v1, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    sub-float v0, v2, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mikephil/charting/f/q;->a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V

    :goto_1
    invoke-static {v1}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->d:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_3

    iput v4, v1, Lcom/github/mikephil/charting/g/e;->a:F

    iput v6, v1, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->E:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mikephil/charting/f/q;->a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->b:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_4

    iput v4, v1, Lcom/github/mikephil/charting/g/e;->a:F

    iput v5, v1, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mikephil/charting/f/q;->a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->e:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_5

    iput v4, v1, Lcom/github/mikephil/charting/g/e;->a:F

    iput v5, v1, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v2

    sub-float v0, v2, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->E:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mikephil/charting/f/q;->a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V

    goto :goto_1

    :cond_5
    iput v4, v1, Lcom/github/mikephil/charting/g/e;->a:F

    iput v6, v1, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {p0, p1, v2, v1}, Lcom/github/mikephil/charting/f/q;->a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V

    iput v4, v1, Lcom/github/mikephil/charting/g/e;->a:F

    iput v5, v1, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mikephil/charting/f/q;->a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v0

    invoke-virtual {p4, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v0

    invoke-virtual {p4, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/g/e;)V
    .locals 10

    const/4 v1, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->z()F

    move-result v6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->c()Z

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->d:I

    mul-int/lit8 v0, v0, 0x2

    new-array v8, v0, [F

    move v0, v1

    :goto_0
    array-length v3, v8

    if-ge v0, v3, :cond_1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, v3, Lcom/github/mikephil/charting/components/XAxis;->c:[F

    div-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    aput v3, v8, v0

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, v3, Lcom/github/mikephil/charting/components/XAxis;->b:[F

    div-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    aput v3, v8, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->b:Lcom/github/mikephil/charting/g/g;

    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/g/g;->a([F)V

    move v7, v1

    :goto_2
    array-length v0, v8

    if-ge v7, v0, :cond_5

    aget v0, v8, v7

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/g/j;->e(F)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->p()Lcom/github/mikephil/charting/c/d;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/XAxis;->b:[F

    div-int/lit8 v3, v7, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-interface {v1, v2, v3}, Lcom/github/mikephil/charting/c/d;->a(FLcom/github/mikephil/charting/components/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->A()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->d:I

    add-int/lit8 v1, v1, -0x1

    if-ne v7, v1, :cond_4

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->d:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_4

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->d:Landroid/graphics/Paint;

    invoke-static {v1, v2}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->b()F

    move-result v3

    mul-float/2addr v3, v9

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    add-float v3, v0, v1

    iget-object v4, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/g/j;->n()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    div-float/2addr v1, v9

    sub-float/2addr v0, v1

    :cond_2
    move v3, v0

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/f/q;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/g/e;F)V

    :cond_3
    add-int/lit8 v1, v7, 0x2

    move v7, v1

    goto :goto_2

    :cond_4
    if-nez v7, :cond_6

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->d:Landroid/graphics/Paint;

    invoke-static {v1, v2}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    add-float/2addr v0, v1

    move v3, v0

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    move v3, v0

    goto :goto_3
.end method

.method public a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/components/LimitLine;[F)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->m:[F

    aget v1, p3, v2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->m:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->m:[F

    aget v1, p3, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->m:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->n:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->m:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->m:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->n:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->m:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->m:[F

    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->d()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->n:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/components/LimitLine;[FF)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->e()Landroid/graphics/Paint$Style;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->v()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->b()F

    move-result v1

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->s()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/LimitLine;->f()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->c:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    invoke-static {v2, v0}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    aget v3, p3, v5

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v3

    add-float/2addr v3, p4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->d:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    aget v2, p3, v5

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v2

    sub-float/2addr v2, p4

    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->a:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    invoke-static {v2, v0}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    aget v3, p3, v5

    sub-float v1, v3, v1

    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v3

    add-float/2addr v3, p4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    aget v2, p3, v5

    sub-float v1, v2, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v2

    sub-float/2addr v2, p4

    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/g/e;F)V
    .locals 7

    iget-object v4, p0, Lcom/github/mikephil/charting/f/q;->d:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Lcom/github/mikephil/charting/g/e;F)V

    return-void
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->q()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->r()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->a:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->d:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->c:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/q;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->b:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->e:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->c:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/q;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected c()V
    .locals 5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->u()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->v()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->d:Landroid/graphics/Paint;

    invoke-static {v1, v0}, Lcom/github/mikephil/charting/g/i;->c(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/g/b;

    move-result-object v0

    iget v1, v0, Lcom/github/mikephil/charting/g/b;->a:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/q;->d:Landroid/graphics/Paint;

    const-string v3, "Q"

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->z()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/github/mikephil/charting/g/i;->a(FFF)Lcom/github/mikephil/charting/g/b;

    move-result-object v3

    iget-object v4, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v4, Lcom/github/mikephil/charting/components/XAxis;->B:I

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/components/XAxis;->C:I

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v3, Lcom/github/mikephil/charting/g/b;->a:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/components/XAxis;->D:I

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v3, Lcom/github/mikephil/charting/g/b;->b:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/components/XAxis;->E:I

    invoke-static {v3}, Lcom/github/mikephil/charting/g/b;->a(Lcom/github/mikephil/charting/g/b;)V

    invoke-static {v0}, Lcom/github/mikephil/charting/g/b;->a(Lcom/github/mikephil/charting/g/b;)V

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/f/q;->d()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->i:[F

    array-length v0, v0

    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->a:Lcom/github/mikephil/charting/components/a;

    iget v3, v3, Lcom/github/mikephil/charting/components/a;->d:I

    mul-int/lit8 v3, v3, 0x2

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->d:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/q;->i:[F

    :cond_2
    iget-object v3, p0, Lcom/github/mikephil/charting/f/q;->i:[F

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v4, v4, Lcom/github/mikephil/charting/components/XAxis;->b:[F

    div-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    aput v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v5, v5, Lcom/github/mikephil/charting/components/XAxis;->b:[F

    div-int/lit8 v6, v0, 0x2

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->b:Lcom/github/mikephil/charting/g/g;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/g/g;->a([F)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/f/q;->b()V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_4

    aget v4, v3, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, v3, v5

    invoke-virtual {p0, p1, v4, v5, v0}, Lcom/github/mikephil/charting/f/q;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public d()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/q;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/a;->f()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/q;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->m()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/f/q;->k:[F

    aput v8, v4, v2

    aput v8, v4, v9

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object v6, p0, Lcom/github/mikephil/charting/f/q;->l:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/github/mikephil/charting/f/q;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/q;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->b()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v6, p0, Lcom/github/mikephil/charting/f/q;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->a()F

    move-result v6

    aput v6, v4, v2

    aput v8, v4, v9

    iget-object v6, p0, Lcom/github/mikephil/charting/f/q;->b:Lcom/github/mikephil/charting/g/g;

    invoke-virtual {v6, v4}, Lcom/github/mikephil/charting/g/g;->a([F)V

    invoke-virtual {p0, p1, v0, v4}, Lcom/github/mikephil/charting/f/q;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/components/LimitLine;[F)V

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->t()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p0, p1, v0, v4, v6}, Lcom/github/mikephil/charting/f/q;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/components/LimitLine;[FF)V

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1
.end method
