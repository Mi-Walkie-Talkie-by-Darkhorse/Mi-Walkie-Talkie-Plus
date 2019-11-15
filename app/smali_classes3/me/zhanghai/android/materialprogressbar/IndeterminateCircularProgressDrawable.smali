.class public Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;
.super Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;
.source "IndeterminateCircularProgressDrawable.java"

# interfaces
.implements Lme/zhanghai/android/materialprogressbar/MaterialProgressDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;,
        Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;
    }
.end annotation


# static fields
.field private static final PADDED_INTRINSIC_SIZE_DP:I = 0x30

.field private static final PROGRESS_INTRINSIC_SIZE_DP:I = 0x2a

.field private static final RECT_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PADDED_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PROGRESS:Landroid/graphics/RectF;


# instance fields
.field private mPaddedIntrinsicSize:I

.field private mProgressIntrinsicSize:I

.field private mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

.field private mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/high16 v2, 0x41a80000    # 21.0f

    const/high16 v5, 0x41980000    # 19.0f

    const/high16 v4, -0x3e400000    # -24.0f

    const/high16 v1, -0x3e580000    # -21.0f

    const/high16 v3, -0x3e680000    # -19.0f

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41c00000    # 24.0f

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;-><init>(Landroid/content/Context;)V

    new-instance v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;-><init>(Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    new-instance v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;-><init>(Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42280000    # 42.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mProgressIntrinsicSize:I

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mPaddedIntrinsicSize:I

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    iget-object v2, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    invoke-static {v2}, Lme/zhanghai/android/materialprogressbar/Animators;->createIndeterminate(Ljava/lang/Object;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;

    invoke-static {v2}, Lme/zhanghai/android/materialprogressbar/Animators;->createIndeterminateRotation(Ljava/lang/Object;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mAnimators:[Landroid/animation/Animator;

    return-void
.end method

.method private drawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;

    invoke-static {v0}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;->access$200(Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingRotation;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    iget v1, v1, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathOffset:F

    iget-object v2, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    iget v2, v2, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathStart:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float v2, v0, v1

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    iget v0, v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathEnd:F

    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;

    iget v1, v1, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable$RingPathTransform;->mTrimPathStart:F

    sub-float/2addr v0, v1

    mul-float/2addr v3, v0

    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private getIntrinsicSize()I
    .locals 1

    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mUseIntrinsicPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mPaddedIntrinsicSize:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mProgressIntrinsicSize:I

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->getIntrinsicSize()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->getIntrinsicSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUseIntrinsicPadding()Z
    .locals 1

    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->getUseIntrinsicPadding()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->isRunning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStateful()Z
    .locals 1

    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->mUseIntrinsicPadding:Z

    if-eqz v0, :cond_0

    int-to-float v0, p2

    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    sget-object v2, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v3

    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    invoke-direct {p0, p1, p4}, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->drawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    int-to-float v0, p2

    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    sget-object v2, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v3

    sget-object v1, Lme/zhanghai/android/materialprogressbar/IndeterminateCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method protected onPreparePaint(Landroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->setTint(I)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public bridge synthetic setUseIntrinsicPadding(Z)V
    .locals 0

    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->setUseIntrinsicPadding(Z)V

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseIndeterminateProgressDrawable;->stop()V

    return-void
.end method
