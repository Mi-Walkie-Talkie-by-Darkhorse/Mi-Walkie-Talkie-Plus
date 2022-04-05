.class public Lb/a/a/a/g/g;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/graphics/Matrix;

.field protected b:Landroid/graphics/Matrix;

.field protected c:Lb/a/a/a/g/j;

.field protected d:[F

.field protected e:[F

.field protected f:[F

.field protected g:[F

.field protected h:Landroid/graphics/Matrix;

.field i:[F

.field private j:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lb/a/a/a/g/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/a/a/a/g/g;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/a/a/a/g/g;->b:Landroid/graphics/Matrix;

    const/4 v0, 0x1

    new-array v1, v0, [F

    iput-object v1, p0, Lb/a/a/a/g/g;->d:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lb/a/a/a/g/g;->e:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lb/a/a/a/g/g;->f:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lb/a/a/a/g/g;->g:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/a/a/a/g/g;->h:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lb/a/a/a/g/g;->i:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/a/a/a/g/g;->j:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/g/g;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lb/a/a/a/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lb/a/a/a/g/g;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    iget-object v1, v1, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lb/a/a/a/g/g;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lb/a/a/a/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lb/a/a/a/g/g;->j:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public a(FF)Lb/a/a/a/g/d;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/g/g;->i:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-virtual {p0, v0}, Lb/a/a/a/g/g;->b([F)V

    iget-object p2, p0, Lb/a/a/a/g/g;->i:[F

    aget v0, p2, v1

    float-to-double v0, v0

    aget p1, p2, p1

    float-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Lb/a/a/a/g/d;->a(DD)Lb/a/a/a/g/d;

    move-result-object p1

    return-object p1
.end method

.method public a(FFFF)V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->j()F

    move-result v0

    div-float/2addr v0, p2

    iget-object p2, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {p2}, Lb/a/a/a/g/j;->f()F

    move-result p2

    div-float/2addr p2, p3

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    iget-object p3, p0, Lb/a/a/a/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    iget-object p3, p0, Lb/a/a/a/g/g;->a:Landroid/graphics/Matrix;

    neg-float p1, p1

    neg-float p4, p4

    invoke-virtual {p3, p1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lb/a/a/a/g/g;->a:Landroid/graphics/Matrix;

    neg-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-void
.end method

.method public a(FFLb/a/a/a/g/d;)V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/g/g;->i:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-virtual {p0, v0}, Lb/a/a/a/g/g;->a([F)V

    iget-object p2, p0, Lb/a/a/a/g/g;->i:[F

    aget v0, p2, v1

    float-to-double v0, v0

    iput-wide v0, p3, Lb/a/a/a/g/d;->c:D

    aget p1, p2, p1

    float-to-double p1, p1

    iput-wide p1, p3, Lb/a/a/a/g/d;->d:D

    return-void
.end method

.method public a(Landroid/graphics/Path;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->o()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lb/a/a/a/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->o()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lb/a/a/a/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public a(Landroid/graphics/RectF;F)V
    .locals 1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float v0, v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    mul-float v0, v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lb/a/a/a/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {p2}, Lb/a/a/a/g/j;->o()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lb/a/a/a/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lb/a/a/a/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/a/a/a/g/g;->b:Landroid/graphics/Matrix;

    iget-object v0, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->x()F

    move-result v0

    iget-object v1, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->k()F

    move-result v1

    iget-object v2, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {v2}, Lb/a/a/a/g/j;->w()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/a/a/a/g/g;->b:Landroid/graphics/Matrix;

    iget-object v0, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->x()F

    move-result v0

    iget-object v1, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->z()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lb/a/a/a/g/g;->b:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_0
    return-void
.end method

.method public a([F)V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/g/g;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lb/a/a/a/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->o()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lb/a/a/a/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method public a(Lb/a/a/a/e/b/c;FII)[F
    .locals 4

    sub-int/2addr p4, p3

    add-int/lit8 p4, p4, 0x1

    mul-int/lit8 p4, p4, 0x2

    iget-object v0, p0, Lb/a/a/a/g/g;->e:[F

    array-length v0, v0

    if-eq v0, p4, :cond_0

    new-array v0, p4, [F

    iput-object v0, p0, Lb/a/a/a/g/g;->e:[F

    :cond_0
    iget-object v0, p0, Lb/a/a/a/g/g;->e:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p3

    invoke-interface {p1, v2}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v2

    mul-float v2, v2, p2

    aput v2, v0, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    aput v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    aput v2, v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lb/a/a/a/g/g;->a()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object v0
.end method

.method public a(Lb/a/a/a/e/b/d;FFII)[F
    .locals 3

    sub-int/2addr p5, p4

    int-to-float p5, p5

    mul-float p5, p5, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p5, p2

    float-to-int p2, p5

    mul-int/lit8 p2, p2, 0x2

    iget-object p5, p0, Lb/a/a/a/g/g;->g:[F

    array-length p5, p5

    if-eq p5, p2, :cond_0

    new-array p5, p2, [F

    iput-object p5, p0, Lb/a/a/a/g/g;->g:[F

    :cond_0
    iget-object p5, p0, Lb/a/a/a/g/g;->g:[F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p4

    invoke-interface {p1, v1}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/CandleEntry;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v2

    aput v2, p5, v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleEntry;->e()F

    move-result v1

    mul-float v1, v1, p3

    aput v1, p5, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    aput v1, p5, v0

    add-int/lit8 v2, v0, 0x1

    aput v1, p5, v2

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lb/a/a/a/g/g;->a()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object p5
.end method

.method public a(Lb/a/a/a/e/b/f;FFII)[F
    .locals 3

    sub-int/2addr p5, p4

    int-to-float p5, p5

    mul-float p5, p5, p2

    float-to-int p2, p5

    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 p2, p2, 0x2

    iget-object p5, p0, Lb/a/a/a/g/g;->f:[F

    array-length p5, p5

    if-eq p5, p2, :cond_0

    new-array p5, p2, [F

    iput-object p5, p0, Lb/a/a/a/g/g;->f:[F

    :cond_0
    iget-object p5, p0, Lb/a/a/a/g/g;->f:[F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p4

    invoke-interface {p1, v1}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v2

    aput v2, p5, v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v1

    mul-float v1, v1, p3

    aput v1, p5, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    aput v1, p5, v0

    add-int/lit8 v2, v0, 0x1

    aput v1, p5, v2

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lb/a/a/a/g/g;->a()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object p5
.end method

.method public a(Lb/a/a/a/e/b/k;FFII)[F
    .locals 3

    sub-int/2addr p5, p4

    int-to-float p5, p5

    mul-float p5, p5, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p5, p2

    float-to-int p2, p5

    mul-int/lit8 p2, p2, 0x2

    iget-object p5, p0, Lb/a/a/a/g/g;->d:[F

    array-length p5, p5

    if-eq p5, p2, :cond_0

    new-array p5, p2, [F

    iput-object p5, p0, Lb/a/a/a/g/g;->d:[F

    :cond_0
    iget-object p5, p0, Lb/a/a/a/g/g;->d:[F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p4

    invoke-interface {p1, v1}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v2

    aput v2, p5, v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v1

    mul-float v1, v1, p3

    aput v1, p5, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    aput v1, p5, v0

    add-int/lit8 v2, v0, 0x1

    aput v1, p5, v2

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lb/a/a/a/g/g;->a()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object p5
.end method

.method public b(FF)Lb/a/a/a/g/d;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v0, v1}, Lb/a/a/a/g/d;->a(DD)Lb/a/a/a/g/d;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lb/a/a/a/g/g;->a(FFLb/a/a/a/g/d;)V

    return-object v0
.end method

.method public b(Landroid/graphics/RectF;F)V
    .locals 1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float v0, v0, p2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    mul-float v0, v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lb/a/a/a/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {p2}, Lb/a/a/a/g/j;->o()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lb/a/a/a/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public b([F)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {v0}, Lb/a/a/a/g/j;->o()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lb/a/a/a/g/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method
