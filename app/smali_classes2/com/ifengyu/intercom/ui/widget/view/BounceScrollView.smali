.class public Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;
.super Landroid/widget/ScrollView;
.source "BounceScrollView.java"


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
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->d:Z

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->e:F

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->f:F

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->g:F

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->h:F

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->i:F

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->j:F

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->k:Z

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

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a()V

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->d:Z

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->d()V

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->d:Z

    if-nez v3, :cond_3

    :goto_1
    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->b:F

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v5, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->d:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->h:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->g:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->e:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->h:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->f:F

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->g:F

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->e:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->i:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->h:F

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->f:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->j:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->i:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->j:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->j:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->k:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/BounceScrollView;->a:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
