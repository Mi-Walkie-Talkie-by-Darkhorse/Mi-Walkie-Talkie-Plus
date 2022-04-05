.class public Lb/a/a/a/g/h;
.super Lb/a/a/a/g/g;


# direct methods
.method public constructor <init>(Lb/a/a/a/g/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/a/a/g/g;-><init>(Lb/a/a/a/g/j;)V

    return-void
.end method


# virtual methods
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

    invoke-virtual {v0}, Lb/a/a/a/g/j;->l()F

    move-result v0

    iget-object v1, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->y()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    iget-object v1, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {v1}, Lb/a/a/a/g/j;->k()F

    move-result v1

    iget-object v2, p0, Lb/a/a/a/g/g;->c:Lb/a/a/a/g/j;

    invoke-virtual {v2}, Lb/a/a/a/g/j;->w()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lb/a/a/a/g/g;->b:Landroid/graphics/Matrix;

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_0
    return-void
.end method
