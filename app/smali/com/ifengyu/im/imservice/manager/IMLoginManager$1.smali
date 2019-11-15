.class Lcom/ifengyu/im/imservice/manager/IMLoginManager$1;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "IMLoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMLoginManager;->reqLoginMsgServer()V
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

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_INNER_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-class v0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImLoginReq onSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    check-cast p1, Lcom/google/protobuf/CodedInputStream;

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user_handle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getUserHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nserver_time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getServerTime()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nresult_code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getResultCode()Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nresult_string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getResultString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nuser_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nuser_name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nb2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getB2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\npublicId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getPublicid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\npublicKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getPublickey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nresultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getResultCode()Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-static {v2}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMLoginManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v2

    const-string v3, "login#onSuccess:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->onRepMsgServerLogin(Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    sget-object v2, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_INNER_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v1, v2}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-static {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMLoginManager;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v1

    const-string v2, "login failed,cause by %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager$1;->this$0:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_INNER_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    return-void
.end method
