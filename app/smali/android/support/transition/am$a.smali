.class Landroid/support/transition/am$a;
.super Landroid/transition/Visibility;
.source "VisibilityKitKat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/support/transition/al;


# direct methods
.method constructor <init>(Landroid/support/transition/al;)V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    iput-object p1, p0, Landroid/support/transition/am$a;->a:Landroid/support/transition/al;

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/am$a;->a:Landroid/support/transition/al;

    invoke-static {v0, p1}, Landroid/support/transition/s;->b(Landroid/support/transition/q;Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/am$a;->a:Landroid/support/transition/al;

    invoke-static {v0, p1}, Landroid/support/transition/s;->a(Landroid/support/transition/q;Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    iget-object v0, p0, Landroid/support/transition/am$a;->a:Landroid/support/transition/al;

    invoke-static {p2}, Landroid/support/transition/s;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/ae;

    move-result-object v1

    invoke-static {p3}, Landroid/support/transition/s;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/ae;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/support/transition/al;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/support/transition/ae;

    invoke-direct {v0}, Landroid/support/transition/ae;-><init>()V

    invoke-static {p1, v0}, Landroid/support/transition/s;->a(Landroid/transition/TransitionValues;Landroid/support/transition/ae;)V

    iget-object v1, p0, Landroid/support/transition/am$a;->a:Landroid/support/transition/al;

    invoke-interface {v1, v0}, Landroid/support/transition/al;->c(Landroid/support/transition/ae;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/transition/am$a;->a:Landroid/support/transition/al;

    invoke-static {p2}, Landroid/support/transition/s;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/ae;

    move-result-object v2

    invoke-static {p4}, Landroid/support/transition/s;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/ae;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/al;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/transition/am$a;->a:Landroid/support/transition/al;

    invoke-static {p2}, Landroid/support/transition/s;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/ae;

    move-result-object v2

    invoke-static {p4}, Landroid/support/transition/s;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/ae;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/al;->b(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
