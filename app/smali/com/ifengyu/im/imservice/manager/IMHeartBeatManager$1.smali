.class Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager$1;
.super Landroid/content/BroadcastReceiver;
.source "IMHeartBeatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-static {v1}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v1

    const-string v2, "heartbeat#im#receive action:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "com.mogujie.tt.imservice.manager.imheartbeatmanager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->sendHeartBeatPacket()V

    :cond_0
    return-void
.end method
