.class public abstract Lcom/ifengyu/intercom/ui/baseui/a;
.super Landroidx/fragment/app/Fragment;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/view/View;

.field protected e:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/baseui/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/baseui/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/a;->c:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/baseui/a;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/baseui/a;->d:Landroid/view/View;

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/a;->b:Z

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method protected i()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/a;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/d;->a()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/baseui/a;->e:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->j()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->j()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/a;->d:Landroid/view/View;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/a;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/a;->c:Z

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/a;->a(Z)V

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/a;->a:Z

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/a;->b:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/a;->d:Landroid/view/View;

    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/a;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/a;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/a;->e()V

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/baseui/a;->c:Z

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/a;->a(Z)V

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/baseui/a;->a:Z

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/baseui/a;->a:Z

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/baseui/a;->a:Z

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/baseui/a;->a(Z)V

    :cond_3
    return-void
.end method
