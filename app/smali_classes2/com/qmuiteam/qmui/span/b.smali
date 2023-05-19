.class public Lcom/qmuiteam/qmui/span/b;
.super Lcom/qmuiteam/qmui/span/a;
.source "QMUIMarginImageSpan.java"


# instance fields
.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/span/a;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/span/b;->f:I

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/span/b;->g:I

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/span/b;->h:I

    .line 5
    iput p3, p0, Lcom/qmuiteam/qmui/span/b;->f:I

    .line 6
    iput p4, p0, Lcom/qmuiteam/qmui/span/b;->g:I

    .line 7
    iput p5, p0, Lcom/qmuiteam/qmui/span/b;->h:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 12

    move-object v10, p0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, v10, Lcom/qmuiteam/qmui/span/b;->h:I

    int-to-float v0, v0

    const/4 v1, 0x0

    move-object v11, p1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    iget v0, v10, Lcom/qmuiteam/qmui/span/b;->f:I

    int-to-float v0, v0

    add-float v5, p5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-super/range {v0 .. v9}, Lcom/qmuiteam/qmui/span/a;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/span/b;->f:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/span/b;->g:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/qmuiteam/qmui/span/a;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    return p1

    .line 3
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/qmuiteam/qmui/span/a;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    .line 4
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget p2, p0, Lcom/qmuiteam/qmui/span/b;->f:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/qmuiteam/qmui/span/b;->g:I

    add-int/2addr p1, p2

    return p1
.end method
