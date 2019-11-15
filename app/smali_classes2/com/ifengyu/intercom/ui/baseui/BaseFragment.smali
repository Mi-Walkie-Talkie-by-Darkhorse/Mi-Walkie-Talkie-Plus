.class public abstract Lcom/ifengyu/intercom/ui/baseui/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Landroid/view/ViewGroup;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->f:Landroid/view/View;

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->d:Z

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->a()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->f:Landroid/view/View;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->e:Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->a(Z)V

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->c:Z

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->d:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->f:Landroid/view/View;

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->f:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->e:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->b()V

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->e:Z

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->a(Z)V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->c:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->c:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->c:Z

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseFragment;->a(Z)V

    goto :goto_0
.end method
