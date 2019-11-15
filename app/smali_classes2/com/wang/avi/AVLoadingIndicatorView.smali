.class public Lcom/wang/avi/AVLoadingIndicatorView;
.super Landroid/view/View;
.source "AVLoadingIndicatorView.java"


# static fields
.field private static final DEFAULT_INDICATOR:Lcom/wang/avi/indicators/BallPulseIndicator;

.field private static final MIN_DELAY:I = 0x1f4

.field private static final MIN_SHOW_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "AVLoadingIndicatorView"


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mIndicator:Lcom/wang/avi/Indicator;

.field private mIndicatorColor:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mPostedHide:Z

.field private mPostedShow:Z

.field private mShouldStartAnimationDrawable:Z

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wang/avi/indicators/BallPulseIndicator;

    invoke-direct {v0}, Lcom/wang/avi/indicators/BallPulseIndicator;-><init>()V

    sput-object v0, Lcom/wang/avi/AVLoadingIndicatorView;->DEFAULT_INDICATOR:Lcom/wang/avi/indicators/BallPulseIndicator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    iput-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    iput-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    iput-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$1;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$2;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    iput-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    iput-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    iput-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$1;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$2;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    sget v0, Lcom/wang/avi/R$style;->AVLoadingIndicatorView:I

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    iput-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    iput-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    iput-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$1;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$2;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    sget v0, Lcom/wang/avi/R$style;->AVLoadingIndicatorView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    iput-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    iput-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    iput-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$1;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$2;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    sget v0, Lcom/wang/avi/R$style;->AVLoadingIndicatorView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$002(Lcom/wang/avi/AVLoadingIndicatorView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    return p1
.end method

.method static synthetic access$102(Lcom/wang/avi/AVLoadingIndicatorView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/wang/avi/AVLoadingIndicatorView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/wang/avi/AVLoadingIndicatorView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/16 v1, 0x30

    const/16 v0, 0x18

    iput v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinWidth:I

    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxWidth:I

    iput v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinHeight:I

    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxHeight:I

    sget-object v0, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_minWidth:I

    iget v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinWidth:I

    sget v1, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_maxWidth:I

    iget v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxWidth:I

    sget v1, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_minHeight:I

    iget v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinHeight:I

    sget v1, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_maxHeight:I

    iget v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxHeight:I

    sget v1, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_indicatorName:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_indicatorColor:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicatorColor:I

    invoke-virtual {p0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicator(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-nez v1, :cond_0

    sget-object v1, Lcom/wang/avi/AVLoadingIndicatorView;->DEFAULT_INDICATOR:Lcom/wang/avi/indicators/BallPulseIndicator;

    invoke-virtual {p0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicator(Lcom/wang/avi/Indicator;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private removeCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateDrawableBounds(II)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    sub-int v3, p1, v0

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    sub-int v2, p2, v0

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v0}, Lcom/wang/avi/Indicator;->getIntrinsicWidth()I

    move-result v0

    iget-object v4, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v4}, Lcom/wang/avi/Indicator;->getIntrinsicHeight()I

    move-result v4

    int-to-float v0, v0

    int-to-float v4, v4

    div-float/2addr v0, v4

    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_2

    cmpl-float v4, v4, v0

    if-lez v4, :cond_1

    int-to-float v4, v2

    mul-float/2addr v0, v4

    float-to-int v4, v0

    sub-int v0, v3, v4

    div-int/lit8 v0, v0, 0x2

    add-int v3, v0, v4

    :goto_0
    iget-object v4, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v4, v0, v1, v3, v2}, Lcom/wang/avi/Indicator;->setBounds(IIII)V

    :cond_0
    return-void

    :cond_1
    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v0, v5, v0

    mul-float/2addr v0, v4

    float-to-int v4, v0

    sub-int v0, v2, v4

    div-int/lit8 v0, v0, 0x2

    add-int v2, v0, v4

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 2

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v1}, Lcom/wang/avi/Indicator;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v1, v0}, Lcom/wang/avi/Indicator;->setState([I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    :cond_0
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v0, p1, p2}, Lcom/wang/avi/Indicator;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->updateDrawableState()V

    return-void
.end method

.method public getIndicator()Lcom/wang/avi/Indicator;
    .locals 1

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    return-object v0
.end method

.method public hide()V
    .locals 10

    const-wide/16 v8, 0x1f4

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    sub-long v0, v8, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v6, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedHide:Z

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/wang/avi/AVLoadingIndicatorView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->invalidate(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->startAnimation()V

    invoke-direct {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->stopAnimation()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/wang/avi/AVLoadingIndicatorView;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinWidth:I

    iget v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMinHeight:I

    iget v3, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mMaxHeight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->updateDrawableState()V

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p2, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wang/avi/AVLoadingIndicatorView;->updateDrawableBounds(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->stopAnimation()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->startAnimation()V

    goto :goto_0
.end method

.method public setIndicator(Lcom/wang/avi/Indicator;)V
    .locals 2

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wang/avi/Indicator;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    iget v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicatorColor:I

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicatorColor(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/wang/avi/Indicator;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public setIndicator(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".indicators"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/Indicator;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicator(Lcom/wang/avi/Indicator;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "AVLoadingIndicatorView"

    const-string v1, "Didn\'t find your class , check the name again !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

.method public setIndicatorColor(I)V
    .locals 1

    iput p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicatorColor:I

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v0, p1}, Lcom/wang/avi/Indicator;->setColor(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->stopAnimation()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->startAnimation()V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDismissed:Z

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/wang/avi/AVLoadingIndicatorView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mPostedShow:Z

    :cond_0
    return-void
.end method

.method public smoothToHide()V
    .locals 2

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    return-void
.end method

.method public smoothToShow()V
    .locals 2

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    return-void
.end method

.method startAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    :cond_1
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->postInvalidate()V

    goto :goto_0
.end method

.method stopAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    invoke-virtual {v0}, Lcom/wang/avi/Indicator;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    :cond_0
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->postInvalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->mIndicator:Lcom/wang/avi/Indicator;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
