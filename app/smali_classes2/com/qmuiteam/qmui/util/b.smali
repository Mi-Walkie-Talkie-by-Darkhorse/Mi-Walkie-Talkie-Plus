.class public Lcom/qmuiteam/qmui/util/b;
.super Ljava/lang/Object;
.source "QMUIColorHelper.java"


# direct methods
.method public static a(IIF)I
    .locals 4
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p2, v0, v1}, Lcom/qmuiteam/qmui/util/g;->b(FFF)F

    move-result p2

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    add-int/2addr v1, v0

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v2, v2

    add-int/2addr v2, v0

    .line 6
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float v3, v3, p2

    float-to-int v3, v3

    add-int/2addr v3, v0

    .line 8
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    add-int/2addr p1, p0

    .line 10
    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static b(IF)I
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/qmuiteam/qmui/util/b;->c(IFZ)I

    move-result p0

    return p0
.end method

.method public static c(IFZ)I
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/16 v0, 0xff

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 p2, p0, 0x18

    and-int/2addr v0, p2

    :goto_0
    const p2, 0xffffff

    and-int/2addr p0, p2

    int-to-float p2, v0

    mul-float p1, p1, p2

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method
