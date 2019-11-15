.class Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompatBase;
.super Ljava/lang/Object;
.source "ObjectAnimatorCompatBase.java"


# static fields
.field private static final NUM_POINTS:I = 0xc9


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateXYValues(Landroid/graphics/Path;[F[F)V
    .locals 7
    .param p1    # [F
        .annotation build Landroid/support/annotation/Size;
            value = 0xc9L
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroid/support/annotation/Size;
            value = 0xc9L
        .end annotation
    .end param

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, p0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    const/4 v0, 0x2

    new-array v4, v0, [F

    move v0, v1

    :goto_0
    const/16 v5, 0xc9

    if-ge v0, v5, :cond_0

    int-to-float v5, v0

    mul-float/2addr v5, v3

    const/high16 v6, 0x43480000    # 200.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v4, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v5, v4, v1

    aput v5, p1, v0

    const/4 v5, 0x1

    aget v5, v4, v5

    aput v5, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static calculateXYValues(Landroid/graphics/Path;[I[I)V
    .locals 7
    .param p1    # [I
        .annotation build Landroid/support/annotation/Size;
            value = 0xc9L
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroid/support/annotation/Size;
            value = 0xc9L
        .end annotation
    .end param

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, p0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    const/4 v0, 0x2

    new-array v4, v0, [F

    move v0, v1

    :goto_0
    const/16 v5, 0xc9

    if-ge v0, v5, :cond_0

    int-to-float v5, v0

    mul-float/2addr v5, v3

    const/high16 v6, 0x43480000    # 200.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v4, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v5, v4, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, p1, v0

    const/4 v5, 0x1

    aget v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    .locals 2
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

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 4
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

    const/16 v1, 0xc9

    new-array v0, v1, [F

    new-array v1, v1, [F

    invoke-static {p3, v0, v1}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompatBase;->calculateXYValues(Landroid/graphics/Path;[F[F)V

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {p2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 4

    const/16 v1, 0xc9

    new-array v0, v1, [F

    new-array v1, v1, [F

    invoke-static {p3, v0, v1}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompatBase;->calculateXYValues(Landroid/graphics/Path;[F[F)V

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {p2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static ofInt(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 4
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

    const/16 v1, 0xc9

    new-array v0, v1, [I

    new-array v1, v1, [I

    invoke-static {p3, v0, v1}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompatBase;->calculateXYValues(Landroid/graphics/Path;[I[I)V

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {p2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 4

    const/16 v1, 0xc9

    new-array v0, v1, [I

    new-array v1, v1, [I

    invoke-static {p3, v0, v1}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompatBase;->calculateXYValues(Landroid/graphics/Path;[I[I)V

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {p2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method
