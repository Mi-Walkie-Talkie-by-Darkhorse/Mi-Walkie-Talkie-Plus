.class Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;
.super Landroid/support/design/widget/ValueAnimatorCompat$Impl;
.source "ValueAnimatorCompatImplGingerbread.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0xc8

.field private static final HANDLER_DELAY:I = 0xa

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mAnimatedFraction:F

.field private mDuration:J

.field private final mFloatValues:[F

.field private final mIntValues:[I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsRunning:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIntValues:[I

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mFloatValues:[F

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mDuration:J

    new-instance v0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread$1;-><init>(Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;)V

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private dispatchAnimationCancel()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationCancel()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchAnimationEnd()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationEnd()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchAnimationStart()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationStart()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchAnimationUpdate()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    invoke-interface {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;->onAnimationUpdate()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    sget-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationCancel()V

    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationEnd()V

    return-void
.end method

.method public end()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    sget-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mAnimatedFraction:F

    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationUpdate()V

    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationEnd()V

    :cond_0
    return-void
.end method

.method public getAnimatedFloatValue()F
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mFloatValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mFloatValues:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->getAnimatedFraction()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/AnimationUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public getAnimatedFraction()F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mAnimatedFraction:F

    return v0
.end method

.method public getAnimatedIntValue()I
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIntValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIntValues:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->getAnimatedFraction()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/AnimationUtils;->lerp(IIF)I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mDuration:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    return v0
.end method

.method public setDuration(J)V
    .locals 1

    iput-wide p1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mDuration:J

    return-void
.end method

.method public setFloatValues(FF)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mFloatValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mFloatValues:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method

.method public setIntValues(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIntValues:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIntValues:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mAnimatedFraction:F

    invoke-virtual {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->startInternal()V

    goto :goto_0
.end method

.method final startInternal()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mStartTime:J

    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationUpdate()V

    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationStart()V

    sget-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final update()V
    .locals 6

    iget-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mDuration:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/MathUtils;->constrain(FFF)F

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    iput v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mAnimatedFraction:F

    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationUpdate()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mStartTime:J

    iget-wide v4, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->dispatchAnimationEnd()V

    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mIsRunning:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
