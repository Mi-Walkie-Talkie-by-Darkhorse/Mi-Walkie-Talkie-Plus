.class Lcom/mi/mimsgsdk/controller/MessageController$6;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->sendRoomMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;

.field final synthetic val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$6;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iput-object p2, p0, Lcom/mi/mimsgsdk/controller/MessageController$6;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRoomMessage failed, i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$6;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$6;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget-object v3, p0, Lcom/mi/mimsgsdk/controller/MessageController$6;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/mi/mimsgsdk/controller/MessageController;->access$500(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/service/aidl/MiMessage;JI)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v2

    const/16 v3, -0x190

    invoke-static {v0, v1, v2, v3, p2}, Lcom/mi/mimsgsdk/controller/MessageController;->access$600(Lcom/mi/mimsgsdk/controller/MessageController;ILcom/mi/mimsgsdk/service/aidl/MiMessage;ILjava/lang/String;)V

    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 6

    :try_start_0
    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgResponse;->parseFrom([B)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRoomMessage rsp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$6;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$6;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgResponse;->getMsgSeq()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgResponse;->getSentTime()I

    move-result v3

    invoke-static {v1, v2, v4, v5, v3}, Lcom/mi/mimsgsdk/controller/MessageController;->access$500(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/service/aidl/MiMessage;JI)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$6;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgResponse;->getRetCode()I

    move-result v0

    const-string v4, "sendRoomMessage success"

    invoke-static {v2, v3, v1, v0, v4}, Lcom/mi/mimsgsdk/controller/MessageController;->access$600(Lcom/mi/mimsgsdk/controller/MessageController;ILcom/mi/mimsgsdk/service/aidl/MiMessage;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$6;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/mi/mimsgsdk/controller/MessageController;->onReceiveGameMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendRoomMessage rsp is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
