.class public Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/QMUIFloatLayout$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/qmuiteam/qmui/widget/QMUIFloatLayout$a;

.field private h:[I

.field private i:[I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->d:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->e:I

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->f:I

    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(I)V
    .locals 14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->h:[I

    array-length v6, v5

    const/16 v7, 0x8

    if-ge v2, v6, :cond_5

    aget v5, v5, v2

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->i:[I

    aget v6, v6, v2

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->h:[I

    aget v9, v9, v2

    if-ge v6, v9, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int v12, v5, v10

    add-int v13, v0, v11

    invoke-virtual {v9, v5, v0, v12, v13}, Landroid/view/View;->layout(IIII)V

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->a:I

    add-int/2addr v10, v9

    add-int/2addr v5, v10

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    iget v9, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    if-ne v4, v9, :cond_1

    :cond_3
    iget v5, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->b:I

    add-int/2addr v8, v5

    add-int/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_3
    if-ge v3, p1, :cond_7

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v7, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->layout(IIII)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Lcom/qmuiteam/qmui/R$styleable;->QMUIFloatLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIFloatLayout_qmui_childHorizontalSpacing:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->a:I

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIFloatLayout_qmui_childVerticalSpacing:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->b:I

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIFloatLayout_android_gravity:I

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->c:I

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIFloatLayout_android_maxLines:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->setMaxLines(I)V

    :cond_0
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIFloatLayout_qmui_maxNumber:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->setMaxNumber(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b(I)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    iget v8, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    if-ge v5, v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v10, v0, v8

    if-le v10, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget v10, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->b:I

    add-int/2addr v6, v10

    add-int/2addr v1, v6

    const/4 v6, 0x0

    :cond_1
    add-int v10, v0, v8

    add-int v11, v1, v9

    invoke-virtual {v7, v0, v1, v10, v11}, Landroid/view/View;->layout(IIII)V

    iget v7, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->a:I

    add-int/2addr v8, v7

    add-int/2addr v0, v8

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v3, v3, v3, v3}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private c(I)V
    .locals 14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->h:[I

    array-length v6, v5

    const/16 v7, 0x8

    if-ge v2, v6, :cond_5

    aget v5, v5, v2

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int v5, p1, v5

    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->i:[I

    aget v6, v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->h:[I

    aget v9, v9, v2

    if-ge v6, v9, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int v12, v5, v10

    add-int v13, v0, v11

    invoke-virtual {v9, v5, v0, v12, v13}, Landroid/view/View;->layout(IIII)V

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->a:I

    add-int/2addr v10, v9

    add-int/2addr v5, v10

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    iget v9, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    if-ne v4, v9, :cond_1

    :cond_3
    iget v5, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->b:I

    add-int/2addr v8, v5

    add-int/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_3
    if-ge v3, p1, :cond_7

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v7, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->layout(IIII)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method public getGravity()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->c:I

    return v0
.end method

.method public getLineCount()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->f:I

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->e:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMaxNumber()I
    .locals 2

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->e:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->c:I

    and-int/lit8 p1, p1, 0x7

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    invoke-direct {p0, p4}, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->b(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p4}, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->c(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p4}, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->b(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p4}, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->a(I)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    new-array v8, v7, [I

    iput-object v8, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->h:[I

    new-array v8, v7, [I

    iput-object v8, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->i:[I

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v3, v11, :cond_9

    iput v9, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v12

    sub-int v12, v4, v12

    move v14, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v9, v7, :cond_5

    iget v15, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->d:I

    if-ne v15, v10, :cond_0

    iget v15, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    iget v10, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->e:I

    if-lt v15, v10, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v10, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->d:I

    if-nez v10, :cond_1

    iget v10, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->e:I

    if-lt v11, v10, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-ne v15, v8, :cond_2

    move/from16 v16, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v17

    add-int v8, v16, v17

    move/from16 v16, v4

    iget v4, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v8, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v17

    add-int v8, v8, v17

    iget v15, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v8, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    invoke-virtual {v10, v4, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int v8, v3, v4

    if-le v8, v12, :cond_4

    iget v3, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->d:I

    if-nez v3, :cond_3

    add-int/lit8 v3, v11, 0x1

    iget v8, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->e:I

    if-lt v3, v8, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->i:[I

    aget v8, v3, v11

    iget v10, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->a:I

    sub-int/2addr v8, v10

    aput v8, v3, v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    iget v8, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->b:I

    add-int/2addr v8, v13

    add-int/2addr v14, v8

    :cond_4
    iget-object v8, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->h:[I

    aget v10, v8, v11

    const/4 v15, 0x1

    add-int/2addr v10, v15

    aput v10, v8, v11

    iget-object v8, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->i:[I

    aget v10, v8, v11

    iget v15, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->a:I

    add-int v17, v4, v15

    add-int v10, v10, v17

    aput v10, v8, v11

    add-int/2addr v4, v15

    add-int/2addr v3, v4

    iget v4, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    const/4 v8, 0x1

    add-int/2addr v4, v8

    iput v4, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    :goto_1
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    const/16 v8, 0x8

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    move/from16 v16, v4

    :goto_3
    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->i:[I

    array-length v2, v1

    if-lez v2, :cond_6

    aget v2, v1, v11

    if-lez v2, :cond_6

    aget v2, v1, v11

    iget v3, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->a:I

    sub-int/2addr v2, v3

    aput v2, v1, v11

    :cond_6
    if-nez v5, :cond_7

    add-int/2addr v14, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int v6, v14, v1

    goto :goto_4

    :cond_7
    const/high16 v1, -0x80000000

    if-ne v5, v1, :cond_8

    add-int/2addr v14, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v14, v1

    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_8
    :goto_4
    move v9, v11

    move/from16 v4, v16

    goto/16 :goto_8

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iput v9, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_5
    if-ge v4, v7, :cond_d

    iget v6, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->d:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_a

    iget v6, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    iget v10, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->e:I

    if-le v6, v10, :cond_b

    goto :goto_7

    :cond_a
    if-nez v6, :cond_b

    iget v6, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->e:I

    if-le v8, v6, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v10, 0x8

    if-ne v8, v10, :cond_c

    const/4 v8, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v12, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    invoke-virtual {v6, v11, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v3, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    const/4 v8, 0x1

    add-int/2addr v6, v8

    iput v6, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_d
    const/4 v8, 0x1

    :goto_7
    iget v1, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->j:I

    if-lez v1, :cond_e

    iget v2, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->a:I

    sub-int/2addr v1, v8

    mul-int v2, v2, v1

    add-int/2addr v3, v2

    :cond_e
    move v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int v6, v5, v1

    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->h:[I

    array-length v2, v1

    if-lez v2, :cond_f

    aput v7, v1, v9

    :cond_f
    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->i:[I

    array-length v2, v1

    if-lez v2, :cond_10

    aput v4, v1, v9

    :cond_10
    :goto_8
    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 v1, 0x1

    add-int/2addr v9, v1

    iget v1, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->f:I

    if-eq v1, v9, :cond_12

    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->g:Lcom/qmuiteam/qmui/widget/QMUIFloatLayout$a;

    if-eqz v2, :cond_11

    invoke-interface {v2, v1, v9}, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout$a;->a(II)V

    :cond_11
    iput v9, v0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->f:I

    :cond_12
    return-void
.end method

.method public setChildHorizontalSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->a:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setChildVerticalSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->b:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->c:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->c:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->d:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setMaxNumber(I)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->e:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->d:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setOnLineCountChangeListener(Lcom/qmuiteam/qmui/widget/QMUIFloatLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIFloatLayout;->g:Lcom/qmuiteam/qmui/widget/QMUIFloatLayout$a;

    return-void
.end method
