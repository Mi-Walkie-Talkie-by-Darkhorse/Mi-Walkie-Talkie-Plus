.class public abstract Lcom/ifengyu/intercom/ui/imui/base/loading/b;
.super Ljava/lang/Object;
.source "OnLoadingStateListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->b()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->c()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/loading/b;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
