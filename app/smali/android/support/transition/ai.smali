.class public abstract Landroid/support/transition/ai;
.super Landroid/support/transition/m;
.source "Visibility.java"

# interfaces
.implements Landroid/support/transition/al;


# direct methods
.method constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/transition/m;-><init>(Z)V

    if-nez p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/transition/am;

    invoke-direct {v0}, Landroid/support/transition/am;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ai;->a:Landroid/support/transition/p;

    :goto_0
    iget-object v0, p0, Landroid/support/transition/ai;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p0}, Landroid/support/transition/p;->a(Landroid/support/transition/q;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/support/transition/aj;

    invoke-direct {v0}, Landroid/support/transition/aj;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ai;->a:Landroid/support/transition/p;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/transition/ai;->a:Landroid/support/transition/p;

    check-cast v0, Landroid/support/transition/ak;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/ak;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/transition/ae;)V
    .locals 1
    .param p1    # Landroid/support/transition/ae;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/transition/ai;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p1}, Landroid/support/transition/p;->c(Landroid/support/transition/ae;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/transition/ai;->a:Landroid/support/transition/p;

    check-cast v0, Landroid/support/transition/ak;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/ak;->b(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/transition/ae;)V
    .locals 1
    .param p1    # Landroid/support/transition/ae;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/transition/ai;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p1}, Landroid/support/transition/p;->b(Landroid/support/transition/ae;)V

    return-void
.end method

.method public c(Landroid/support/transition/ae;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/transition/ai;->a:Landroid/support/transition/p;

    check-cast v0, Landroid/support/transition/ak;

    invoke-interface {v0, p1}, Landroid/support/transition/ak;->a(Landroid/support/transition/ae;)Z

    move-result v0

    return v0
.end method
