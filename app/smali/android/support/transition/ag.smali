.class Landroid/support/transition/ag;
.super Landroid/support/transition/ah;
.source "ViewGroupOverlay.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/ah;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Landroid/support/transition/ag;
    .locals 1

    invoke-static {p0}, Landroid/support/transition/ah;->d(Landroid/view/View;)Landroid/support/transition/ah;

    move-result-object v0

    check-cast v0, Landroid/support/transition/ag;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/ag;->a:Landroid/support/transition/ah$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/ah$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/ag;->a:Landroid/support/transition/ah$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/ah$a;->b(Landroid/view/View;)V

    return-void
.end method
