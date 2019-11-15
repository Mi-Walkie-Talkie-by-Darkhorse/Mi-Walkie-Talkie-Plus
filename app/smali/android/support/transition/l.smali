.class final Landroid/support/transition/l;
.super Ljava/lang/Object;
.source "ScenePort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Landroid/view/ViewGroup;


# direct methods
.method static a(Landroid/view/View;)Landroid/support/transition/l;
    .locals 1

    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    return-object v0
.end method

.method static a(Landroid/view/View;Landroid/support/transition/l;)V
    .locals 1

    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/l;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/l;->a(Landroid/view/View;)Landroid/support/transition/l;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/support/transition/l;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/l;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
