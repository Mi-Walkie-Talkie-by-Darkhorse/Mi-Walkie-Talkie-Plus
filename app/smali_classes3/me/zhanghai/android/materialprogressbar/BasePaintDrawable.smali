.class abstract Lme/zhanghai/android/materialprogressbar/BasePaintDrawable;
.super Lme/zhanghai/android/materialprogressbar/BaseDrawable;
.source "BasePaintDrawable.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/BaseDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;II)V
    .locals 2

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BasePaintDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/BasePaintDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BasePaintDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BasePaintDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BasePaintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lme/zhanghai/android/materialprogressbar/BasePaintDrawable;->onPreparePaint(Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BasePaintDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lme/zhanghai/android/materialprogressbar/BasePaintDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BasePaintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/BasePaintDrawable;->getColorFilterForDrawing()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/BasePaintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p3, v0}, Lme/zhanghai/android/materialprogressbar/BasePaintDrawable;->onDraw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
.end method

.method protected abstract onPreparePaint(Landroid/graphics/Paint;)V
.end method
