.class Lcom/ifengyu/im/imservice/manager/IMSocketManager$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMSocketManager;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMSocketManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager$2;->this$0:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/imservice/manager/IMSocketManager$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager$2;->this$0:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->access$200(Lcom/ifengyu/im/imservice/manager/IMSocketManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    const-string v1, "socket#req msgAddress Failure, errorResponse:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager$2;->this$0:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    sget-object v1, Lcom/ifengyu/im/imservice/event/SocketEvent;->REQ_MSG_SERVER_ADDRS_FAILED:Lcom/ifengyu/im/imservice/event/SocketEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/SocketEvent;)V

    return-void
.end method
