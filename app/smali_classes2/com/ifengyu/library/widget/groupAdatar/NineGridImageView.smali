.class public Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;
.super Landroid/view/ViewGroup;
.source "NineGridImageView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private f:[Ljava/lang/String;

.field private g:Lcom/ifengyu/library/widget/groupAdatar/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->b:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 6
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->b:I

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(I)[I
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge p0, v3, :cond_0

    aput v4, v1, v2

    aput p0, v1, v4

    goto :goto_1

    :cond_0
    const/4 v5, 0x4

    if-gt p0, v5, :cond_1

    aput v0, v1, v2

    aput v0, v1, v4

    goto :goto_1

    .line 1
    :cond_1
    div-int/lit8 v0, p0, 0x3

    rem-int/2addr p0, v3

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    add-int/2addr v0, p0

    aput v0, v1, v2

    aput v3, v1, v4

    :goto_1
    return-object v1
.end method

.method private b(I)Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->g:Lcom/ifengyu/library/widget/groupAdatar/a;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/groupAdatar/a;->a(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    const-string p1, "NineGridImageView"

    const-string v0, "NineGridImageViewAdapter == null"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private c()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->f:[Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 2
    array-length v1, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_13

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 4
    iget-object v5, v0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->g:Lcom/ifengyu/library/widget/groupAdatar/a;

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->f:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v5, v6, v4, v7}, Lcom/ifengyu/library/widget/groupAdatar/a;->b(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget v5, v0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->a:I

    div-int v6, v3, v5

    .line 7
    rem-int v7, v3, v5

    .line 8
    iget v8, v0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->c:I

    add-int/lit8 v9, v5, 0x1

    iget v10, v0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->b:I

    mul-int v9, v9, v10

    sub-int v9, v8, v9

    div-int/2addr v9, v5

    .line 9
    iget v5, v0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->d:I

    add-int v11, v5, v10

    const/4 v12, 0x2

    div-int/2addr v11, v12

    sub-int v13, v5, v10

    .line 10
    div-int/2addr v13, v12

    add-int v14, v8, v10

    .line 11
    div-int/2addr v14, v12

    sub-int v15, v8, v10

    .line 12
    div-int/2addr v15, v12

    sub-int v16, v5, v9

    .line 13
    div-int/lit8 v2, v16, 0x2

    mul-int v16, v9, v7

    const/4 v12, 0x1

    add-int/2addr v7, v12

    mul-int v7, v7, v10

    add-int v7, v16, v7

    mul-int v16, v9, v6

    add-int/2addr v6, v12

    mul-int v6, v6, v10

    add-int v6, v16, v6

    add-int v0, v7, v9

    move/from16 v16, v13

    add-int v13, v6, v9

    if-ne v1, v12, :cond_1

    const/4 v12, 0x0

    .line 14
    invoke-virtual {v4, v12, v12, v8, v5}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x2

    const/4 v12, 0x0

    if-ne v1, v5, :cond_2

    add-int/2addr v9, v2

    .line 15
    invoke-virtual {v4, v7, v2, v0, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_2
    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    if-nez v3, :cond_3

    add-int/2addr v9, v2

    .line 16
    invoke-virtual {v4, v2, v6, v9, v13}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_3
    mul-int v0, v10, v3

    add-int/lit8 v2, v3, -0x1

    mul-int v2, v2, v9

    add-int/2addr v0, v2

    mul-int v10, v10, v3

    mul-int v2, v9, v3

    add-int/2addr v10, v2

    add-int/2addr v9, v11

    .line 17
    invoke-virtual {v4, v0, v11, v10, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_4
    const/4 v8, 0x4

    if-ne v1, v8, :cond_5

    .line 18
    invoke-virtual {v4, v7, v6, v0, v13}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_5
    const/4 v12, 0x5

    if-ne v1, v12, :cond_8

    if-nez v3, :cond_6

    sub-int v0, v15, v9

    .line 19
    invoke-virtual {v4, v0, v0, v15, v15}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x1

    if-ne v3, v0, :cond_7

    sub-int v0, v15, v9

    add-int/2addr v9, v14

    .line 20
    invoke-virtual {v4, v14, v0, v9, v15}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v0, v3, -0x1

    mul-int v2, v10, v0

    add-int/lit8 v5, v3, -0x2

    mul-int v5, v5, v9

    add-int/2addr v2, v5

    mul-int v10, v10, v0

    mul-int v0, v0, v9

    add-int/2addr v10, v0

    add-int/2addr v9, v11

    .line 21
    invoke-virtual {v4, v2, v11, v10, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_8
    const/4 v12, 0x6

    if-ne v1, v12, :cond_a

    if-ge v3, v5, :cond_9

    add-int/lit8 v0, v3, 0x1

    mul-int v2, v10, v0

    mul-int v5, v9, v3

    add-int/2addr v2, v5

    sub-int v13, v16, v9

    mul-int v10, v10, v0

    mul-int v9, v9, v0

    add-int/2addr v10, v9

    move/from16 v0, v16

    .line 22
    invoke-virtual {v4, v2, v13, v10, v0}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v0, v3, -0x2

    mul-int v2, v10, v0

    add-int/lit8 v5, v3, -0x3

    mul-int v5, v5, v9

    add-int/2addr v2, v5

    mul-int v10, v10, v0

    mul-int v0, v0, v9

    add-int/2addr v10, v0

    add-int/2addr v9, v11

    .line 23
    invoke-virtual {v4, v2, v11, v10, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_a
    const/4 v5, 0x7

    if-ne v1, v5, :cond_d

    if-nez v3, :cond_b

    add-int v0, v2, v9

    add-int/2addr v9, v10

    .line 24
    invoke-virtual {v4, v2, v10, v0, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_b
    if-ge v3, v8, :cond_c

    mul-int v0, v10, v3

    add-int/lit8 v5, v3, -0x1

    mul-int v5, v5, v9

    add-int/2addr v0, v5

    mul-int v10, v10, v3

    mul-int v5, v9, v3

    add-int/2addr v10, v5

    add-int/2addr v9, v2

    .line 25
    invoke-virtual {v4, v0, v2, v10, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_c
    add-int/lit8 v0, v3, -0x3

    mul-int v2, v10, v0

    add-int/lit8 v5, v3, -0x4

    mul-int v5, v5, v9

    add-int/2addr v2, v5

    .line 26
    div-int/lit8 v5, v9, 0x2

    add-int/2addr v11, v5

    mul-int v10, v10, v0

    mul-int v0, v0, v9

    add-int/2addr v10, v0

    add-int/2addr v9, v11

    invoke-virtual {v4, v2, v11, v10, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_d
    const/16 v5, 0x8

    if-ne v1, v5, :cond_11

    if-nez v3, :cond_e

    sub-int v0, v15, v9

    add-int/2addr v9, v10

    .line 27
    invoke-virtual {v4, v0, v10, v15, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_e
    const/4 v0, 0x1

    if-ne v3, v0, :cond_f

    add-int v0, v14, v9

    add-int/2addr v9, v10

    .line 28
    invoke-virtual {v4, v14, v10, v0, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_f
    const/4 v0, 0x5

    if-ge v3, v0, :cond_10

    add-int/lit8 v0, v3, -0x1

    mul-int v5, v10, v0

    add-int/lit8 v6, v3, -0x2

    mul-int v6, v6, v9

    add-int/2addr v5, v6

    mul-int v10, v10, v0

    mul-int v0, v0, v9

    add-int/2addr v10, v0

    add-int/2addr v9, v2

    .line 29
    invoke-virtual {v4, v5, v2, v10, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_10
    add-int/lit8 v0, v3, -0x4

    mul-int v2, v10, v0

    add-int/lit8 v5, v3, -0x5

    mul-int v5, v5, v9

    add-int/2addr v2, v5

    .line 30
    div-int/lit8 v5, v9, 0x2

    add-int/2addr v11, v5

    mul-int v10, v10, v0

    mul-int v0, v0, v9

    add-int/2addr v10, v0

    add-int/2addr v9, v11

    invoke-virtual {v4, v2, v11, v10, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_11
    const/16 v2, 0x9

    if-ne v1, v2, :cond_12

    .line 31
    invoke-virtual {v4, v7, v6, v0, v13}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_12
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method private d(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xc8

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 3
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0xc8

    :goto_0
    return p1
.end method

.method private e(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xc8

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 3
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0xc8

    :goto_0
    return p1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->c()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->e(I)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->c:I

    .line 3
    invoke-direct {p0, p2}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->d(I)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->d:I

    .line 4
    iget p2, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->c:I

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAdapter(Lcom/ifengyu/library/widget/groupAdatar/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->g:Lcom/ifengyu/library/widget/groupAdatar/a;

    return-void
.end method

.method public setGap(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->b:I

    return-void
.end method

.method public varargs setImagesData([Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p1

    invoke-static {v0}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->a(I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget v2, v0, v1

    const/4 v2, 0x1

    .line 3
    aget v0, v0, v2

    iput v0, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->a:I

    .line 4
    iget-object v0, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->f:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_4

    .line 6
    invoke-direct {p0, v1}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->b(I)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    array-length v0, v0

    .line 9
    array-length v1, p1

    if-le v0, v1, :cond_2

    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    goto :goto_2

    :cond_2
    if-ge v0, v1, :cond_4

    :goto_1
    if-ge v0, v1, :cond_4

    .line 11
    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->b(I)Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->f:[Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
