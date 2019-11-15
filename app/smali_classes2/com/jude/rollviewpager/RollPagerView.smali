.class public Lcom/jude/rollviewpager/RollPagerView;
.super Landroid/widget/RelativeLayout;
.source "RollPagerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jude/rollviewpager/RollPagerView$b;,
        Lcom/jude/rollviewpager/RollPagerView$d;,
        Lcom/jude/rollviewpager/RollPagerView$c;,
        Lcom/jude/rollviewpager/RollPagerView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/support/v4/view/PagerAdapter;

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

.field private p:Lcom/jude/rollviewpager/RollPagerView$a;

.field private q:Lcom/jude/rollviewpager/RollPagerView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jude/rollviewpager/RollPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jude/rollviewpager/RollPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/jude/rollviewpager/RollPagerView$1;

    invoke-direct {v0, p0}, Lcom/jude/rollviewpager/RollPagerView$1;-><init>(Lcom/jude/rollviewpager/RollPagerView;)V

    iput-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$a;

    new-instance v0, Lcom/jude/rollviewpager/RollPagerView$c;

    invoke-direct {v0, p0}, Lcom/jude/rollviewpager/RollPagerView$c;-><init>(Lcom/jude/rollviewpager/RollPagerView;)V

    iput-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->q:Lcom/jude/rollviewpager/RollPagerView$c;

    invoke-direct {p0, p2}, Lcom/jude/rollviewpager/RollPagerView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/b;
    .locals 1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->c:Lcom/jude/rollviewpager/b;

    return-object v0
.end method

