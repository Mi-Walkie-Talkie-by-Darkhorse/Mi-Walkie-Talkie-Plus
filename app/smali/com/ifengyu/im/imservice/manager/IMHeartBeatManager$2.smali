.class Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager$2;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "IMHeartBeatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->sendHeartBeatPacket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;J)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager$2;->this$0:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager$2;->this$0:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    const-string v1, "heartbeat#\u5fc3\u8df3\u5305\u53d1\u9001\u5931\u8d25"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->onMsgServerDisconn()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager$2;->this$0:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    const-string v1, "heartbeat#\u5fc3\u8df3\u6210\u529f\uff0c\u94fe\u63a5\u4fdd\u6d3b"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager$2;->this$0:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    const-string v1, "heartbeat#\u5fc3\u8df3\u5305\u53d1\u9001\u8d85\u65f6"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->onMsgServerDisconn()V

    return-void
.end method
