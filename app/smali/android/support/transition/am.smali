.class Landroid/support/transition/am;
.super Landroid/support/transition/s;
.source "VisibilityKitKat.java"

# interfaces
.implements Landroid/support/transition/ak;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/am$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/transition/am;->a:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    invoke-static {p2}, Landroid/support/transition/am;->d(Landroid/support/transition/ae;)Landroid/transition/TransitionValues;

    move-result-object v2

    invoke-static {p4}, Landroid/support/transition/am;->d(Landroid/support/transition/ae;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/transition/q;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Landroid/support/transition/am;->b:Landroid/support/transition/q;

    if-nez p2, :cond_0

    new-instance v0, Landroid/support/transition/am$a;

    check-cast p1, Landroid/support/transition/al;

    invoke-direct {v0, p1}, Landroid/support/transition/am$a;-><init>(Landroid/support/transition/al;)V

    iput-object v0, p0, Landroid/support/transition/am;->a:Landroid/transition/Transition;

    :goto_0
    return-void

    :cond_0
    check-cast p2, Landroid/transition/Visibility;

    iput-object p2, p0, Landroid/support/transition/am;->a:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public a(Landroid/support/transition/ae;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/transition/am;->a:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    invoke-static {p1}, Landroid/support/transition/am;->d(Landroid/support/transition/ae;)Landroid/transition/TransitionValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->isVisible(Landroid/transition/TransitionValues;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/transition/am;->a:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Visibility;

    invoke-static {p2}, Landroid/support/transition/am;->d(Landroid/support/transition/ae;)Landroid/transition/TransitionValues;

    move-result-object v2

    invoke-static {p4}, Landroid/support/transition/am;->d(Landroid/support/transition/ae;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
