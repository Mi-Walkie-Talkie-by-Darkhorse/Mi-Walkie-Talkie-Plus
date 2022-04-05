.class public Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;

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

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUIPullLoadMoreStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->a:Z

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->h:Z

    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_pull_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->f:Ljava/lang/String;

    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_release_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->g:Ljava/lang/String;

    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_height:I

    const/16 v1, 0x38

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->e:I

    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_loading_size:I

    const/16 v1, 0x14

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_text_size:I

    const/16 v2, 0xe

    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/d;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sget v2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_arrow_text_gap:I

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v3, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_pull_load_more_arrow:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_skin_support_pull_load_more_bg_color:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_skin_support_pull_load_more_loading_tint_color:I

    const/high16 v6, -0x1000000

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    sget v7, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_skin_support_pull_load_more_arrow_tint_color:I

    invoke-virtual {p2, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    sget v8, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLoadMoreView_qmui_skin_support_pull_load_more_text_color:I

    invoke-virtual {p2, v8, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-direct {p2, p1}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;->setSize(I)V

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-virtual {p2, v5}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;->setColor(I)V

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-virtual {p0, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setId(I)V

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {p2, v3}, Landroidx/core/widget/e;->a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    new-instance p2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setId(I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    int-to-float p2, v1

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result p2

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    const/4 p2, 0x2

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getId()I

    move-result p2

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object p1

    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_pull_load_more_bg_color:I

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/c/h;->b(I)Lcom/qmuiteam/qmui/c/h;

    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_pull_load_more_loading_tint_color:I

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/c/h;->t(I)Lcom/qmuiteam/qmui/c/h;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-static {p2, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_pull_load_more_arrow_tint_color:I

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/c/h;->t(I)Lcom/qmuiteam/qmui/c/h;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p2, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/c/h;->b()Lcom/qmuiteam/qmui/c/h;

    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_pull_load_more_text_color:I

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/c/h;->n(I)Lcom/qmuiteam/qmui/c/h;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p2, p1}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/c/h;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->a:Z

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->b:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;->a()V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p1

    if-le p1, p2, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->h:Z

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$f;->d()I

    move-result p1

    if-gt p1, p2, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->h:Z

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    iget p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLoadMoreView;->e:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void
.end method
