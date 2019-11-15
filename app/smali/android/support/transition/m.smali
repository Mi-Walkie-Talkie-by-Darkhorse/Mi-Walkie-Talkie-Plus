.class public abstract Landroid/support/transition/m;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Landroid/support/transition/q;


# instance fields
.field a:Landroid/support/transition/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/m;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/transition/n;

    invoke-direct {v0}, Landroid/support/transition/n;-><init>()V

    iput-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    :goto_0
    iget-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p0}, Landroid/support/transition/p;->a(Landroid/support/transition/q;)V

    :cond_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/transition/s;

    invoke-direct {v0}, Landroid/support/transition/s;-><init>()V

    iput-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/transition/o;

    invoke-direct {v0}, Landroid/support/transition/o;-><init>()V

    iput-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

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
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/transition/ae;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)Landroid/support/transition/m;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/p;->a(J)Landroid/support/transition/p;

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/m;
    .locals 1
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p1}, Landroid/support/transition/p;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/p;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
