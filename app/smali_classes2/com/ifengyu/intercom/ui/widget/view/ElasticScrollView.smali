.class public Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;
.super Landroid/widget/ScrollView;
.source "ElasticScrollView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a:I

    .line 3
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->b:I

    .line 4
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->c:I

    .line 5
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->d:I

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a:I

    .line 9
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->b:I

    .line 10
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->c:I

    .line 11
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->d:I

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a:I

    .line 15
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->b:I

    .line 16
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->c:I

    .line 17
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->d:I

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->c:I

    .line 5
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->d:I

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-gt v0, v1, :cond_7

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 12
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->d:I

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    .line 15
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->d:I

    div-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    .line 16
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 18
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a()V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->layout(IIII)V

    :cond_5
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->b:I

    .line 21
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->c:I

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->b:I

    .line 24
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a:I

    .line 25
    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    :cond_0
    return-void
.end method
