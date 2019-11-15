.class Lcom/mi/mimsgsdk/controller/MessageController$18;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->getGuidfromMediaId(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;

.field final synthetic val$operChannel:I


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;I)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$18;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iput p2, p0, Lcom/mi/mimsgsdk/controller/MessageController$18;->val$operChannel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGuidfromMediaId onDataSendFailed i="

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

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->parseFrom([B)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryConferenceMemberRsp messageResponse="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/service/aidl/RetValue;-><init>()V

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getRet()I

    move-result v2

    iput v2, v1, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$18;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/16 v3, 0x66

    iget v4, p0, Lcom/mi/mimsgsdk/controller/MessageController$18;->val$operChannel:I

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidRsp;->getMediaIdsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1800(Lcom/mi/mimsgsdk/controller/MessageController;IILcom/mi/mimsgsdk/service/aidl/RetValue;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QueryConferenceMemberRsp response is null"

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
