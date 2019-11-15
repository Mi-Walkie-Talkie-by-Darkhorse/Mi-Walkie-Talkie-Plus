.class Landroid/support/transition/aj;
.super Landroid/support/transition/o;
.source "VisibilityIcs.java"

# interfaces
.implements Landroid/support/transition/ak;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/aj$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/transition/aj;->a:Landroid/support/transition/y;

    check-cast v0, Landroid/support/transition/an;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/an;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/transition/q;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Landroid/support/transition/aj;->b:Landroid/support/transition/q;

    if-nez p2, :cond_0

    new-instance v0, Landroid/support/transition/aj$a;

    check-cast p1, Landroid/support/transition/al;

    invoke-direct {v0, p1}, Landroid/support/transition/aj$a;-><init>(Landroid/support/transition/al;)V

    iput-object v0, p0, Landroid/support/transition/aj;->a:Landroid/support/transition/y;

    :goto_0
    return-void

    :cond_0
    check-cast p2, Landroid/support/transition/an;

    iput-object p2, p0, Landroid/support/transition/aj;->a:Landroid/support/transition/y;

    goto :goto_0
.end method

.method public a(Landroid/support/transition/ae;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/transition/aj;->a:Landroid/support/transition/y;

    check-cast v0, Landroid/support/transition/an;

    invoke-virtual {v0, p1}, Landroid/support/transition/an;->c(Landroid/support/transition/ae;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/transition/aj;->a:Landroid/support/transition/y;

    check-cast v0, Landroid/support/transition/an;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/an;->b(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
