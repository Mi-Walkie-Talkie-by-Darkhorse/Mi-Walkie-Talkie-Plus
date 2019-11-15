.class public Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;
.super Lcom/autonavi/amap/mapcore/animation/GLAnimation;
.source "GLAnimationSet.java"


# static fields
.field private static final PROPERTY_CHANGE_BOUNDS_MASK:I = 0x80

.field private static final PROPERTY_DURATION_MASK:I = 0x20

.field private static final PROPERTY_FILL_AFTER_MASK:I = 0x1

.field private static final PROPERTY_FILL_BEFORE_MASK:I = 0x2

.field private static final PROPERTY_MORPH_MATRIX_MASK:I = 0x40

.field private static final PROPERTY_REPEAT_MODE_MASK:I = 0x4

.field private static final PROPERTY_SHARE_INTERPOLATOR_MASK:I = 0x10

.field private static final PROPERTY_START_OFFSET_MASK:I = 0x8


# instance fields
.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/animation/GLAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mDirty:Z

.field private mFlags:I

.field private mHasAlpha:Z

.field private mLastEnd:J

.field private mStoredOffsets:[J

.field private mTempTransformation:Lcom/autonavi/amap/mapcore/animation/GLTransformation;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mTempTransformation:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->setFlag(IZ)V

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mStartTime:J

    return-void
.end method

.method private setFlag(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_3

    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->willChangeTransformationMatrix()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    :cond_0
    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->willChangeBounds()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    :cond_2
    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_4

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mStartOffset:J

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mLastEnd:J

    :goto_1
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mDirty:Z

    return-void

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getStartOffset()J

    move-result-wide v2

    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mDuration:J

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mStartOffset:J

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mLastEnd:J

    goto :goto_1

    :cond_5
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mLastEnd:J

    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getStartOffset()J

    move-result-wide v4

    iget-object v0, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mLastEnd:J

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mLastEnd:J

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mStartOffset:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mDuration:J

    goto :goto_1
.end method

.method public cleanAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public bridge synthetic clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    new-instance v1, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mTempTransformation:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v5, v0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .locals 7

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v5, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->computeDurationHint()J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    :goto_1
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public getAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/animation/GLAnimation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDuration()J
    .locals 8

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-wide/16 v2, 0x0

    iget v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v6, 0x20

    if-ne v1, v6, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mDuration:J

    :goto_1
    return-wide v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getDuration()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public getStartTime()J
    .locals 8

    const-wide v2, 0x7fffffffffffffffL

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getStartTime()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z
    .locals 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v7, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mTempTransformation:Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-virtual {p3}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->clear()V

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v6, v3

    move v1, v2

    move v4, v2

    :goto_0
    if-ltz v5, :cond_5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->clear()V

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getScaleFactor()F

    move-result v9

    invoke-virtual {v0, p1, p2, p3, v9}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;F)Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    move v4, v3

    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    move v1, v3

    :goto_2
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    move v0, v3

    :goto_3
    add-int/lit8 v5, v5, -0x1

    move v6, v0

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    :try_start_0
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mStarted:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mListener:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mListener:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    invoke-interface {v0}, Lcom/amap/api/maps/model/animation/Animation$AnimationListener;->onAnimationStart()V

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mStarted:Z

    :cond_7
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mEnded:Z

    if-eq v6, v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mListener:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mListener:Lcom/amap/api/maps/model/animation/Animation$AnimationListener;

    invoke-interface {v0}, Lcom/amap/api/maps/model/animation/Animation$AnimationListener;->onAnimationEnd()V

    :cond_8
    iput-boolean v6, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mEnded:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_4
    return v4

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public hasAlpha()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mDirty:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mHasAlpha:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mDirty:Z

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mHasAlpha:Z

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mHasAlpha:Z

    return v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->reset()V

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->restoreChildrenStartOffset()V

    return-void
.end method

.method restoreChildrenStartOffset()V
    .locals 8

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mStoredOffsets:[J

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    aget-wide v6, v2, v1

    invoke-virtual {v0, v6, v7}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setStartOffset(J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public restrictDuration(J)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->restrictDuration(J)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->restrictDuration(J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scaleCurrentDuration(F)V
    .locals 4

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->scaleCurrentDuration(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDuration(J)V
    .locals 5

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    invoke-super {p0, p1, p2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setDuration(J)V

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mStartOffset:J

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mLastEnd:J

    return-void
.end method

.method public setFillAfter(Z)V
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    invoke-super {p0, p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setFillAfter(Z)V

    return-void
.end method

.method public setFillBefore(Z)V
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    invoke-super {p0, p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setFillBefore(Z)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    invoke-super {p0, p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setRepeatMode(I)V

    return-void
.end method

.method public setStartOffset(J)V
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    invoke-super {p0, p1, p2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setStartOffset(J)V

    return-void
.end method

.method public setStartTime(J)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setStartTime(J)V

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setStartTime(J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public willChangeBounds()Z
    .locals 2

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 2

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
