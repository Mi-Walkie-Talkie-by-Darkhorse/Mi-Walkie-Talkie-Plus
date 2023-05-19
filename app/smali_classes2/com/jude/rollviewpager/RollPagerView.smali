.class public Lcom/jude/rollviewpager/RollPagerView;
.super Landroid/widget/RelativeLayout;
.source "RollPagerView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jude/rollviewpager/RollPagerView$f;,
        Lcom/jude/rollviewpager/RollPagerView$h;,
        Lcom/jude/rollviewpager/RollPagerView$g;,
        Lcom/jude/rollviewpager/RollPagerView$e;
    }
.end annotation


# instance fields
.field private a:Landroidx/viewpager/widget/ViewPager;

.field private b:Landroidx/viewpager/widget/a;

.field private c:Lcom/jude/rollviewpager/b;

.field private d:Landroid/view/GestureDetector;

.field private e:J

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/view/View;

.field private o:Ljava/util/Timer;

.field private p:Lcom/jude/rollviewpager/RollPagerView$e;

.field private q:Lcom/jude/rollviewpager/RollPagerView$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/jude/rollviewpager/RollPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/jude/rollviewpager/RollPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/jude/rollviewpager/RollPagerView$a;

    invoke-direct {p1, p0}, Lcom/jude/rollviewpager/RollPagerView$a;-><init>(Lcom/jude/rollviewpager/RollPagerView;)V

    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$e;

    .line 5
    new-instance p1, Lcom/jude/rollviewpager/RollPagerView$g;

    invoke-direct {p1, p0}, Lcom/jude/rollviewpager/RollPagerView$g;-><init>(Lcom/jude/rollviewpager/RollPagerView;)V

    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView;->q:Lcom/jude/rollviewpager/RollPagerView$g;

    .line 6
    invoke-direct {p0, p2}, Lcom/jude/rollviewpager/RollPagerView;->m(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jude/rollviewpager/RollPagerView;->c:Lcom/jude/rollviewpager/b;

    return-object p0
.end method

.method static synthetic b(Lcom/jude/rollviewpager/RollPagerView;)Landroidx/viewpager/widget/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jude/rollviewpager/RollPagerView;->b:Landroidx/viewpager/widget/a;

    return-object p0
.end method

.method static synthetic c(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jude/rollviewpager/RollPagerView;->k()V

    return-void
.end method

.method static synthetic d(Lcom/jude/rollviewpager/RollPagerView;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic e(Lcom/jude/rollviewpager/RollPagerView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/RollPagerView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$e;

    return-object p0
.end method

.method static synthetic g(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jude/rollviewpager/RollPagerView;->p()V

    return-void
.end method

.method static synthetic h(Lcom/jude/rollviewpager/RollPagerView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jude/rollviewpager/RollPagerView;->e:J

    return-wide v0
.end method

.method static synthetic i(Lcom/jude/rollviewpager/RollPagerView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jude/rollviewpager/RollPagerView;->f:I

    return p0
.end method

.method static synthetic j(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/RollPagerView$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jude/rollviewpager/RollPagerView;->q:Lcom/jude/rollviewpager/RollPagerView$g;

    return-object p0
.end method

.method private k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$e;

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v1}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v1

    iget v2, p0, Lcom/jude/rollviewpager/RollPagerView;->g:I

    iget-object v3, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    check-cast v3, Lcom/jude/rollviewpager/a;

    invoke-interface {v0, v1, v2, v3}, Lcom/jude/rollviewpager/RollPagerView$e;->a(IILcom/jude/rollviewpager/a;)V

    .line 3
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$e;

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    check-cast v2, Lcom/jude/rollviewpager/a;

    invoke-interface {v0, v1, v2}, Lcom/jude/rollviewpager/RollPagerView$e;->b(ILcom/jude/rollviewpager/a;)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/jude/rollviewpager/RollPagerView;->o()V

    return-void
.end method

.method private l(Lcom/jude/rollviewpager/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    instance-of v0, p1, Lcom/jude/rollviewpager/a;

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    .line 5
    invoke-direct {p0}, Lcom/jude/rollviewpager/RollPagerView;->n()V

    :cond_2
    :goto_0
    return-void
.end method

.method private m(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/jude/rollviewpager/R$styleable;->RollViewPager:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget v0, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_gravity:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/jude/rollviewpager/RollPagerView;->g:I

    .line 5
    sget v0, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_play_delay:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jude/rollviewpager/RollPagerView;->f:I

    .line 6
    sget v0, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_color:I

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/jude/rollviewpager/RollPagerView;->h:I

    .line 7
    sget v0, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_alpha:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/jude/rollviewpager/RollPagerView;->i:I

    .line 8
    sget v0, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_paddingLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jude/rollviewpager/RollPagerView;->j:I

    .line 9
    sget v0, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_paddingRight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jude/rollviewpager/RollPagerView;->l:I

    .line 10
    sget v0, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_paddingTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jude/rollviewpager/RollPagerView;->k:I

    .line 11
    sget v0, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_paddingBottom:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/jude/rollviewpager/c;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jude/rollviewpager/RollPagerView;->m:I

    .line 12
    new-instance v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroidx/viewpager/widget/ViewPager;

    .line 13
    sget v1, Lcom/jude/rollviewpager/R$id;->viewpager_inner:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 14
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    new-instance p1, Lcom/jude/rollviewpager/hintview/ColorPointHintView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "#E3AC42"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#88ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Lcom/jude/rollviewpager/hintview/ColorPointHintView;-><init>(Landroid/content/Context;II)V

    invoke-direct {p0, p1}, Lcom/jude/rollviewpager/RollPagerView;->l(Lcom/jude/rollviewpager/a;)V

    .line 18
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/jude/rollviewpager/RollPagerView$b;

    invoke-direct {v1, p0}, Lcom/jude/rollviewpager/RollPagerView$b;-><init>(Lcom/jude/rollviewpager/RollPagerView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView;->d:Landroid/view/GestureDetector;

    return-void
.end method

.method private n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    iget v1, p0, Lcom/jude/rollviewpager/RollPagerView;->j:I

    iget v2, p0, Lcom/jude/rollviewpager/RollPagerView;->k:I

    iget v3, p0, Lcom/jude/rollviewpager/RollPagerView;->l:I

    iget v4, p0, Lcom/jude/rollviewpager/RollPagerView;->m:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5
    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 7
    iget v1, p0, Lcom/jude/rollviewpager/RollPagerView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 8
    iget v1, p0, Lcom/jude/rollviewpager/RollPagerView;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 9
    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$e;

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->b:Landroidx/viewpager/widget/a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/jude/rollviewpager/RollPagerView;->g:I

    iget-object v3, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    check-cast v3, Lcom/jude/rollviewpager/a;

    invoke-interface {v0, v1, v2, v3}, Lcom/jude/rollviewpager/RollPagerView$e;->a(IILcom/jude/rollviewpager/a;)V

    return-void
.end method

.method private o()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/jude/rollviewpager/RollPagerView;->f:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->b:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->o:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    :cond_1
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->o:Ljava/util/Timer;

    .line 5
    new-instance v2, Lcom/jude/rollviewpager/RollPagerView$h;

    invoke-direct {v2, p0}, Lcom/jude/rollviewpager/RollPagerView$h;-><init>(Lcom/jude/rollviewpager/RollPagerView;)V

    iget v0, p0, Lcom/jude/rollviewpager/RollPagerView;->f:I

    int-to-long v3, v0

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->o:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->o:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jude/rollviewpager/RollPagerView;->e:J

    .line 2
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$e;

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    check-cast v1, Lcom/jude/rollviewpager/a;

    invoke-interface {v0, p1, v1}, Lcom/jude/rollviewpager/RollPagerView$e;->b(ILcom/jude/rollviewpager/a;)V

    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/a;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/jude/rollviewpager/RollPagerView$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jude/rollviewpager/RollPagerView$f;-><init>(Lcom/jude/rollviewpager/RollPagerView;Lcom/jude/rollviewpager/RollPagerView$a;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 3
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    .line 4
    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView;->b:Landroidx/viewpager/widget/a;

    .line 5
    invoke-direct {p0}, Lcom/jude/rollviewpager/RollPagerView;->k()V

    return-void
.end method

.method public setAnimationDurtion(I)V
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "j"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    new-instance v1, Lcom/jude/rollviewpager/RollPagerView$d;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/jude/rollviewpager/RollPagerView$c;

    invoke-direct {v3, p0}, Lcom/jude/rollviewpager/RollPagerView$c;-><init>(Lcom/jude/rollviewpager/RollPagerView;)V

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/jude/rollviewpager/RollPagerView$d;-><init>(Lcom/jude/rollviewpager/RollPagerView;Landroid/content/Context;Landroid/view/animation/Interpolator;I)V

    .line 4
    iget-object p1, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHintAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jude/rollviewpager/RollPagerView;->i:I

    .line 2
    iget-object p1, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    check-cast p1, Lcom/jude/rollviewpager/a;

    invoke-direct {p0, p1}, Lcom/jude/rollviewpager/RollPagerView;->l(Lcom/jude/rollviewpager/a;)V

    return-void
.end method

.method public setHintPadding(IIII)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/jude/rollviewpager/RollPagerView;->j:I

    .line 2
    iput p2, p0, Lcom/jude/rollviewpager/RollPagerView;->k:I

    .line 3
    iput p3, p0, Lcom/jude/rollviewpager/RollPagerView;->l:I

    .line 4
    iput p4, p0, Lcom/jude/rollviewpager/RollPagerView;->m:I

    .line 5
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setHintView(Lcom/jude/rollviewpager/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/jude/rollviewpager/RollPagerView;->l(Lcom/jude/rollviewpager/a;)V

    :cond_1
    return-void
.end method

.method public setHintViewDelegate(Lcom/jude/rollviewpager/RollPagerView$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$e;

    return-void
.end method

.method public setOnItemClickListener(Lcom/jude/rollviewpager/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView;->c:Lcom/jude/rollviewpager/b;

    return-void
.end method

.method public setPlayDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jude/rollviewpager/RollPagerView;->f:I

    .line 2
    invoke-direct {p0}, Lcom/jude/rollviewpager/RollPagerView;->o()V

    return-void
.end method
