.class public abstract Lcom/ifengyu/intercom/ui/base/old/a;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment1.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private w1()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/base/old/a;->c:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/base/old/a;->a:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/base/old/a;->d:Landroid/view/View;

    .line 4
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/base/old/a;->b:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/a;->w1()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/a;->w1()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/a;->d:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/a;->d:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/base/old/a;->c:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/a;->x1()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/base/old/a;->c:Z

    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/a;->y1(Z)V

    .line 8
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/base/old/a;->a:Z

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/base/old/a;->b:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/a;->d:Landroid/view/View;

    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/a;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/base/old/a;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/a;->x1()V

    .line 5
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/base/old/a;->c:Z

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/a;->y1(Z)V

    .line 7
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/base/old/a;->a:Z

    return-void

    .line 8
    :cond_2
    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/base/old/a;->a:Z

    if-eqz p1, :cond_3

    .line 9
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/base/old/a;->a:Z

    .line 10
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/old/a;->y1(Z)V

    :cond_3
    return-void
.end method

.method protected x1()V
    .locals 0

    return-void
.end method

.method protected y1(Z)V
    .locals 0

    return-void
.end method
