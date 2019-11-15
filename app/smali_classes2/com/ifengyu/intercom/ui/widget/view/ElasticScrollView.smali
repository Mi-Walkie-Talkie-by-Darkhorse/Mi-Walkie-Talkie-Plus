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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->c:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->d:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->c:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->d:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->c:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->d:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->b:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->c:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->d:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->c:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->getScrollY()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->d:I

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->d:I

    div-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_4
    iput v5, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->b:I

    iput v5, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->c:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ElasticScrollView;->e:Landroid/view/View;

    :cond_0
    return-void
.end method
