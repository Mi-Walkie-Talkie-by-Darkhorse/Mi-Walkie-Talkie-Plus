.class public Lcom/autonavi/amap/mapcore/animation/GLAnimation;
.super Ljava/lang/Object;
.source "GLAnimation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RELATIVE_TO_PARENT:I = 0x2

.field public static final RELATIVE_TO_SELF:I = 0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final START_ON_FIRST_FRAME:I = -0x1

.field public static final ZORDER_BOTTOM:I = -0x1

.field public static final ZORDER_NORMAL:I = 0x0

.field public static final ZORDER_TOP:I = 0x1


# instance fields
.field private mBackgroundColor:I

.field mCycleFlip:Z

.field private mDetachWallpaper:Z

.field mDuration:J

.field mEnded:Z

.field mFillAfter:Z

.field mFillBefore:Z

.field mFillEnabled:Z

.field mInitialized:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

.field private mListenerHandler:Landroid/os/Handler;

.field private mMore:Z

.field private mOnEnd:Ljava/lang/Runnable;

.field private mOnRepeat:Ljava/lang/Runnable;

.field private mOnStart:Ljava/lang/Runnable;

.field private mOneMoreTime:Z

.field mPreviousRegion:Landroid/graphics/RectF;

.field mPreviousTransformation:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

.field mRegion:Landroid/graphics/RectF;

.field mRepeatCount:I

.field mRepeatMode:I

.field mRepeated:I

.field private mScaleFactor:F

.field mStartOffset:J

.field mStartTime:J

.field mStarted:Z

.field mTransformation:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

.field private mZAdjustment:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mEnded:Z

    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStarted:Z

    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mCycleFlip:Z

    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mInitialized:Z

    iput-boolean v3, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillBefore:Z

    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillAfter:Z

    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillEnabled:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartTime:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDuration:J

    iput v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatCount:I

    iput v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeated:I

    iput v3, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatMode:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mScaleFactor:F

    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDetachWallpaper:Z

    iput-boolean v3, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mMore:Z

    iput-boolean v3, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mOneMoreTime:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mPreviousRegion:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRegion:Landroid/graphics/RectF;

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mTransformation:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mPreviousTransformation:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->ensureInterpolator()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private fireAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListener:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListener:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    invoke-interface {v0}, Lcom/amap/api/maps/model/animation/Animation$AnimationListener;->onAnimationEnd()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mOnEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private fireAnimationRepeat()V
    .locals 0

    return-void
.end method

.method private fireAnimationStart()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListener:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListener:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    invoke-interface {v0}, Lcom/amap/api/maps/model/animation/Animation$AnimationListener;->onAnimationStart()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mOnStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLcom/autonavi/amap/mapcore/animation/GLTransformation;)V
    .locals 0

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mEnded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->fireAnimationEnd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mEnded:Z

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mOneMoreTime:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mMore:Z

    return-void
.end method

.method public clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mPreviousRegion:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRegion:Landroid/graphics/RectF;

    new-instance v1, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mTransformation:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    new-instance v1, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mPreviousTransformation:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getRepeatCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public detach()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mEnded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mEnded:Z

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->fireAnimationEnd()V

    :cond_0
    return-void
.end method

.method protected ensureInterpolator()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mBackgroundColor:I

    return v0
.end method

.method public getDetachWallpaper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDetachWallpaper:Z

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDuration:J

    return-wide v0
.end method

.method public getFillAfter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillAfter:Z

    return v0
.end method