.method private a()V
    .locals 6

    iget v0, p0, Lcom/jude/rollviewpager/RollPagerView;->f:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->b:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->o:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->o:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->o:Ljava/util/Timer;

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->o:Ljava/util/Timer;

    new-instance v1, Lcom/jude/rollviewpager/RollPagerView$d;

    invoke-direct {v1, p0}, Lcom/jude/rollviewpager/RollPagerView$d;-><init>(Lcom/jude/rollviewpager/RollPagerView;)V

    iget v2, p0, Lcom/jude/rollviewpager/RollPagerView;->f:I

    int-to-long v2, v2

    iget v4, p0, Lcom/jude/rollviewpager/RollPagerView;->f:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/RollPagerView;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/jude/rollviewpager/RollPagerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/jude/rollviewpager/R$styleable;->RollViewPager:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_gravity:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/jude/rollviewpager/RollPagerView;->g:I

    sget v1, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_play_delay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/jude/rollviewpager/RollPagerView;->f:I

    sget v1, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_color:I

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jude/rollviewpager/RollPagerView;->h:I

    sget v1, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_alpha:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/jude/rollviewpager/RollPagerView;->i:I

    sget v1, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_paddingLeft:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jude/rollviewpager/RollPagerView;->j:I

    sget v1, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_paddingRight:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jude/rollviewpager/RollPagerView;->l:I

    sget v1, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_paddingTop:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jude/rollviewpager/RollPagerView;->k:I

    sget v1, Lcom/jude/rollviewpager/R$styleable;->RollViewPager_rollviewpager_hint_paddingBottom:I

    invoke-virtual {p0}, Lcom/jude/rollviewpager/RollPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/jude/rollviewpager/c;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jude/rollviewpager/RollPagerView;->m:I

    new-instance v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/jude/rollviewpager/RollPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroid/support/v4/view/ViewPager;

    sget v2, Lcom/jude/rollviewpager/R$id;->viewpager_inner:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setId(I)V

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroid/support/v4/view/ViewPager;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v1}, Lcom/jude/rollviewpager/RollPagerView;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lcom/jude/rollviewpager/hintview/ColorPointHintView;

    invoke-virtual {p0}, Lcom/jude/rollviewpager/RollPagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "#E3AC42"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#88ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/jude/rollviewpager/hintview/ColorPointHintView;-><init>(Landroid/content/Context;II)V

    invoke-direct {p0, v0}, Lcom/jude/rollviewpager/RollPagerView;->a(Lcom/jude/rollviewpager/a;)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/jude/rollviewpager/RollPagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/jude/rollviewpager/RollPagerView$2;

    invoke-direct {v2, p0}, Lcom/jude/rollviewpager/RollPagerView$2;-><init>(Lcom/jude/rollviewpager/RollPagerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->d:Landroid/view/GestureDetector;

    return-void
.end method

.method private a(Lcom/jude/rollviewpager/a;)V
    .locals 1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/RollPagerView;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/jude/rollviewpager/a;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    invoke-direct {p0}, Lcom/jude/rollviewpager/RollPagerView;->c()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/jude/rollviewpager/RollPagerView;)Landroid/support/v4/view/PagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->b:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->o:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->o:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->o:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/jude/rollviewpager/RollPagerView;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/RollPagerView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    iget v1, p0, Lcom/jude/rollviewpager/RollPagerView;->j:I

    iget v2, p0, Lcom/jude/rollviewpager/RollPagerView;->k:I

    iget v3, p0, Lcom/jude/rollviewpager/RollPagerView;->l:I

    iget v4, p0, Lcom/jude/rollviewpager/RollPagerView;->m:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget v1, p0, Lcom/jude/rollviewpager/RollPagerView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v1, p0, Lcom/jude/rollviewpager/RollPagerView;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$a;

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->b:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v3, p0, Lcom/jude/rollviewpager/RollPagerView;->g:I

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    check-cast v0, Lcom/jude/rollviewpager/a;

    invoke-interface {v2, v1, v3, v0}, Lcom/jude/rollviewpager/RollPagerView$a;->a(IILcom/jude/rollviewpager/a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/jude/rollviewpager/RollPagerView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$a;

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    iget v3, p0, Lcom/jude/rollviewpager/RollPagerView;->g:I

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    check-cast v0, Lcom/jude/rollviewpager/a;

    invoke-interface {v1, v2, v3, v0}, Lcom/jude/rollviewpager/RollPagerView$a;->a(IILcom/jude/rollviewpager/a;)V

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$a;

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    check-cast v0, Lcom/jude/rollviewpager/a;

    invoke-interface {v1, v2, v0}, Lcom/jude/rollviewpager/RollPagerView$a;->a(ILcom/jude/rollviewpager/a;)V

    :cond_0
    invoke-direct {p0}, Lcom/jude/rollviewpager/RollPagerView;->a()V

    return-void
.end method

.method static synthetic e(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/RollPagerView$a;
    .locals 1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$a;

    return-object v0
.end method

.method static synthetic f(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/jude/rollviewpager/RollPagerView;->b()V

    return-void
.end method

.method static synthetic g(Lcom/jude/rollviewpager/RollPagerView;)J
    .locals 2

    iget-wide v0, p0, Lcom/jude/rollviewpager/RollPagerView;->e:J

    return-wide v0
.end method

.method static synthetic h(Lcom/jude/rollviewpager/RollPagerView;)I
    .locals 1

    iget v0, p0, Lcom/jude/rollviewpager/RollPagerView;->f:I

    return v0
.end method

.method static synthetic i(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/RollPagerView$c;
    .locals 1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->q:Lcom/jude/rollviewpager/RollPagerView$c;

    return-object v0
.end method

.method static synthetic j(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/jude/rollviewpager/RollPagerView;->d()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jude/rollviewpager/RollPagerView;->e:J

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroid/support/v4/view/ViewPager;

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

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$a;

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    check-cast v0, Lcom/jude/rollviewpager/a;

    invoke-interface {v1, p1, v0}, Lcom/jude/rollviewpager/RollPagerView$a;->a(ILcom/jude/rollviewpager/a;)V

    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 2

    new-instance v0, Lcom/jude/rollviewpager/RollPagerView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jude/rollviewpager/RollPagerView$b;-><init>(Lcom/jude/rollviewpager/RollPagerView;Lcom/jude/rollviewpager/RollPagerView$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-direct {p0}, Lcom/jude/rollviewpager/RollPagerView;->d()V

    return-void
.end method

.method public setAnimationDurtion(I)V
    .locals 4

    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Lcom/jude/rollviewpager/RollPagerView$4;

    invoke-virtual {p0}, Lcom/jude/rollviewpager/RollPagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/jude/rollviewpager/RollPagerView$3;

    invoke-direct {v3, p0}, Lcom/jude/rollviewpager/RollPagerView$3;-><init>(Lcom/jude/rollviewpager/RollPagerView;)V

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/jude/rollviewpager/RollPagerView$4;-><init>(Lcom/jude/rollviewpager/RollPagerView;Landroid/content/Context;Landroid/view/animation/Interpolator;I)V

    iget-object v2, p0, Lcom/jude/rollviewpager/RollPagerView;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setHintAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/jude/rollviewpager/RollPagerView;->i:I

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    check-cast v0, Lcom/jude/rollviewpager/a;

    invoke-direct {p0, v0}, Lcom/jude/rollviewpager/RollPagerView;->a(Lcom/jude/rollviewpager/a;)V

    return-void
.end method

.method public setHintPadding(IIII)V
    .locals 5

    iput p1, p0, Lcom/jude/rollviewpager/RollPagerView;->j:I

    iput p2, p0, Lcom/jude/rollviewpager/RollPagerView;->k:I

    iput p3, p0, Lcom/jude/rollviewpager/RollPagerView;->l:I

    iput p4, p0, Lcom/jude/rollviewpager/RollPagerView;->m:I

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    iget v1, p0, Lcom/jude/rollviewpager/RollPagerView;->j:I

    iget v2, p0, Lcom/jude/rollviewpager/RollPagerView;->k:I

    iget v3, p0, Lcom/jude/rollviewpager/RollPagerView;->l:I

    iget v4, p0, Lcom/jude/rollviewpager/RollPagerView;->m:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setHintView(Lcom/jude/rollviewpager/a;)V
    .locals 1

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jude/rollviewpager/RollPagerView;->removeView(Landroid/view/View;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/jude/rollviewpager/RollPagerView;->n:Landroid/view/View;

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/jude/rollviewpager/RollPagerView;->a(Lcom/jude/rollviewpager/a;)V

    :cond_1
    return-void
.end method

.method public setHintViewDelegate(Lcom/jude/rollviewpager/RollPagerView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView;->p:Lcom/jude/rollviewpager/RollPagerView$a;

    return-void
.end method

.method public setOnItemClickListener(Lcom/jude/rollviewpager/b;)V
    .locals 0

    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView;->c:Lcom/jude/rollviewpager/b;

    return-void
.end method

.method public setPlayDelay(I)V
    .locals 0

    iput p1, p0, Lcom/jude/rollviewpager/RollPagerView;->f:I

    invoke-direct {p0}, Lcom/jude/rollviewpager/RollPagerView;->a()V

    return-void
.end method
