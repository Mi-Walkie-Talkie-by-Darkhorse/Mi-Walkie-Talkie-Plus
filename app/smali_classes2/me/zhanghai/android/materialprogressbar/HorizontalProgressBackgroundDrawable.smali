.class Lme/zhanghai/android/materialprogressbar/HorizontalProgressBackgroundDrawable;
.super Lme/zhanghai/android/materialprogressbar/BaseSingleHorizontalProgressDrawable;

# interfaces
.implements Lme/zhanghai/android/materialprogressbar/ShowBackgroundDrawable;


# instance fields
.field private mShow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseSingleHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressBackgroundDrawable;->mShow:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressBackgroundDrawable;->mShow:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getShowBackground()Z
    .locals 1

    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressBackgroundDrawable;->mShow:Z

    return v0
.end method

.method public setShowBackground(Z)V
    .locals 1

    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressBackgroundDrawable;->mShow:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressBackgroundDrawable;->mShow:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
