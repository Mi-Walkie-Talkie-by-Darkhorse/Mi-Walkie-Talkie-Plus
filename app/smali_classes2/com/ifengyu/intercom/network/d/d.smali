.class public abstract Lcom/ifengyu/intercom/network/d/d;
.super Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public abstract c()V
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/network/d/d;->a()V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/network/d/d;->a(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data_on_net"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/network/d/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/network/d/d;->b()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/network/d/d;->a(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/network/d/d;->c()V

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/network/d/d;->a(Z)V

    :goto_0
    return-void
.end method
