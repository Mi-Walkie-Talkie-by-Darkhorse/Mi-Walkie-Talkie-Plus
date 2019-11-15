.class Landroid/support/transition/j;
.super Landroid/support/transition/an;
.source "FadePort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/transition/j;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/transition/j;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/an;-><init>()V

    iput p1, p0, Landroid/support/transition/j;->b:I

    return-void
.end method

.method private a(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p2, p3

    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-boolean v1, Landroid/support/transition/j;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "Fade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created animator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private d(Landroid/support/transition/ae;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p1, Landroid/support/transition/ae;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p1, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v2, "android:fade:screenX"

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v2, "android:fade:screenY"

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/transition/j;->b:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p4, Landroid/support/transition/ae;->b:Landroid/view/View;

    sget-boolean v0, Landroid/support/transition/j;->a:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    iget-object v0, p2, Landroid/support/transition/ae;->b:Landroid/view/View;

    :goto_1
    const-string v3, "Fade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fade.onAppear: startView, startVis, endView, endVis = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Landroid/support/transition/j$1;

    invoke-direct {v0, p0, v2}, Landroid/support/transition/j$1;-><init>(Landroid/support/transition/j;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/support/transition/j;->a(Landroid/support/transition/y$b;)Landroid/support/transition/y;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v6, v0, v1}, Landroid/support/transition/j;->a(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Landroid/support/transition/ae;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/transition/an;->a(Landroid/support/transition/ae;)V

    invoke-direct {p0, p1}, Landroid/support/transition/j;->d(Landroid/support/transition/ae;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 10

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/transition/j;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eq v0, v9, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p2, :cond_4

    iget-object v2, p2, Landroid/support/transition/ae;->b:Landroid/view/View;

    :goto_1
    if-eqz p4, :cond_5

    iget-object v0, p4, Landroid/support/transition/ae;->b:Landroid/view/View;

    :goto_2
    sget-boolean v3, Landroid/support/transition/j;->a:Z

    if-eqz v3, :cond_2

    const-string v3, "Fade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fade.onDisappear: startView, startVis, endView, endVis = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_3
    if-eqz v0, :cond_6

    move-object v3, v1

    move-object v5, v0

    move-object v2, v0

    :goto_3
    if-eqz v5, :cond_b

    iget-object v0, p2, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v1, "android:fade:screenX"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p2, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v4, "android:fade:screenY"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v4, v9, [I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v6, v4, v6

    sub-int/2addr v1, v6

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-static {v5, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    const/4 v1, 0x1

    aget v1, v4, v1

    sub-int/2addr v0, v1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    invoke-static {p1}, Landroid/support/transition/ag;->a(Landroid/view/ViewGroup;)Landroid/support/transition/ag;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/transition/ag;->a(Landroid/view/View;)V

    new-instance v0, Landroid/support/transition/j$2;

    move-object v1, p0

    move v4, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/transition/j$2;-><init>(Landroid/support/transition/j;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v2, v8, v7, v0}, Landroid/support/transition/j;->a(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    move-object v2, v1

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto/16 :goto_2

    :cond_6
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v3, v1

    move-object v5, v2

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/support/transition/j;->q:Z

    if-eqz v0, :cond_c

    move-object v0, v2

    :goto_4
    move-object v3, v1

    move-object v5, v0

    goto/16 :goto_3

    :cond_8
    const/4 v3, 0x4

    if-ne p5, v3, :cond_9

    move-object v3, v0

    move-object v5, v1

    move-object v2, v0

    goto/16 :goto_3

    :cond_9
    if-ne v2, v0, :cond_a

    move-object v3, v0

    move-object v5, v1

    move-object v2, v0

    goto/16 :goto_3

    :cond_a
    move-object v3, v1

    move-object v5, v2

    goto/16 :goto_3

    :cond_b
    if-eqz v3, :cond_0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/support/transition/j$3;

    move-object v1, p0

    move v4, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/transition/j$3;-><init>(Landroid/support/transition/j;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v2, v8, v7, v0}, Landroid/support/transition/j;->a(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    move-object v2, v1

    goto :goto_4

    :cond_d
    move-object v3, v1

    move-object v5, v1

    move-object v2, v1

    goto/16 :goto_3
.end method
