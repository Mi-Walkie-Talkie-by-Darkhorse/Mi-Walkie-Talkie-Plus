.class public Lcom/ifengyu/library/widget/groupicon/NineGridImageView;
.super Landroid/view/ViewGroup;
.source "NineGridImageView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private h:Lcom/ifengyu/library/widget/groupicon/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/library/widget/groupicon/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x9

    .line 4
    iput p3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->b:I

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->f:Ljava/util/List;

    .line 6
    sget-object p3, Lcom/ifengyu/library/R$styleable;->NineGridImageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lcom/ifengyu/library/R$styleable;->NineGridImageView_imgGap:I

    const/high16 p3, 0x41000000    # 8.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->c:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->g:Ljava/util/List;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_14

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 4
    iget-object v4, v0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->h:Lcom/ifengyu/library/widget/groupicon/a;

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->g:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/ifengyu/library/widget/groupicon/a;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget v4, v0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->a:I

    div-int v5, v2, v4

    .line 7
    rem-int v6, v2, v4

    .line 8
    iget v7, v0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v8, v4, 0x1

    iget v9, v0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->c:I

    mul-int v8, v8, v9

    sub-int v8, v7, v8

    div-int/2addr v8, v4

    .line 9
    iget v4, v0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->e:I

    add-int v10, v4, v9

    const/4 v11, 0x2

    div-int/2addr v10, v11

    sub-int v12, v4, v9

    .line 10
    div-int/2addr v12, v11

    add-int v13, v7, v9

    .line 11
    div-int/2addr v13, v11

    sub-int/2addr v7, v9

    .line 12
    div-int/2addr v7, v11

    sub-int/2addr v4, v8

    .line 13
    div-int/2addr v4, v11

    mul-int v14, v8, v6

    const/4 v15, 0x1

    add-int/2addr v6, v15

    mul-int v6, v6, v9

    add-int/2addr v14, v6

    mul-int v6, v8, v5

    add-int/2addr v5, v15

    mul-int v5, v5, v9

    add-int/2addr v6, v5

    add-int v5, v14, v8

    add-int v11, v6, v8

    if-ne v1, v15, :cond_2

    .line 14
    invoke-virtual {v3, v14, v6, v5, v11}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_2
    const/4 v15, 0x2

    if-ne v1, v15, :cond_3

    add-int/2addr v8, v4

    .line 15
    invoke-virtual {v3, v14, v4, v5, v8}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_3
    const/4 v15, 0x3

    if-ne v1, v15, :cond_5

    if-nez v2, :cond_4

    add-int/2addr v8, v4

    .line 16
    invoke-virtual {v3, v4, v6, v8, v11}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_4
    mul-int v4, v9, v2

    add-int/lit8 v5, v2, -0x1

    mul-int v5, v5, v8

    add-int/2addr v4, v5

    mul-int v9, v9, v2

    mul-int v5, v8, v2

    add-int/2addr v9, v5

    add-int/2addr v8, v10

    .line 17
    invoke-virtual {v3, v4, v10, v9, v8}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_5
    const/4 v15, 0x4

    if-ne v1, v15, :cond_6

    .line 18
    invoke-virtual {v3, v14, v6, v5, v11}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_6
    const/4 v15, 0x5

    if-ne v1, v15, :cond_9

    if-nez v2, :cond_7

    sub-int v4, v7, v8

    .line 19
    invoke-virtual {v3, v4, v4, v7, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    sub-int v4, v7, v8

    add-int/2addr v8, v13

    .line 20
    invoke-virtual {v3, v13, v4, v8, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v4, v2, -0x1

    mul-int v5, v9, v4

    add-int/lit8 v6, v2, -0x2

    mul-int v6, v6, v8

    add-int/2addr v5, v6

    mul-int v9, v9, v4

    mul-int v4, v4, v8

    add-int/2addr v9, v4

    add-int/2addr v8, v10

    .line 21
    invoke-virtual {v3, v5, v10, v9, v8}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_9
    const/4 v15, 0x6

    if-ne v1, v15, :cond_b

    const/4 v15, 0x3

    if-ge v2, v15, :cond_a

    add-int/lit8 v4, v2, 0x1

    mul-int v5, v9, v4

    mul-int v6, v8, v2

    add-int/2addr v5, v6

    sub-int v6, v12, v8

    mul-int v9, v9, v4

    mul-int v8, v8, v4

    add-int/2addr v9, v8

    .line 22
    invoke-virtual {v3, v5, v6, v9, v12}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v4, v2, -0x2

    mul-int v5, v9, v4

    add-int/lit8 v6, v2, -0x3

    mul-int v6, v6, v8

    add-int/2addr v5, v6

    mul-int v9, v9, v4

    mul-int v4, v4, v8

    add-int/2addr v9, v4

    add-int/2addr v8, v10

    .line 23
    invoke-virtual {v3, v5, v10, v9, v8}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_b
    const/4 v12, 0x7

    if-ne v1, v12, :cond_e

    if-nez v2, :cond_c

    add-int v5, v4, v8

    add-int/2addr v8, v9

    .line 24
    invoke-virtual {v3, v4, v9, v5, v8}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_c
    if-lez v2, :cond_d

    const/4 v5, 0x4

    if-ge v2, v5, :cond_d

    mul-int v5, v9, v2

    add-int/lit8 v6, v2, -0x1

    mul-int v6, v6, v8

    add-int/2addr v5, v6

    mul-int v9, v9, v2

    mul-int v6, v8, v2

    add-int/2addr v9, v6

    add-int/2addr v8, v4

    .line 25
    invoke-virtual {v3, v5, v4, v9, v8}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    .line 26
    :cond_d
    iget v4, v0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->c:I

    add-int/lit8 v5, v2, -0x3

    mul-int v6, v4, v5

    add-int/lit8 v7, v2, -0x4

    mul-int v7, v7, v8

    add-int/2addr v6, v7

    div-int/lit8 v7, v8, 0x2

    add-int/2addr v10, v7

    mul-int v4, v4, v5

    mul-int v5, v5, v8

    add-int/2addr v4, v5

    add-int/2addr v8, v10

    invoke-virtual {v3, v6, v10, v4, v8}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_e
    const/16 v12, 0x8

    if-ne v1, v12, :cond_12

    if-nez v2, :cond_f

    sub-int v4, v7, v8

    add-int/2addr v8, v9

    .line 27
    invoke-virtual {v3, v4, v9, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_f
    const/4 v5, 0x1

    if-ne v2, v5, :cond_10

    add-int v4, v13, v8

    add-int/2addr v8, v9

    .line 28
    invoke-virtual {v3, v13, v9, v4, v8}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_10
    if-le v2, v5, :cond_11

    const/4 v5, 0x5

    if-ge v2, v5, :cond_11

    add-int/lit8 v5, v2, -0x1

    mul-int v6, v9, v5

    add-int/lit8 v7, v2, -0x2

    mul-int v7, v7, v8

    add-int/2addr v6, v7

    mul-int v9, v9, v5

    mul-int v5, v5, v8

    add-int/2addr v9, v5

    add-int/2addr v8, v4

    .line 29
    invoke-virtual {v3, v6, v4, v9, v8}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    .line 30
    :cond_11
    iget v4, v0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->c:I

    add-int/lit8 v5, v2, -0x4

    mul-int v6, v4, v5

    add-int/lit8 v7, v2, -0x5

    mul-int v7, v7, v8

    add-int/2addr v6, v7

    div-int/lit8 v7, v8, 0x2

    add-int/2addr v10, v7

    mul-int v4, v4, v5

    mul-int v5, v5, v8

    add-int/2addr v4, v5

    add-int/2addr v8, v10

    invoke-virtual {v3, v6, v10, v4, v8}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_12
    const/16 v4, 0x9

    if-ne v1, v4, :cond_13

    .line 31
    invoke-virtual {v3, v14, v6, v5, v11}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_13
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method protected static a(I)[I
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

    .line 32
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
    iget-object v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->h:Lcom/ifengyu/library/widget/groupicon/a;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/groupicon/a;->a(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    const-string p1, "NineGirdImageView"

    const-string v0, "Your must set a NineGridImageViewAdapter for NineGirdImageView"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private c(I)I
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


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->a()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d(I)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    .line 3
    invoke-direct {p0, p2}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->c(I)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->e:I

    .line 4
    iget p2, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAdapter(Lcom/ifengyu/library/widget/groupicon/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->h:Lcom/ifengyu/library/widget/groupicon/a;

    return-void
.end method

.method public setGap(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->c:I

    return-void
.end method

.method public setImagesData(Ljava/util/List;)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    iget v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->b:I

    if-le v0, v2, :cond_1

    .line 3
    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->a(I)[I

    move-result-object v0

    .line 5
    aget v2, v0, v1

    const/4 v2, 0x1

    .line 6
    aget v0, v0, v2

    iput v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->a:I

    .line 7
    iget-object v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->g:Ljava/util/List;

    if-nez v0, :cond_3

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 9
    invoke-direct {p0, v1}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->b(I)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_4

    sub-int/2addr v0, v1

    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    goto :goto_2

    :cond_4
    if-ge v0, v1, :cond_6

    :goto_1
    if-ge v0, v1, :cond_6

    .line 14
    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->b(I)Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_5

    return-void

    .line 15
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16
    :cond_6
    :goto_2
    iput-object p1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->g:Ljava/util/List;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
