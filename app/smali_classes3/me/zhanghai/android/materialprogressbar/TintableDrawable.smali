.class public interface abstract Lme/zhanghai/android/materialprogressbar/TintableDrawable;
.super Ljava/lang/Object;
.source "TintableDrawable.java"


# virtual methods
.method public abstract setTint(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setTintList(Landroid/content/res/ColorStateList;)V
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
