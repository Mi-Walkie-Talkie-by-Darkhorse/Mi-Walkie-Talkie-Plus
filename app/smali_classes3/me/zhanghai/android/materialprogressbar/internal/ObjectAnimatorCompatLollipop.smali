.class Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompatLollipop;
.super Ljava/lang/Object;
.source "ObjectAnimatorCompatLollipop.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static ofInt(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method
