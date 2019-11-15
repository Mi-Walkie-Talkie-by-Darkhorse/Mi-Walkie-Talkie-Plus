.class Landroid/support/transition/h;
.super Landroid/support/transition/o;
.source "FadeIcs.java"

# interfaces
.implements Landroid/support/transition/ak;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/transition/q;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/transition/o;-><init>()V

    new-instance v0, Landroid/support/transition/j;

    invoke-direct {v0}, Landroid/support/transition/j;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/h;->a(Landroid/support/transition/q;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/transition/q;I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/transition/o;-><init>()V

    new-instance v0, Landroid/support/transition/j;

    invoke-direct {v0, p2}, Landroid/support/transition/j;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/h;->a(Landroid/support/transition/q;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/transition/h;->a:Landroid/support/transition/y;

    check-cast v0, Landroid/support/transition/j;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/j;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/transition/ae;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/transition/h;->a:Landroid/support/transition/y;

    check-cast v0, Landroid/support/transition/j;

    invoke-virtual {v0, p1}, Landroid/support/transition/j;->c(Landroid/support/transition/ae;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/transition/h;->a:Landroid/support/transition/y;

    check-cast v0, Landroid/support/transition/j;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/j;->b(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
