.class Lcom/ifengyu/im/imservice/manager/IMReconnectManager$1;
.super Landroid/content/BroadcastReceiver;
.source "IMReconnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/manager/IMReconnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMReconnectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-static {v1}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMReconnectManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v1

    const-string v2, "reconnect#im#receive action:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-virtual {v1, v0, p2}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->onAction(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
