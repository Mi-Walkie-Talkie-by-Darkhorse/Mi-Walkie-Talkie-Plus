.class Landroid/support/transition/s$a;
.super Landroid/transition/Transition;
.source "TransitionKitKat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/support/transition/q;


# direct methods
.method public constructor <init>(Landroid/support/transition/q;)V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    iput-object p1, p0, Landroid/support/transition/s$a;->a:Landroid/support/transition/q;

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/s$a;->a:Landroid/support/transition/q;

    invoke-static {v0, p1}, Landroid/support/transition/s;->b(Landroid/support/transition/q;Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/s$a;->a:Landroid/support/transition/q;

    invoke-static {v0, p1}, Landroid/support/transition/s;->a(Landroid/support/transition/q;Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    iget-object v0, p0, Landroid/support/transition/s$a;->a:Landroid/support/transition/q;

    invoke-static {p2}, Landroid/support/transition/s;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/ae;

    move-result-object v1

    invoke-static {p3}, Landroid/support/transition/s;->a(Landroid/transition/TransitionValues;)Landroid/support/transition/ae;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/support/transition/q;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
