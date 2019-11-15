.class Landroid/support/transition/y$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TransitionPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/y;->a(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/transition/y;


# direct methods
.method constructor <init>(Landroid/support/transition/y;)V
    .locals 0

    iput-object p1, p0, Landroid/support/transition/y$2;->a:Landroid/support/transition/y;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/y$2;->a:Landroid/support/transition/y;

    invoke-virtual {v0}, Landroid/support/transition/y;->g()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