.method public getFillBefore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillBefore:Z

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .locals 7

    const/high16 v6, -0x40800000    # -1.0f

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRegion:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mPreviousRegion:Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual {p5, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p5, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p5, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public getRepeatCount()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatMode:I

    return v0
.end method

.method protected getScaleFactor()F
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mScaleFactor:F

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartOffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartTime:J

    return-wide v0
.end method

.method public getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z
    .locals 7

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartTime:J

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getStartOffset()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_8

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartTime:J

    add-long/2addr v0, v4

    sub-long v0, p1, v0

    long-to-float v0, v0

    long-to-float v1, v2

    div-float v1, v0, v1

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    move v2, v0

    :goto_1
    if-nez v2, :cond_b

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mMore:Z

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillEnabled:Z

    if-nez v0, :cond_11

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_3
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-gez v1, :cond_1

    iget-boolean v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillBefore:Z

    if-eqz v1, :cond_6

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillAfter:Z

    if-eqz v1, :cond_6

    :cond_2
    iget-boolean v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStarted:Z

    if-nez v1, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->fireAnimationStart()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStarted:Z

    :cond_3
    iget-boolean v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillEnabled:Z

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_4
    iget-boolean v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mCycleFlip:Z

    if-eqz v1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    :cond_5
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->applyTransformation(FLcom/autonavi/amap/mapcore/animation/GLTransformation;)V

    :cond_6
    if-eqz v2, :cond_7

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatCount:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeated:I

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mEnded:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mEnded:Z

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->fireAnimationEnd()V

    :cond_7
    :goto_5
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mMore:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mOneMoreTime:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mOneMoreTime:Z

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_8
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartTime:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    const/4 v0, 0x0

    :goto_7
    move v1, v0

    goto :goto_0

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_c
    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatCount:I

    if-lez v0, :cond_d

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeated:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeated:I

    :cond_d
    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mCycleFlip:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mCycleFlip:Z

    :cond_e
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mMore:Z

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->fireAnimationRepeat()V

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    goto :goto_8

    :cond_10
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mMore:Z

    goto :goto_6

    :cond_11
    move v0, v1

    goto/16 :goto_3
.end method

.method public getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;F)Z
    .locals 1

    iput p4, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mScaleFactor:F

    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    move-result v0

    return v0
.end method

.method public getZAdjustment()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mZAdjustment:I

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasEnded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mEnded:Z

    return v0
.end method

.method protected hasStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStarted:Z

    return v0
.end method

.method public initialize(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mInitialized:Z

    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 6

    const/high16 v5, -0x40800000    # -1.0f

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mPreviousRegion:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillBefore:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mPreviousTransformation:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->applyTransformation(FLcom/autonavi/amap/mapcore/animation/GLTransformation;)V

    :cond_0
    return-void
.end method

.method public isFillEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillEnabled:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mInitialized:Z

    return v0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mPreviousRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mPreviousTransformation:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->clear()V

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mInitialized:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mCycleFlip:Z

    iput v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeated:I

    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mMore:Z

    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mOneMoreTime:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method protected resolveSize(IFII)F
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return p2

    :pswitch_1
    int-to-float v0, p3

    mul-float/2addr p2, v0

    goto :goto_0

    :pswitch_2
    int-to-float v0, p4

    mul-float/2addr p2, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public restrictDuration(J)V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartOffset:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_1

    iput-wide p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartOffset:J

    iput-wide v6, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDuration:J

    iput v4, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatCount:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDuration:J

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartOffset:J

    add-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-lez v2, :cond_2

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartOffset:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDuration:J

    move-wide v0, p1

    :cond_2
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDuration:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_3

    iput-wide v6, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDuration:J

    iput v4, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatCount:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatCount:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatCount:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_4

    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatCount:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    :cond_4
    div-long v0, p1, v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatCount:I

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatCount:I

    if-gez v0, :cond_0

    iput v4, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatCount:I

    goto :goto_0
.end method

.method public scaleCurrentDuration(F)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDuration:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDuration:J

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartOffset:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartOffset:J

    return-void
.end method

.method public setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListener:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mBackgroundColor:I

    return-void
.end method

.method public setDetachWallpaper(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDetachWallpaper:Z

    return-void
.end method

.method public setDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mDuration:J

    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillAfter:Z

    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillBefore:Z

    return-void
.end method

.method public setFillEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mFillEnabled:Z

    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setListenerHandler(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation$1;

    invoke-direct {v0, p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation$1;-><init>(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mOnStart:Ljava/lang/Runnable;

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation$2;

    invoke-direct {v0, p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation$2;-><init>(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mOnEnd:Ljava/lang/Runnable;

    :cond_0
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iput p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeatMode:I

    return-void
.end method

.method public setStartOffset(J)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartOffset:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    const/4 v0, 0x0

    iput-wide p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStartTime:J

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mEnded:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mStarted:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mCycleFlip:Z

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mRepeated:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mMore:Z

    return-void
.end method

.method public setZAdjustment(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->mZAdjustment:I

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setStartTime(J)V

    return-void
.end method

.method public startNow()V
    .locals 2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setStartTime(J)V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
