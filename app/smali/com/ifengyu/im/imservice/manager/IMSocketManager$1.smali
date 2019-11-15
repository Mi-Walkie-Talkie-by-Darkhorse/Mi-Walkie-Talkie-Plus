.class Lcom/ifengyu/im/imservice/manager/IMSocketManager$1;
.super Ljava/lang/Object;
.source "IMSocketManager.java"

# interfaces
.implements Lio/reactivex/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMSocketManager;->reqMsgServerAddrs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/b/f",
        "<",
        "Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMSocketManager;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMSocketManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->access$200(Lcom/ifengyu/im/imservice/manager/IMSocketManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    const-string v1, "socket#req msgAddress onSuccess, response:%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->getCode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->access$200(Lcom/ifengyu/im/imservice/manager/IMSocketManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    const-string v1, "login#code is not right:%d, json:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-static {v0, p1}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->access$300(Lcom/ifengyu/im/imservice/manager/IMSocketManager;Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    sget-object v1, Lcom/ifengyu/im/imservice/event/SocketEvent;->REQ_MSG_SERVER_ADDRS_SUCCESS:Lcom/ifengyu/im/imservice/event/SocketEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/SocketEvent;)V

    goto :goto_0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/imservice/manager/IMSocketManager$1;->accept(Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;)V

    return-void
.end method
