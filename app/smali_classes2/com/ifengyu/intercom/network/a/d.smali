.class public abstract Lcom/ifengyu/intercom/network/a/d;
.super Landroid/os/Handler;
.source "HttpHandler.java"


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

.method public c()V
    .locals 0

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/network/a/d;->a()V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/network/a/d;->b()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/network/a/d;->a(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/network/a/d;->c()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/network/a/d;->a(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data_on_net"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/network/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/network/a/d;->a(Landroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
