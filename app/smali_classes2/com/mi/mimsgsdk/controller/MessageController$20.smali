.class Lcom/mi/mimsgsdk/controller/MessageController$20;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->pullOldGroupMessage(Ljava/lang/String;JI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;

.field final synthetic val$groupId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$20;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iput-object p2, p0, Lcom/mi/mimsgsdk/controller/MessageController$20;->val$groupId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pullOldGroupMessage failed"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgResponse;->parseFrom([B)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPullOldGroupMessageResponse messageResponse="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgResponse;->getMsgsCount()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgResponse;->getMsgs(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v4

    invoke-static {v4}, Lcom/mi/mimsgsdk/controller/MessageController;->parseMessage(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$20;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->access$200(Lcom/mi/mimsgsdk/controller/MessageController;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$20;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->access$200(Lcom/mi/mimsgsdk/controller/MessageController;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$20;->val$groupId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onReceiveOldGroupMessage(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pullOldGroupMsg rsp is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
