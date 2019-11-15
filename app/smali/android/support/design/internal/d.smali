.class public Landroid/support/design/internal/d;
.super Landroid/support/transition/m;
.source "TextScale.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/m;-><init>()V

    return-void
.end method

.method private c(Landroid/support/transition/ae;)V
    .locals 3

    iget-object v0, p1, Landroid/support/transition/ae;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/transition/ae;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v2, "android:textscale:scale"

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;
    .locals 6

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p2, Landroid/support/transition/ae;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p3, Landroid/support/transition/ae;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p3, Landroid/support/transition/ae;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Landroid/support/transition/ae;->a:Ljava/util/Map;

    iget-object v5, p3, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v2, "android:textscale:scale"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "android:textscale:scale"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v2, v1

    :goto_1
    const-string v1, "android:textscale:scale"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "android:textscale:scale"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_2
    cmpl-float v1, v2, v3

    if-nez v1, :cond_4

    move-object v0, v4

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v2, v1, v4

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/support/design/internal/d$1;

    invoke-direct {v2, p0, v0}, Landroid/support/design/internal/d$1;-><init>(Landroid/support/design/internal/d;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Landroid/support/transition/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/internal/d;->c(Landroid/support/transition/ae;)V

    return-void
.end method

.method public b(Landroid/support/transition/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/internal/d;->c(Landroid/support/transition/ae;)V

    return-void
.end method
