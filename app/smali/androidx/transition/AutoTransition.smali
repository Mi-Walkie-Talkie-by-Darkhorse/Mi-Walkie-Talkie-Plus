.class public Landroidx/transition/AutoTransition;
.super Landroidx/transition/TransitionSet;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 2
    invoke-direct {p0}, Landroidx/transition/AutoTransition;->v()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Landroidx/transition/AutoTransition;->v()V

    return-void
.end method

.method private v()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/transition/TransitionSet;->r(I)Landroidx/transition/TransitionSet;

    .line 2
    new-instance v1, Landroidx/transition/Fade;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/transition/Fade;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/transition/TransitionSet;->f(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    new-instance v1, Landroidx/transition/ChangeBounds;

    invoke-direct {v1}, Landroidx/transition/ChangeBounds;-><init>()V

    .line 3
    invoke-virtual {p0, v1}, Landroidx/transition/TransitionSet;->f(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    new-instance v1, Landroidx/transition/Fade;

    invoke-direct {v1, v0}, Landroidx/transition/Fade;-><init>(I)V

    .line 4
    invoke-virtual {p0, v1}, Landroidx/transition/TransitionSet;->f(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    return-void
.end method
