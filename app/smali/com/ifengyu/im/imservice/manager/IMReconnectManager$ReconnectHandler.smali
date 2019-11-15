.class Lcom/ifengyu/im/imservice/manager/IMReconnectManager$ReconnectHandler;
.super Lcom/ifengyu/library/base/a;
.source "IMReconnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/manager/IMReconnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReconnectHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/library/base/a",
        "<",
        "Lcom/ifengyu/im/imservice/manager/IMReconnectManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ifengyu/im/imservice/manager/IMReconnectManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/library/base/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;Lcom/ifengyu/im/imservice/manager/IMReconnectManager;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p2, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ifengyu/im/utils/NetworkUtil;->isNetWorkAvalible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMReconnectManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    const-string v1, "reconnect#handleMessage#\u7f51\u7edc\u4f9d\u65e7\u4e0d\u53ef\u7528"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->access$100(Lcom/ifengyu/im/imservice/manager/IMReconnectManager;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->DISABLE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager$ReconnectHandler;->handleMessage(Landroid/os/Message;Lcom/ifengyu/im/imservice/manager/IMReconnectManager;)V

    return-void
.end method
