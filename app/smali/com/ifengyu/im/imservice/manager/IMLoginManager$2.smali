.class Lcom/ifengyu/im/imservice/manager/IMLoginManager$2;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "IMLoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMLoginManager;->reqKickPCClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMLoginManager;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMLoginManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager$2;->this$0:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager$2;->this$0:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->KICK_PC_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager$2;->this$0:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->KICK_PC_SUCCESS:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    return-void
.end method

.method public onTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager$2;->this$0:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->KICK_PC_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    return-void
.end method
