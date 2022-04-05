.class public Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field private a:Landroid/view/View;

.field private b:F

.field private c:Landroid/graphics/Rect;

.field private d:Z

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->d:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->e:F

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->f:F

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->g:F

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->h:F

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->i:F

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->j:F

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->k:Z

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->e:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->f:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->i:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->j:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->k:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iget-boolean v4, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->d:Z

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->b:F

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    div-int/2addr v1, v3

    sub-int/2addr v4, v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    :cond_3
    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->d:Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a()V

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->d:Z

    :cond_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->d()V

    :goto_1
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->h:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->g:F

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->e:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->i:F

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->h:F

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->f:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->j:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->j:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->j:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->k:Z

    :cond_1
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->g:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->e:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->h:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->f:F

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a(Landroid/view/MotionEvent;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
