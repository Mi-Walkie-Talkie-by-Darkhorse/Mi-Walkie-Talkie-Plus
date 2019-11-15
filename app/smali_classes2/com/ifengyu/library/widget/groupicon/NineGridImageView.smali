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

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private i:Lcom/ifengyu/library/widget/groupicon/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/library/widget/groupicon/a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x9

    iput v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->g:Ljava/util/List;

    sget-object v0, Lcom/ifengyu/library/R$styleable;->NineGridImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/ifengyu/library/R$styleable;->NineGridImageView_imgGap:I

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a()V
    .locals 14

    iget-object v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->h:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->i:Lcom/ifengyu/library/widget/groupicon/a;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->i:Lcom/ifengyu/library/widget/groupicon/a;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->h:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Lcom/ifengyu/library/widget/groupicon/a;->onDisplayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/Object;)V

    :cond_2
    iget v3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->b:I

    div-int v3, v1, v3

    iget v4, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->b:I

    rem-int v4, v1, v4

    iget v5, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->e:I

    iget v6, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->b:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->b:I

    div-int/2addr v5, v6

    iget v6, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->f:I

    iget v7, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->f:I

    iget v8, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->e:I

    iget v9, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->e:I

    iget v10, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->f:I

    sub-int/2addr v10, v5

    div-int/lit8 v10, v10, 0x2

    mul-int v11, v5, v4

    iget v12, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v12

    add-int/2addr v4, v11

    mul-int v11, v5, v3

    iget v12, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v12

    add-int/2addr v3, v11

    add-int v11, v4, v5

    add-int v12, v3, v5

    const/4 v13, 0x1

    if-ne v2, v13, :cond_4

    invoke-virtual {v0, v4, v3, v11, v12}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    const/4 v13, 0x2

    if-ne v2, v13, :cond_5

    add-int v3, v10, v5

    invoke-virtual {v0, v4, v10, v11, v3}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_5
    const/4 v13, 0x3

    if-ne v2, v13, :cond_7

    if-nez v1, :cond_6

    add-int v4, v10, v5

    invoke-virtual {v0, v10, v3, v4, v12}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    mul-int/2addr v3, v1

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    mul-int/2addr v4, v1

    mul-int v7, v5, v1

    add-int/2addr v4, v7

    add-int/2addr v5, v6

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_7
    const/4 v13, 0x4

    if-ne v2, v13, :cond_8

    invoke-virtual {v0, v4, v3, v11, v12}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_8
    const/4 v13, 0x5

    if-ne v2, v13, :cond_b

    if-nez v1, :cond_9

    sub-int v3, v9, v5

    sub-int v4, v9, v5

    invoke-virtual {v0, v3, v4, v9, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_9
    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    sub-int v3, v9, v5

    add-int v4, v8, v5

    invoke-virtual {v0, v8, v3, v4, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_a
    iget v3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x2

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v4, v7

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v7, v5

    add-int/2addr v4, v7

    add-int/2addr v5, v6

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_b
    const/4 v13, 0x6

    if-ne v2, v13, :cond_d

    const/4 v3, 0x3

    if-ge v1, v3, :cond_c

    iget v3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v3, v4

    mul-int v4, v5, v1

    add-int/2addr v3, v4

    sub-int v4, v7, v5

    iget v6, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v8, v1, 0x1

    mul-int/2addr v6, v8

    add-int/lit8 v8, v1, 0x1

    mul-int/2addr v5, v8

    add-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_c
    iget v3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v4, v1, -0x2

    mul-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x3

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v7, v1, -0x2

    mul-int/2addr v4, v7

    add-int/lit8 v7, v1, -0x2

    mul-int/2addr v7, v5

    add-int/2addr v4, v7

    add-int/2addr v5, v6

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_d
    const/4 v7, 0x7

    if-ne v2, v7, :cond_10

    if-nez v1, :cond_e

    iget v3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int v4, v10, v5

    iget v6, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v10, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_e
    if-lez v1, :cond_f

    const/4 v3, 0x4

    if-ge v1, v3, :cond_f

    iget v3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    mul-int/2addr v3, v1

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    mul-int/2addr v4, v1

    mul-int v6, v5, v1

    add-int/2addr v4, v6

    add-int/2addr v5, v10

    invoke-virtual {v0, v3, v10, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_f
    iget v3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v4, v1, -0x3

    mul-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x4

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    div-int/lit8 v4, v5, 0x2

    add-int/2addr v4, v6

    iget v7, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v8, v1, -0x3

    mul-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x3

    mul-int/2addr v8, v5

    add-int/2addr v7, v8

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v6, v8

    add-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v7, v5}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_10
    const/16 v7, 0x8

    if-ne v2, v7, :cond_14

    if-nez v1, :cond_11

    sub-int v3, v9, v5

    iget v4, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    iget v6, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v9, v5}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_11
    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    iget v3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int v4, v8, v5

    iget v6, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v8, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_12
    const/4 v3, 0x1

    if-le v1, v3, :cond_13

    const/4 v3, 0x5

    if-ge v1, v3, :cond_13

    iget v3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x2

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v6, v1, -0x1

    mul-int/2addr v4, v6

    add-int/lit8 v6, v1, -0x1

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    add-int/2addr v5, v10

    invoke-virtual {v0, v3, v10, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_13
    iget v3, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v4, v1, -0x4

    mul-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    div-int/lit8 v4, v5, 0x2

    add-int/2addr v4, v6

    iget v7, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    add-int/lit8 v8, v1, -0x4

    mul-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x4

    mul-int/2addr v8, v5

    add-int/2addr v7, v8

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v6, v8

    add-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v7, v5}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    :cond_14
    const/16 v5, 0x9

    if-ne v2, v5, :cond_3

    invoke-virtual {v0, v4, v3, v11, v12}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1
.end method

.method protected static a(I)[I
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v3, v4, [I

    if-ge p0, v5, :cond_0

    aput v2, v3, v1

    aput p0, v3, v2

    :goto_0
    return-object v3

    :cond_0
    const/4 v0, 0x4

    if-gt p0, v0, :cond_1

    aput v4, v3, v1

    aput v4, v3, v2

    goto :goto_0

    :cond_1
    div-int/lit8 v4, p0, 0x3

    rem-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    aput v0, v3, v1

    aput v5, v3, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private b(I)Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->i:Lcom/ifengyu/library/widget/groupicon/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->i:Lcom/ifengyu/library/widget/groupicon/a;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/groupicon/a;->generateImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "NineGirdImageView"

    const-string v1, "Your must set a NineGridImageViewAdapter for NineGirdImageView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)I
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0xc8

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private d(I)I
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0xc8

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->a()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->c(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->e:I

    invoke-direct {p0, p2}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->f:I

    iget v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->e:I

    iget v1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAdapter(Lcom/ifengyu/library/widget/groupicon/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->i:Lcom/ifengyu/library/widget/groupicon/a;

    return-void
.end method

.method public setGap(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->d:I

    return-void
.end method

.method public setImagesData(Ljava/util/List;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget v1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->c:I

    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->c:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->c:I

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->a(I)[I

    move-result-object v1

    aget v2, v1, v0

    iput v2, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->a:I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->b:I

    iget-object v1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->h:Ljava/util/List;

    if-nez v1, :cond_4

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->b(I)Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_6

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->removeViews(II)V

    :cond_5
    iput-object p1, p0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->h:Ljava/util/List;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->requestLayout()V

    goto :goto_1

    :cond_6
    if-ge v0, v1, :cond_5

    :goto_2
    if-ge v0, v1, :cond_5

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->b(I)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
