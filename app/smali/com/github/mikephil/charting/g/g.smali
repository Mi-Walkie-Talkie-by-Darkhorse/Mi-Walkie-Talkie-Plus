.class public Lcom/github/mikephil/charting/g/g;
.super Ljava/lang/Object;
.source "Transformer.java"


# instance fields
.field protected a:Landroid/graphics/Matrix;

.field protected b:Landroid/graphics/Matrix;

.field protected c:Lcom/github/mikephil/charting/g/j;

.field protected d:[F

.field protected e:[F

.field protected f:[F

.field protected g:[F

.field protected h:Landroid/graphics/Matrix;

.field i:[F

.field private j:Landroid/graphics/Matrix;

.field private k:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/g/j;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->b:Landroid/graphics/Matrix;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->d:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->e:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->f:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->g:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->h:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->i:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->j:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->k:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    iget-object v1, v1, Lcom/github/mikephil/charting/g/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->j:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public a(FF)Lcom/github/mikephil/charting/g/d;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v0, v1}, Lcom/github/mikephil/charting/g/d;->a(DD)Lcom/github/mikephil/charting/g/d;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/g/g;->a(FFLcom/github/mikephil/charting/g/d;)V

    return-object v0
.end method

.method public a(FFFF)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->i()F

    move-result v0

    div-float/2addr v0, p2

    iget-object v2, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->j()F

    move-result v2

    div-float/2addr v2, p3

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lcom/github/mikephil/charting/g/g;->a:Landroid/graphics/Matrix;

    neg-float v3, p1

    neg-float v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/github/mikephil/charting/g/g;->a:Landroid/graphics/Matrix;

    neg-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public a(FFLcom/github/mikephil/charting/g/d;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->i:[F

    aput p1, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->i:[F

    aput p2, v0, v2

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->i:[F

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/g/g;->b([F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->i:[F

    aget v0, v0, v1

    float-to-double v0, v0

    iput-wide v0, p3, Lcom/github/mikephil/charting/g/d;->a:D

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->i:[F

    aget v0, v0, v2

    float-to-double v0, v0

    iput-wide v0, p3, Lcom/github/mikephil/charting/g/d;->b:D

    return-void
.end method

.method public a(Landroid/graphics/Path;)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->p()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->p()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public a(Landroid/graphics/RectF;F)V
    .locals 1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->p()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->a()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->d()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->a()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->c()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->b:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0
.end method

.method public a([F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->p()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method public a(Lcom/github/mikephil/charting/e/b/c;FII)[F
    .locals 6

    const/4 v5, 0x0

    sub-int v0, p4, p3

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->e:[F

    array-length v0, v0

    if-eq v0, v1, :cond_0

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->e:[F

    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/g/g;->e:[F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p3

    invoke-interface {p1, v3}, Lcom/github/mikephil/charting/e/b/c;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v3

    mul-float/2addr v3, p2

    aput v3, v2, v4

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    aput v5, v2, v0

    add-int/lit8 v3, v0, 0x1

    aput v5, v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/github/mikephil/charting/g/g;->a()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object v2
.end method

.method public a(Lcom/github/mikephil/charting/e/b/d;FFII)[F
    .locals 6

    const/4 v5, 0x0

    sub-int v0, p5, p4

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->g:[F

    array-length v0, v0

    if-eq v0, v2, :cond_0

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->g:[F

    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/g/g;->g:[F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p4

    invoke-interface {p1, v0}, Lcom/github/mikephil/charting/e/b/d;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->h()F

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->a()F

    move-result v0

    mul-float/2addr v0, p3

    aput v0, v3, v4

    :goto_1
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    :cond_1
    aput v5, v3, v1

    add-int/lit8 v0, v1, 0x1

    aput v5, v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/github/mikephil/charting/g/g;->a()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object v3
.end method

.method public a(Lcom/github/mikephil/charting/e/b/f;FFII)[F
    .locals 6

    const/4 v5, 0x0

    sub-int v0, p5, p4

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->f:[F

    array-length v0, v0

    if-eq v0, v1, :cond_0

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->f:[F

    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/g/g;->f:[F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p4

    invoke-interface {p1, v3}, Lcom/github/mikephil/charting/e/b/f;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v3

    mul-float/2addr v3, p3

    aput v3, v2, v4

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    aput v5, v2, v0

    add-int/lit8 v3, v0, 0x1

    aput v5, v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/github/mikephil/charting/g/g;->a()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object v2
.end method

.method public a(Lcom/github/mikephil/charting/e/b/k;FFII)[F
    .locals 6

    const/4 v5, 0x0

    sub-int v0, p5, p4

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->d:[F

    array-length v0, v0

    if-eq v0, v1, :cond_0

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/g/g;->d:[F

    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/g/g;->d:[F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p4

    invoke-interface {p1, v3}, Lcom/github/mikephil/charting/e/b/k;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v3

    mul-float/2addr v3, p3

    aput v3, v2, v4

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    aput v5, v2, v0

    add-int/lit8 v3, v0, 0x1

    aput v5, v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/github/mikephil/charting/g/g;->a()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object v2
.end method

.method public b(FF)Lcom/github/mikephil/charting/g/d;
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->i:[F

    aput p1, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->i:[F

    aput p2, v0, v3

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->i:[F

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/g/g;->a([F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->i:[F

    aget v0, v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/g/g;->i:[F

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/github/mikephil/charting/g/d;->a(DD)Lcom/github/mikephil/charting/g/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/graphics/RectF;F)V
    .locals 1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->p()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public b([F)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/g/g;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/github/mikephil/charting/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lcom/github/mikephil/charting/g/g;->c:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->p()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lcom/github/mikephil/charting/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method
