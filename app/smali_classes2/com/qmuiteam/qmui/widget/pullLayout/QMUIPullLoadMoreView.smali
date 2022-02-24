.class public Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "QMUIPullLoadMoreView.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$c;


# instance fields
.field private a:Z

.field private b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

.field private c:Landroidx/appcompat/widget/AppCompatImageView;

.field private d:Landroidx/appcompat/widget/AppCompatTextView;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUIPullLoadMoreStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->a:Z

    .line 5
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->h:Z

    .line 6
    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_pull_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->f:Ljava/lang/String;

    .line 8
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_release_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->g:Ljava/lang/String;

    .line 9
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_height:I

    const/16 v1, 0x38

    .line 10
    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 11
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->e:I

    .line 12
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_loading_size:I

    const/16 v1, 0x14

    .line 13
    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 14
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 15
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_text_size:I

    const/16 v2, 0xe

    .line 16
    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/d;->c(Landroid/content/Context;I)I

    move-result v2

    .line 17
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 18
    sget v2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_arrow_text_gap:I

    const/16 v3, 0xa

    .line 19
    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 20
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 21
    sget v3, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_arrow:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 22
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_skin_support_pull_load_more_bg_color:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 23
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_skin_support_pull_load_more_loading_tint_color:I

    const/high16 v6, -0x1000000

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 24
    sget v7, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_skin_support_pull_load_more_arrow_tint_color:I

    invoke-virtual {p2, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 25
    sget v8, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_skin_support_pull_load_more_text_color:I

    invoke-virtual {p2, v8, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 26
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    new-instance p2, Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-direct {p2, p1}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    .line 28
    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;->setSize(I)V

    .line 29
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-virtual {p2, v5}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;->setColor(I)V

    .line 30
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 32
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 33
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 34
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 35
    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 36
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-virtual {p0, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    new-instance p2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 38
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 39
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 41
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {p2, v3}, Landroidx/core/widget/e;->a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 42
    new-instance p2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setId(I)V

    .line 44
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    int-to-float p2, v1

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 45
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 48
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 49
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result p2

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 50
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 51
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    const/4 p2, 0x2

    .line 52
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    .line 53
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 55
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getId()I

    move-result p2

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 56
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 57
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 58
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 59
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 60
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 62
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object p1

    .line 63
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_pull_load_more_bg_color:I

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/c/h;->b(I)Lcom/qmuiteam/qmui/c/h;

    .line 64
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 65
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    .line 66
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_pull_load_more_loading_tint_color:I

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/c/h;->t(I)Lcom/qmuiteam/qmui/c/h;

    .line 67
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-static {p2, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 68
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    .line 69
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_pull_load_more_arrow_tint_color:I

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/c/h;->t(I)Lcom/qmuiteam/qmui/c/h;

    .line 70
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p2, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 71
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    .line 72
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_pull_load_more_text_color:I

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/c/h;->n(I)Lcom/qmuiteam/qmui/c/h;

    .line 73
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p2, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 74
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/c/h;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->a:Z

    .line 12
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;->a()V

    .line 14
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->h:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p1

    if-le p1, p2, :cond_2

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->h:Z

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p1

    if-gt p1, p2, :cond_2

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->h:Z

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->e:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void
.end method
