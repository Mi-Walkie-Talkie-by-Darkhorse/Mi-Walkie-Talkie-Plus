.class Lcom/mi/mimsgsdk/controller/MessageController$16;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->sendChannelCheckMessage(JILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$16;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$16;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/16 v3, -0x190

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1700(Lcom/mi/mimsgsdk/controller/MessageController;ILcom/mi/mimsgsdk/service/aidl/MiMessage;ILjava/lang/String;)V

    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 9

    :try_start_0
    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->parseFrom([B)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendChannelCheckMessage response rsp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    invoke-direct {v3}, Lcom/mi/mimsgsdk/service/aidl/RetValue;-><init>()V

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->getRet()I

    move-result v1

    iput v1, v3, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$16;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$200(Lcom/mi/mimsgsdk/controller/MessageController;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->getMediaId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->getMuid()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdResponse;->getMediaMuid()I

    move-result v8

    invoke-interface/range {v1 .. v8}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onReceiveSignalMessage(ILcom/mi/mimsgsdk/service/aidl/RetValue;JJI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
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

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendChannelCheckMessage response rsp=null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
