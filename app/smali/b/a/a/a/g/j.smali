.class public Lb/a/a/a/g/j;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/graphics/Matrix;

.field protected b:Landroid/graphics/RectF;

.field protected c:F

.field protected d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field protected o:Landroid/graphics/Matrix;

.field protected final p:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/a/g/j;->c:F

    iput v0, p0, Lb/a/a/a/g/j;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lb/a/a/a/g/j;->e:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p0, Lb/a/a/a/g/j;->f:F

    iput v1, p0, Lb/a/a/a/g/j;->g:F

    iput v2, p0, Lb/a/a/a/g/j;->h:F

    iput v1, p0, Lb/a/a/a/g/j;->i:F

    iput v1, p0, Lb/a/a/a/g/j;->j:F

    iput v0, p0, Lb/a/a/a/g/j;->k:F

    iput v0, p0, Lb/a/a/a/g/j;->l:F

    iput v0, p0, Lb/a/a/a/g/j;->m:F

    iput v0, p0, Lb/a/a/a/g/j;->n:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/a/a/a/g/j;->o:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lb/a/a/a/g/j;->p:[F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/g/j;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p2, p0, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-object p1
.end method

.method public a(FFFF)V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    iget v1, p0, Lb/a/a/a/g/j;->c:F

    sub-float/2addr v1, p3

    iget p3, p0, Lb/a/a/a/g/j;->d:F

    sub-float/2addr p3, p4

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public a(FFFFLandroid/graphics/Matrix;)V
    .locals 1

    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {p5, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-void
.end method

.method public a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 9

    iget-object v0, p0, Lb/a/a/a/g/j;->p:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lb/a/a/a/g/j;->p:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x5

    aget v6, v0, v5

    const/4 v7, 0x4

    aget v0, v0, v7

    iget v8, p0, Lb/a/a/a/g/j;->g:F

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v8, p0, Lb/a/a/a/g/j;->h:F

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lb/a/a/a/g/j;->i:F

    iget v4, p0, Lb/a/a/a/g/j;->e:F

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v4, p0, Lb/a/a/a/g/j;->f:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lb/a/a/a/g/j;->j:F

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    neg-float v0, v0

    iget v4, p0, Lb/a/a/a/g/j;->i:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v4, v8

    mul-float v0, v0, v4

    iget v4, p0, Lb/a/a/a/g/j;->m:F

    sub-float/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lb/a/a/a/g/j;->m:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lb/a/a/a/g/j;->k:F

    iget v0, p0, Lb/a/a/a/g/j;->j:F

    sub-float/2addr v0, v8

    mul-float p2, p2, v0

    iget v0, p0, Lb/a/a/a/g/j;->n:F

    add-float/2addr p2, v0

    invoke-static {v6, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget v0, p0, Lb/a/a/a/g/j;->n:F

    neg-float v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lb/a/a/a/g/j;->l:F

    iget-object v0, p0, Lb/a/a/a/g/j;->p:[F

    iget v2, p0, Lb/a/a/a/g/j;->k:F

    aput v2, v0, v1

    iget v1, p0, Lb/a/a/a/g/j;->i:F

    aput v1, v0, v3

    aput p2, v0, v5

    iget p2, p0, Lb/a/a/a/g/j;->j:F

    aput p2, v0, v7

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method public a([FLandroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lb/a/a/a/g/j;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {p0}, Lb/a/a/a/g/j;->x()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {p0}, Lb/a/a/a/g/j;->z()F

    move-result v3

    sub-float/2addr p1, v3

    neg-float v1, v1

    neg-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0, v0, p2, v2}, Lb/a/a/a/g/j;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lb/a/a/a/g/j;->i:F

    iget v1, p0, Lb/a/a/a/g/j;->h:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(F)Z
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(FF)Z
    .locals 0

    invoke-virtual {p0, p1}, Lb/a/a/a/g/j;->e(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lb/a/a/a/g/j;->f(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(FF)V
    .locals 4

    invoke-virtual {p0}, Lb/a/a/a/g/j;->x()F

    move-result v0

    invoke-virtual {p0}, Lb/a/a/a/g/j;->z()F

    move-result v1

    invoke-virtual {p0}, Lb/a/a/a/g/j;->y()F

    move-result v2

    invoke-virtual {p0}, Lb/a/a/a/g/j;->w()F

    move-result v3

    iput p2, p0, Lb/a/a/a/g/j;->d:F

    iput p1, p0, Lb/a/a/a/g/j;->c:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lb/a/a/a/g/j;->a(FFFF)V

    return-void
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lb/a/a/a/g/j;->j:F

    iget v1, p0, Lb/a/a/a/g/j;->f:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(F)Z
    .locals 2

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(FF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    :cond_1
    iput p1, p0, Lb/a/a/a/g/j;->g:F

    iput p2, p0, Lb/a/a/a/g/j;->h:F

    iget-object p1, p0, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    iget-object p2, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lb/a/a/a/g/j;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lb/a/a/a/g/j;->i:F

    iget v1, p0, Lb/a/a/a/g/j;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(F)Z
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(FF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    :cond_1
    iput p1, p0, Lb/a/a/a/g/j;->e:F

    iput p2, p0, Lb/a/a/a/g/j;->f:F

    iget-object p1, p0, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    iget-object p2, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lb/a/a/a/g/j;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lb/a/a/a/g/j;->j:F

    iget v1, p0, Lb/a/a/a/g/j;->e:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(F)Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()F
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method public e(F)Z
    .locals 1

    invoke-virtual {p0, p1}, Lb/a/a/a/g/j;->b(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lb/a/a/a/g/j;->c(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()F
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method public f(F)Z
    .locals 1

    invoke-virtual {p0, p1}, Lb/a/a/a/g/j;->d(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lb/a/a/a/g/j;->a(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()F
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public g(F)V
    .locals 0

    invoke-static {p1}, Lb/a/a/a/g/i;->a(F)F

    move-result p1

    iput p1, p0, Lb/a/a/a/g/j;->m:F

    return-void
.end method

.method public h()F
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method public h(F)V
    .locals 0

    invoke-static {p1}, Lb/a/a/a/g/i;->a(F)F

    move-result p1

    iput p1, p0, Lb/a/a/a/g/j;->n:F

    return-void
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public i(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    iput p1, p0, Lb/a/a/a/g/j;->h:F

    iget-object p1, p0, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/g/j;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public j()F
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method public j(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    iput p1, p0, Lb/a/a/a/g/j;->f:F

    iget-object p1, p0, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/g/j;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lb/a/a/a/g/j;->d:F

    return v0
.end method

.method public k(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    iput p1, p0, Lb/a/a/a/g/j;->g:F

    iget-object p1, p0, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/g/j;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public l()F
    .locals 1

    iget v0, p0, Lb/a/a/a/g/j;->c:F

    return v0
.end method

.method public l(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    iput p1, p0, Lb/a/a/a/g/j;->e:F

    iget-object p1, p0, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/g/j;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public m()Lb/a/a/a/g/e;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {v0, v1}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v0

    return-object v0
.end method

.method public n()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    return-object v0
.end method

.method public o()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/j;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public p()F
    .locals 1

    iget v0, p0, Lb/a/a/a/g/j;->i:F

    return v0
.end method

.method public q()F
    .locals 1

    iget v0, p0, Lb/a/a/a/g/j;->j:F

    return v0
.end method

.method public r()F
    .locals 2

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lb/a/a/a/g/j;->m:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lb/a/a/a/g/j;->n:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/g/j;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/g/j;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lb/a/a/a/g/j;->i:F

    iget v1, p0, Lb/a/a/a/g/j;->g:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 2

    iget v0, p0, Lb/a/a/a/g/j;->j:F

    iget v1, p0, Lb/a/a/a/g/j;->e:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()F
    .locals 2

    iget v0, p0, Lb/a/a/a/g/j;->d:F

    iget-object v1, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public x()F
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public y()F
    .locals 2

    iget v0, p0, Lb/a/a/a/g/j;->c:F

    iget-object v1, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public z()F
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method
