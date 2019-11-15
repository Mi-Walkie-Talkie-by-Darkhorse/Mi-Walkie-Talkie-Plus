.class public Landroid/support/transition/z;
.super Landroid/support/transition/m;
.source "TransitionSet.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/transition/m;-><init>(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/support/transition/aa;

    invoke-direct {v0, p0}, Landroid/support/transition/aa;-><init>(Landroid/support/transition/q;)V

    iput-object v0, p0, Landroid/support/transition/z;->a:Landroid/support/transition/p;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/transition/ac;

    invoke-direct {v0, p0}, Landroid/support/transition/ac;-><init>(Landroid/support/transition/q;)V

    iput-object v0, p0, Landroid/support/transition/z;->a:Landroid/support/transition/p;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/ae;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/transition/ae;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/transition/z;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/transition/p;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/transition/z;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/transition/z;->a:Landroid/support/transition/p;

    check-cast v0, Landroid/support/transition/ab;

    invoke-interface {v0, p1}, Landroid/support/transition/ab;->b(I)Landroid/support/transition/ab;

    return-object p0
.end method

.method public a(Landroid/support/transition/m;)Landroid/support/transition/z;
    .locals 2
    .param p1    # Landroid/support/transition/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/transition/z;->a:Landroid/support/transition/p;

    check-cast v0, Landroid/support/transition/ab;

    iget-object v1, p1, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    invoke-interface {v0, v1}, Landroid/support/transition/ab;->b(Landroid/support/transition/p;)Landroid/support/transition/ab;

    return-object p0
.end method

.method public a(Landroid/support/transition/ae;)V
    .locals 1
    .param p1    # Landroid/support/transition/ae;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/transition/z;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p1}, Landroid/support/transition/p;->c(Landroid/support/transition/ae;)V

    return-void
.end method

.method public b(Landroid/support/transition/ae;)V
    .locals 1
    .param p1    # Landroid/support/transition/ae;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/transition/z;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p1}, Landroid/support/transition/p;->b(Landroid/support/transition/ae;)V

    return-void
.end method
