.class public Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "QMUIVerticalTextView.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:[F

.field private d:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->a:Z

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->a:Z

    .line 6
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->a:Z

    .line 9
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 0

    return-void
.end method

.method private static a(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 2
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1
    iget-boolean v1, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->a:Z

    if-nez v1, :cond_0

    .line 2
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_7

    .line 3
    :cond_0
    iget v1, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->b:I

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v9, Landroid/text/TextPaint;->drawableState:[I

    .line 7
    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->c:[F

    const/4 v12, 0x0

    aget v2, v2, v12

    sub-float/2addr v1, v2

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    move v13, v1

    move v14, v13

    move v15, v2

    const/4 v7, 0x0

    const/16 v16, 0x0

    .line 12
    :goto_0
    array-length v1, v11

    if-ge v7, v1, :cond_9

    .line 13
    invoke-static {v11, v7}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    .line 15
    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->a(I)Z

    move-result v1

    const/16 v17, 0x1

    xor-int/lit8 v18, v1, 0x1

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    if-eqz v18, :cond_2

    const/high16 v1, 0x42b40000    # 90.0f

    .line 17
    invoke-virtual {v8, v1, v13, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_2
    if-eqz v18, :cond_3

    .line 18
    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->c:[F

    aget v1, v1, v16

    iget v2, v10, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v10, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, v15, v1

    iget v2, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_1

    :cond_3
    iget v1, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v1, v1

    sub-float v1, v15, v1

    :goto_1
    move/from16 v19, v1

    move-object/from16 v1, p1

    move-object v2, v11

    move v3, v7

    move v4, v6

    move v12, v5

    move v5, v13

    move/from16 v20, v13

    move v13, v6

    move/from16 v6, v19

    move-object/from16 v19, v10

    move v10, v7

    move-object v7, v9

    .line 19
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 20
    invoke-virtual {v8, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int v7, v10, v13

    .line 21
    array-length v1, v11

    if-ge v7, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_8

    add-int/lit8 v1, v10, 0x1

    .line 22
    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->d:[I

    aget v2, v2, v16

    if-le v1, v2, :cond_5

    goto :goto_3

    :cond_5
    const/16 v17, 0x0

    :goto_3
    if-eqz v17, :cond_6

    add-int/lit8 v1, v16, 0x1

    .line 23
    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->c:[F

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 24
    aget v2, v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    mul-float v2, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v14, v2

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    move/from16 v16, v1

    move v15, v2

    move v13, v14

    move-object/from16 v1, v19

    goto :goto_6

    :cond_6
    if-eqz v18, :cond_7

    .line 26
    invoke-virtual {v9, v11, v10, v13}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v1

    add-float/2addr v15, v1

    goto :goto_4

    :cond_7
    move-object/from16 v1, v19

    .line 27
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v15, v2

    goto :goto_5

    :cond_8
    :goto_4
    move-object/from16 v1, v19

    :goto_5
    move/from16 v13, v20

    :goto_6
    move-object v10, v1

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 28
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 2
    iget-boolean v1, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->a:Z

    if-eqz v1, :cond_f

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 11
    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    if-nez v2, :cond_0

    const v10, 0x7fffffff

    goto :goto_0

    :cond_0
    move v10, v4

    .line 12
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x0

    .line 14
    iput v12, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->b:I

    .line 15
    array-length v13, v7

    const/4 v14, 0x1

    add-int/2addr v13, v14

    new-array v13, v13, [F

    iput-object v13, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->c:[F

    .line 16
    array-length v13, v7

    add-int/2addr v13, v14

    new-array v13, v13, [I

    iput-object v13, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->d:[I

    move v13, v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 17
    :goto_1
    array-length v12, v7

    if-ge v15, v12, :cond_8

    .line 18
    invoke-static {v7, v15}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v12

    .line 19
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v14

    .line 20
    invoke-static {v12}, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->a(I)Z

    move-result v12

    const/16 v17, 0x1

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    .line 21
    iget v12, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v18, v3

    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v12, v3

    int-to-float v3, v12

    .line 22
    invoke-virtual {v8, v7, v15, v14}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v12

    goto :goto_2

    :cond_1
    move/from16 v18, v3

    .line 23
    invoke-virtual {v8, v7, v15, v14}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v3

    .line 24
    iget v12, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v17, v3

    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v12, v3

    int-to-float v12, v12

    move/from16 v3, v17

    :goto_2
    add-float v17, v11, v12

    move-object/from16 v19, v8

    int-to-float v8, v10

    cmpl-float v8, v17, v8

    if-lez v8, :cond_2

    if-lez v15, :cond_2

    const/4 v8, 0x1

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_4

    cmpg-float v8, v13, v11

    if-gez v8, :cond_3

    goto :goto_4

    :cond_3
    move v11, v13

    .line 25
    :goto_4
    iget-object v8, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->d:[I

    sub-int v13, v15, v14

    aput v13, v8, v16

    .line 26
    iget-object v8, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->c:[F

    aget v8, v8, v16

    add-float/2addr v5, v8

    add-int/lit8 v16, v16, 0x1

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v12

    move v13, v11

    move v11, v8

    goto :goto_5

    :cond_4
    cmpg-float v8, v13, v17

    move/from16 v11, v17

    if-gez v8, :cond_5

    move v13, v11

    .line 28
    :cond_5
    :goto_5
    iget-object v8, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->c:[F

    aget v12, v8, v16

    cmpg-float v12, v12, v3

    if-gez v12, :cond_6

    .line 29
    aput v3, v8, v16

    :cond_6
    add-int/2addr v15, v14

    .line 30
    array-length v3, v7

    if-lt v15, v3, :cond_7

    .line 31
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->c:[F

    aget v3, v3, v16

    add-float/2addr v5, v3

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v13

    move v6, v3

    :cond_7
    move/from16 v17, v14

    move/from16 v3, v18

    move-object/from16 v8, v19

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_8
    move/from16 v18, v3

    .line 33
    array-length v3, v7

    if-lez v3, :cond_9

    add-int/lit8 v3, v16, 0x1

    .line 34
    iput v3, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->b:I

    .line 35
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->d:[I

    array-length v7, v7

    sub-int v7, v7, v17

    aput v7, v3, v16

    .line 36
    :cond_9
    iget v3, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->b:I

    const/4 v7, 0x1

    if-le v3, v7, :cond_a

    sub-int/2addr v3, v7

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v3, :cond_a

    .line 37
    iget-object v7, v0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->c:[F

    aget v7, v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    mul-float v7, v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v8

    add-float/2addr v7, v8

    add-float/2addr v5, v7

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_a
    const/high16 v3, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v2, v7, :cond_b

    int-to-float v6, v4

    goto :goto_7

    :cond_b
    if-ne v2, v3, :cond_c

    int-to-float v2, v4

    .line 38
    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :cond_c
    :goto_7
    if-ne v1, v7, :cond_d

    move/from16 v2, v18

    int-to-float v5, v2

    goto :goto_8

    :cond_d
    move/from16 v2, v18

    if-ne v1, v3, :cond_e

    int-to-float v1, v2

    .line 39
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :cond_e
    :goto_8
    float-to-int v1, v5

    float-to-int v2, v6

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    :cond_f
    return-void
.end method

.method public setVerticalMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIVerticalTextView;->a:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method
