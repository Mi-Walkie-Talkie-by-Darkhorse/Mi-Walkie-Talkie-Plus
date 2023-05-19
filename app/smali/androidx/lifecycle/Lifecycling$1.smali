.class Landroidx/lifecycle/Lifecycling$1;
.super Ljava/lang/Object;
.source "Lifecycling.java"

# interfaces
.implements Landroidx/lifecycle/h;


# instance fields
.field final synthetic a:Landroidx/lifecycle/h;


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/j;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/Lifecycling$1;->a:Landroidx/lifecycle/h;

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/h;->onStateChanged(Landroidx/lifecycle/j;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
