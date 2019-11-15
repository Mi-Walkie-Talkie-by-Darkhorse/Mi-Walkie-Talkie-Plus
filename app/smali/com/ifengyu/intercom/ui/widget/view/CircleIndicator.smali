.class public Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;
.super Landroid/widget/LinearLayout;
.source "CircleIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/animation/Animator;

.field private j:Landroid/animation/Animator;

.field private k:Landroid/animation/Animator;

.field private l:Landroid/animation/Animator;

.field private m:I

.field private final n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private o:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v2, 0x7f0201e3

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    const v0, 0x7f060001

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->f:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m:I

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$1;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->o:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const v2, 0x7f0201e3

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    const v0, 0x7f060001

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->f:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m:I

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$1;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->o:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const v2, 0x7f0201e3

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    const v0, 0x7f060001

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->f:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m:I

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$1;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->o:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const v2, 0x7f0201e3

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    const v0, 0x7f060001

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->f:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m:I

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$1;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->o:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a()V
    .locals 5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    if-ne v2, v0, :cond_2

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->k:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(ILandroid/animation/Animator;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->l:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(ILandroid/animation/Animator;)V

    goto :goto_1
.end method

.method private a(ILandroid/animation/Animator;)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    :cond_0
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->addView(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/high16 v1, 0x40a00000    # 5.0f

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    if-gez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    if-gez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    if-gez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    if-nez v0, :cond_3

    const v0, 0x7f060001

    :goto_3
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->i:Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->k:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->k:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->j:Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->l:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->l:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    if-nez v0, :cond_4

    const v0, 0x7f0201e3

    :goto_4
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    :goto_5
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    return-void

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    goto :goto_5
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->j:Landroid/animation/Animator;

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/ifengyu/intercom/R$styleable;->CircleIndicator:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    const/4 v3, 0x3

    const v4, 0x7f060001

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->f:I

    const/4 v3, 0x5

    const v4, 0x7f0201e3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    const/4 v3, 0x6

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->setOrientation(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ltz v0, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->setGravity(I)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x11

    goto :goto_2
.end method

.method private c(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->f:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->f:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->i:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m:I

    return v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    return v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    return v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a()V

    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getDataSetObserver()Landroid/database/DataSetObserver;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->o:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can not find Viewpager , setViewPager first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method
