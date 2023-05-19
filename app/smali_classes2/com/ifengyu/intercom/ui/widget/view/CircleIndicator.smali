.class public Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;
.super Landroid/widget/LinearLayout;
.source "CircleIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$c;
    }
.end annotation


# instance fields
.field private a:Landroidx/viewpager/widget/ViewPager;

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

.field private final n:Landroidx/viewpager/widget/ViewPager$h;

.field private o:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    const v1, 0x7f02001a

    .line 5
    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->f:I

    const v1, 0x7f080269

    .line 7
    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    .line 8
    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    .line 9
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m:I

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager$h;

    .line 11
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$b;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->o:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->p(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    .line 15
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    .line 16
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    const v1, 0x7f02001a

    .line 17
    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->f:I

    const v1, 0x7f080269

    .line 19
    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    .line 20
    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    .line 21
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m:I

    .line 22
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager$h;

    .line 23
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$b;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->o:Landroid/database/DataSetObserver;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->p(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 26
    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    .line 27
    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    .line 28
    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    const v0, 0x7f02001a

    .line 29
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->f:I

    const v0, 0x7f080269

    .line 31
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    .line 32
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    .line 33
    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m:I

    .line 34
    new-instance p3, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager$h;

    .line 35
    new-instance p3, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$b;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$b;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->o:Landroid/database/DataSetObserver;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->p(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->j:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->i:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m:I

    return p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m:I

    return p1
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    return p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    return p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m()V

    return-void
.end method

.method private i(ILandroid/animation/Animator;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    .line 3
    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 4
    :cond_0
    new-instance p2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    invoke-virtual {p0, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 9
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private j(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    const/high16 v1, 0x40a00000    # 5.0f

    if-gez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n(F)I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    if-gez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n(F)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    .line 3
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    if-gez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n(F)I

    move-result v0

    :cond_2
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    .line 4
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    if-nez v0, :cond_3

    const v0, 0x7f02001a

    :cond_3
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    .line 5
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->l(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->i:Landroid/animation/Animator;

    .line 6
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->l(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->k:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 8
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->k(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->j:Landroid/animation/Animator;

    .line 9
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->k(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->l:Landroid/animation/Animator;

    .line 10
    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 11
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    if-nez p1, :cond_4

    const p1, 0x7f080269

    .line 12
    :cond_4
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    .line 13
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move p1, v0

    .line 14
    :goto_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    return-void
.end method

.method private k(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->f:I

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$c;-><init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private l(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private m()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-ne v1, v2, :cond_1

    .line 4
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->k:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->i(ILandroid/animation/Animator;)V

    goto :goto_1

    .line 5
    :cond_1
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->l:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->i(ILandroid/animation/Animator;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private o(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/R$styleable;->CircleIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x8

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->c:I

    const/4 p2, 0x5

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d:I

    const/4 p2, 0x6

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->b:I

    const p2, 0x7f02001a

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->e:I

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->f:I

    const/4 v2, 0x2

    const v3, 0x7f080269

    .line 7
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g:I

    const/4 v3, 0x3

    .line 8
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->h:I

    const/4 v2, 0x7

    .line 9
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ne v2, p2, :cond_1

    const/4 v1, 0x1

    .line 10
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p2, 0x4

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x11

    .line 12
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private p(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->o(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->j(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDataSetObserver()Landroid/database/DataSetObserver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->o:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public n(F)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    const-string v1, "can not find Viewpager , setViewPager first"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m:I

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->m()V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager$h;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager$h;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager$h;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/viewpager/widget/ViewPager$h;->onPageSelected(I)V

    :cond_0
    return-void
.end method
