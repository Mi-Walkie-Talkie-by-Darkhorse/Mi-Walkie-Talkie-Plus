.class public Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;
.super Lme/zhanghai/android/materialprogressbar/BaseProgressLayerDrawable;
.source "HorizontalProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/zhanghai/android/materialprogressbar/BaseProgressLayerDrawable",
        "<",
        "Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;",
        "Lme/zhanghai/android/materialprogressbar/HorizontalProgressBackgroundDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    new-instance v2, Lme/zhanghai/android/materialprogressbar/HorizontalProgressBackgroundDrawable;

    invoke-direct {v2, p1}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressBackgroundDrawable;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-direct {v2, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-direct {v2, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0, p1}, Lme/zhanghai/android/materialprogressbar/BaseProgressLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getShowBackground()Z
    .locals 1

    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseProgressLayerDrawable;->getShowBackground()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getUseIntrinsicPadding()Z
    .locals 1

    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/BaseProgressLayerDrawable;->getUseIntrinsicPadding()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setShowBackground(Z)V
    .locals 0

    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseProgressLayerDrawable;->setShowBackground(Z)V

    return-void
.end method

.method public bridge synthetic setTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseProgressLayerDrawable;->setTint(I)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseProgressLayerDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseProgressLayerDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public bridge synthetic setUseIntrinsicPadding(Z)V
    .locals 0

    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/BaseProgressLayerDrawable;->setUseIntrinsicPadding(Z)V

    return-void
.end method
