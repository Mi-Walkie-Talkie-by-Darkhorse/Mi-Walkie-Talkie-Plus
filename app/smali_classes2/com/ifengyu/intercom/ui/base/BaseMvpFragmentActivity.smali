.class public abstract Lcom/ifengyu/intercom/ui/base/BaseMvpFragmentActivity;
.super Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;
.source "BaseMvpFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/ifengyu/intercom/ui/base/q;",
        "P:",
        "Lcom/ifengyu/intercom/ui/base/m<",
        "TV;>;>",
        "Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;"
    }
.end annotation


# instance fields
.field protected i:Lcom/ifengyu/intercom/ui/base/m;
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
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract N()Lcom/ifengyu/intercom/ui/base/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/BaseMvpFragmentActivity;->N()Lcom/ifengyu/intercom/ui/base/m;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseMvpFragmentActivity;->i:Lcom/ifengyu/intercom/ui/base/m;

    if-eqz v0, :cond_0

    .line 2
    move-object v1, p0

    check-cast v1, Lcom/ifengyu/intercom/ui/base/q;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/m;->n(Lcom/ifengyu/intercom/ui/base/q;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseMvpFragmentActivity;->i:Lcom/ifengyu/intercom/ui/base/m;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/m;->u(Landroidx/lifecycle/Lifecycle;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseMvpFragmentActivity;->i:Lcom/ifengyu/intercom/ui/base/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/m;->q()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->onDestroy()V

    return-void
.end method
