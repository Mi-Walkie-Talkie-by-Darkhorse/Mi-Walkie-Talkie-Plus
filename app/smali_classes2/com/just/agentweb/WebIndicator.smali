.class public Lcom/just/agentweb/WebIndicator;
.super Lcom/just/agentweb/BaseIndicatorView;
.source "WebIndicator.java"

# interfaces
.implements Lcom/just/agentweb/BaseIndicatorSpec;


# static fields
.field public static final DO_END_ANIMATION_DURATION:I = 0x258

.field public static final FINISH:I = 0x2

.field public static final MAX_DECELERATE_SPEED_DURATION:I = 0x1c2

.field public static final MAX_UNIFORM_SPEED_DURATION:I = 0x1f40

.field public static final STARTED:I = 0x1

.field public static final UN_START:I


# instance fields
.field private indicatorStatus:I

.field private mAnimator:Landroid/animation/Animator;

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mColor:I

.field private mCurrentDoEndAnimationDuration:I

.field private mCurrentMaxDecelerateSpeedDuration:I

.field private mCurrentMaxUniformSpeedDuration:I

.field private mCurrentProgress:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTargetWidth:I

.field public mWebIndicatorDefaultHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/just/agentweb/WebIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/just/agentweb/WebIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/just/agentweb/BaseIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mTargetWidth:I

    const/16 v1, 0x1f40

    .line 5
    iput v1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxUniformSpeedDuration:I

    const/16 v1, 0x1c2

    .line 6
    iput v1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxDecelerateSpeedDuration:I

    const/16 v1, 0x258

    .line 7
    iput v1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentDoEndAnimationDuration:I

    .line 8
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->indicatorStatus:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    const/4 v0, 0x3

    .line 10
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mWebIndicatorDefaultHeight:I

    .line 11
    new-instance v0, Lcom/just/agentweb/WebIndicator$1;

    invoke-direct {v0, p0}, Lcom/just/agentweb/WebIndicator$1;-><init>(Lcom/just/agentweb/WebIndicator;)V

    iput-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 12
    new-instance v0, Lcom/just/agentweb/WebIndicator$2;

    invoke-direct {v0, p0}, Lcom/just/agentweb/WebIndicator$2;-><init>(Lcom/just/agentweb/WebIndicator;)V

    iput-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/just/agentweb/WebIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/just/agentweb/WebIndicator;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    return p1
.end method

