.class Landroid/support/transition/o;
.super Landroid/support/transition/p;
.source "TransitionIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/o$a;
    }
.end annotation


# instance fields
.field a:Landroid/support/transition/y;

.field b:Landroid/support/transition/q;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/o;->a:Landroid/support/transition/y;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/transition/y;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Landroid/support/transition/p;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/o;->a:Landroid/support/transition/y;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/y;->a(J)Landroid/support/transition/y;

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/p;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/o;->a:Landroid/support/transition/y;

    invoke-virtual {v0, p1}, Landroid/support/transition/y;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/y;

    return-object p0
.end method

.method public a(Landroid/support/transition/q;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Landroid/support/transition/o;->b:Landroid/support/transition/q;

    if-nez p2, :cond_0

    new-instance v0, Landroid/support/transition/o$a;

    invoke-direct {v0, p1}, Landroid/support/transition/o$a;-><init>(Landroid/support/transition/q;)V

    iput-object v0, p0, Landroid/support/transition/o;->a:Landroid/support/transition/y;

    :goto_0
    return-void

    :cond_0
    check-cast p2, Landroid/support/transition/y;

    iput-object p2, p0, Landroid/support/transition/o;->a:Landroid/support/transition/y;

    goto :goto_0
.end method

.method public b(Landroid/support/transition/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/o;->a:Landroid/support/transition/y;

    invoke-virtual {v0, p1}, Landroid/support/transition/y;->b(Landroid/support/transition/ae;)V

    return-void
.end method

.method public c(Landroid/support/transition/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/o;->a:Landroid/support/transition/y;

    invoke-virtual {v0, p1}, Landroid/support/transition/y;->a(Landroid/support/transition/ae;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/o;->a:Landroid/support/transition/y;

    invoke-virtual {v0}, Landroid/support/transition/y;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
