.class Landroidx/transition/l$a;
.super Landroid/graphics/Matrix;
.source "MatrixUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public postRotate(F)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public postRotate(FFF)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public postScale(FF)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public postScale(FFFF)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public postSkew(FF)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public postSkew(FFFF)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public postTranslate(FF)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public preRotate(F)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public preRotate(FFF)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public preScale(FF)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public preScale(FFFF)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public preSkew(FF)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public preSkew(FFFF)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public preTranslate(FF)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setPolyToPoly([FI[FII)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setRotate(F)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setRotate(FFF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setScale(FF)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setScale(FFFF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setSinCos(FF)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setSinCos(FFFF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setSkew(FF)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setSkew(FFFF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setTranslate(FF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public setValues([F)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/l$a;->a()V

    const/4 p1, 0x0

    throw p1
.end method
