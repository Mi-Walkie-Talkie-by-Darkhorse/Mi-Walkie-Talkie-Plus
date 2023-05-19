.class public abstract Lcom/ifengyu/intercom/ui/base/p;
.super Lcom/ifengyu/intercom/ui/base/o;
.source "BaseSearchMvpFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/ifengyu/intercom/ui/base/q;",
        "P:",
        "Lcom/ifengyu/intercom/ui/base/m<",
        "TV;>;>",
        "Lcom/ifengyu/intercom/ui/base/o;"
    }
.end annotation


# instance fields
.field protected B:Lcom/ifengyu/intercom/ui/base/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/o;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/p;->y3()Lcom/ifengyu/intercom/ui/base/m;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    if-eqz p1, :cond_0

    .line 3
    move-object v0, p0

    check-cast v0, Lcom/ifengyu/intercom/ui/base/q;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/base/m;->n(Lcom/ifengyu/intercom/ui/base/q;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/base/m;->u(Landroidx/lifecycle/Lifecycle;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/p;->B:Lcom/ifengyu/intercom/ui/base/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/m;->q()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method protected abstract y3()Lcom/ifengyu/intercom/ui/base/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method