.method static synthetic access$100(Lcom/just/agentweb/WebIndicator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/just/agentweb/WebIndicator;->doEnd()V

    return-void
.end method

.method private doEnd()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/just/agentweb/WebIndicator;->indicatorStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->indicatorStatus:I

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    const-string p2, "#1aad19"

    .line 2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/just/agentweb/WebIndicator;->mColor:I

    .line 3
    iget-object p2, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object p2, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/just/agentweb/WebIndicator;->mColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object p2, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 6
    iget-object p2, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/just/agentweb/WebIndicator;->mTargetWidth:I

    const/high16 p2, 0x40400000    # 3.0f

    .line 8
    invoke-static {p1, p2}, Lcom/just/agentweb/AgentWebUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/just/agentweb/WebIndicator;->mWebIndicatorDefaultHeight:I

    return-void
.end method

.method private startAnim(Z)V
    .locals 11

    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v1, 0x42be0000    # 95.0f

    if-eqz p1, :cond_0

    const/high16 v2, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42be0000    # 95.0f

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2
    iget-object v3, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 3
    :cond_1
    iget v3, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2

    const v3, 0x322bcc77    # 1.0E-8f

    :cond_2
    iput v3, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    const v4, 0x3d4ccccd    # 0.05f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-nez p1, :cond_3

    .line 4
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const v1, 0x3f19999a    # 0.6f

    mul-float v3, v2, v1

    new-array v9, v8, [F

    .line 5
    iget v10, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    aput v10, v9, v6

    aput v3, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    new-array v8, v8, [F

    aput v3, v8, v6

    aput v2, v8, v7

    .line 6
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 7
    iget v3, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    div-float/2addr v3, v0

    sub-float/2addr v5, v3

    sub-float/2addr v5, v4

    .line 8
    iget v0, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxUniformSpeedDuration:I

    int-to-float v0, v0

    mul-float v5, v5, v0

    float-to-long v3, v5

    long-to-float v0, v3

    mul-float v1, v1, v0

    float-to-long v3, v1

    const v1, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 9
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    invoke-virtual {v9, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 16
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 17
    iput-object p1, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    cmpg-float v2, v3, v1

    if-gez v2, :cond_4

    new-array p1, v8, [F

    aput v3, p1, v6

    aput v1, p1, v7

    .line 18
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 19
    iget v1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    div-float/2addr v1, v0

    sub-float/2addr v5, v1

    sub-float/2addr v5, v4

    .line 20
    iget v0, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxDecelerateSpeedDuration:I

    int-to-float v0, v0

    mul-float v5, v5, v0

    float-to-long v0, v5

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4
    new-array v0, v8, [F

    .line 23
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 24
    iget v1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentDoEndAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v1, v8, [F

    .line 25
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 26
    iget v2, p0, Lcom/just/agentweb/WebIndicator;->mCurrentDoEndAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    iget-object v2, p0, Lcom/just/agentweb/WebIndicator;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 28
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    .line 29
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_5

    .line 30
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 31
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object v2, v0

    .line 32
    :cond_5
    iget-object p1, p0, Lcom/just/agentweb/WebIndicator;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 34
    iput-object v2, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    .line 35
    :goto_1
    iput v7, p0, Lcom/just/agentweb/WebIndicator;->indicatorStatus:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x42be0000    # 95.0f
        0x42c80000    # 100.0f
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v5, v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->indicatorStatus:I

    return-void
.end method

.method public offerLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/just/agentweb/WebIndicator;->mWebIndicatorDefaultHeight:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_1
    :goto_0
    if-ne v1, v2, :cond_2

    .line 6
    iget p2, p0, Lcom/just/agentweb/WebIndicator;->mWebIndicatorDefaultHeight:I

    .line 7
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/just/agentweb/WebIndicator;->mTargetWidth:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    iget p2, p0, Lcom/just/agentweb/WebIndicator;->mTargetWidth:I

    if-lt p2, p1, :cond_0

    const/16 p1, 0x1c2

    .line 5
    iput p1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxDecelerateSpeedDuration:I

    const/16 p2, 0x1f40

    .line 6
    iput p2, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxUniformSpeedDuration:I

    .line 7
    iput p1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentDoEndAnimationDuration:I

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    int-to-float p1, p1

    .line 8
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float/2addr p2, p1

    const/high16 p1, 0x45fa0000    # 8000.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 9
    iput p1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxUniformSpeedDuration:I

    const/high16 p1, 0x43e10000    # 450.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 10
    iput p1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxDecelerateSpeedDuration:I

    const/high16 p1, 0x44160000    # 600.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 11
    iput p1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentDoEndAnimationDuration:I

    .line 12
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CURRENT_MAX_UNIFORM_SPEED_DURATION"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/just/agentweb/WebIndicator;->mCurrentMaxUniformSpeedDuration:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebProgress"

    invoke-static {p2, p1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/just/agentweb/WebIndicator;->mColor:I

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/just/agentweb/WebIndicator;->setColor(I)V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const/high16 v0, 0x42be0000    # 95.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget p1, p0, Lcom/just/agentweb/WebIndicator;->indicatorStatus:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/just/agentweb/WebIndicator;->startAnim(Z)V

    :cond_2
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    int-to-float p1, p1

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/just/agentweb/WebIndicator;->setProgress(F)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/just/agentweb/WebIndicator;->mCurrentProgress:F

    .line 4
    invoke-direct {p0, v0}, Lcom/just/agentweb/WebIndicator;->startAnim(Z)V

    :cond_0
    return-void
.end method
