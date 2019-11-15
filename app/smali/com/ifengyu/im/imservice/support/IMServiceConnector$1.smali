.class Lcom/ifengyu/im/imservice/support/IMServiceConnector$1;
.super Ljava/lang/Object;
.source "IMServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/support/IMServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/support/IMServiceConnector;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/support/IMServiceConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/support/IMServiceConnector$1;->this$0:Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "im#onService(imService)Connected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/support/IMServiceConnector$1;->this$0:Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->access$000(Lcom/ifengyu/im/imservice/support/IMServiceConnector;)Lcom/ifengyu/im/imservice/service/IMService;

    move-result-object v0

    if-nez v0, :cond_1

    check-cast p2, Lcom/ifengyu/im/imservice/service/IMService$IMServiceBinder;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/support/IMServiceConnector$1;->this$0:Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/service/IMService$IMServiceBinder;->getService()Lcom/ifengyu/im/imservice/service/IMService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->access$002(Lcom/ifengyu/im/imservice/support/IMServiceConnector;Lcom/ifengyu/im/imservice/service/IMService;)Lcom/ifengyu/im/imservice/service/IMService;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/support/IMServiceConnector$1;->this$0:Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->access$000(Lcom/ifengyu/im/imservice/support/IMServiceConnector;)Lcom/ifengyu/im/imservice/service/IMService;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "im#get imService failed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "im#get imService ok"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/support/IMServiceConnector$1;->this$0:Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->onIMServiceConnected()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    sget-object v0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "onService(imService)Disconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/support/IMServiceConnector$1;->this$0:Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->onServiceDisconnected()V

    return-void
.end method
