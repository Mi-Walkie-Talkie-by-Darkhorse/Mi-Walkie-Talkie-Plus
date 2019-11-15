.class Landroid/support/transition/aj$a;
.super Landroid/support/transition/an;
.source "VisibilityIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/support/transition/al;


# direct methods
.method constructor <init>(Landroid/support/transition/al;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/an;-><init>()V

    iput-object p1, p0, Landroid/support/transition/aj$a;->a:Landroid/support/transition/al;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/transition/aj$a;->a:Landroid/support/transition/al;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/al;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/aj$a;->a:Landroid/support/transition/al;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/transition/al;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/transition/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/aj$a;->a:Landroid/support/transition/al;

    invoke-interface {v0, p1}, Landroid/support/transition/al;->a(Landroid/support/transition/ae;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/transition/aj$a;->a:Landroid/support/transition/al;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/al;->b(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/transition/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/aj$a;->a:Landroid/support/transition/al;

    invoke-interface {v0, p1}, Landroid/support/transition/al;->b(Landroid/support/transition/ae;)V

    return-void
.end method

.method public c(Landroid/support/transition/ae;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/transition/aj$a;->a:Landroid/support/transition/al;

    invoke-interface {v0, p1}, Landroid/support/transition/al;->c(Landroid/support/transition/ae;)Z

    move-result v0

    return v0
.end method
