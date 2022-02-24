.class public Lcom/qmuiteam/qmui/span/a;
.super Landroid/text/style/ImageSpan;
.source "QMUIAlignMiddleImageSpan.java"

# interfaces
.implements Lcom/qmuiteam/qmui/c/c;


# instance fields
.field private a:F

.field private b:Z

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/span/a;-><init>(Landroid/graphics/drawable/Drawable;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IF)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/span/a;->a:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/span/a;->b:Z

    .line 5
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/span/a;->d:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_0

    .line 6
    iput p3, p0, Lcom/qmuiteam/qmui/span/a;->a:F

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    .line 1
    iput p2, p0, Lcom/qmuiteam/qmui/span/a;->e:I

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/span/a;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p2

    .line 4
    invoke-static {v0, p2}, Lcom/qmuiteam/qmui/util/e;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/ColorFilter;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lcom/qmuiteam/qmui/c/g;ILandroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/c/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 7
    iget p1, p0, Lcom/qmuiteam/qmui/span/a;->e:I

    if-eqz p1, :cond_0

    .line 8
    iget-object p2, p0, Lcom/qmuiteam/qmui/span/a;->d:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-static {p4, p1}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/res/Resources$Theme;I)I

    move-result p1

    .line 10
    invoke-static {p2, p1}, Lcom/qmuiteam/qmui/util/e;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/span/a;->b:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/text/style/ImageSpan;->mVerticalAlignment:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/qmuiteam/qmui/span/a;->d:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    .line 5
    iget p4, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr p7, p4

    .line 6
    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr p3, p4

    .line 7
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p6

    iget p6, p6, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, p6

    sub-int/2addr p3, p4

    .line 8
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p7, p3

    int-to-float p3, p7

    .line 9
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/text/style/ImageSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/span/a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 4
    iget p2, p2, Landroid/graphics/Rect;->right:I

    iput p2, p0, Lcom/qmuiteam/qmui/span/a;->c:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/span/a;->c:I

    .line 6
    :goto_0
    iget p2, p0, Lcom/qmuiteam/qmui/span/a;->a:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    const-string p2, "\u5b50"

    .line 7
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget p2, p0, Lcom/qmuiteam/qmui/span/a;->a:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/qmuiteam/qmui/span/a;->c:I

    .line 8
    :cond_1
    iget p1, p0, Lcom/qmuiteam/qmui/span/a;->c:I

    return p1
.end method
