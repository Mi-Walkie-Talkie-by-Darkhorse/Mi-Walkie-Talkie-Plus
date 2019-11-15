.class final Lcom/mi/mimsgsdk/utils/BusinessDBUtils$2;
.super Ljava/lang/Object;
.source "BusinessDBUtils.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->insertGroupRecord(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/utils/BusinessDBUtils$2;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPullOldGroupMessage error"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 4

    :try_start_0
    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgResponse;->parseFrom([B)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->access$000()Ljava/lang/String;

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

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgResponse;->getMsgsCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgResponse;->getMsgs(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v3

    invoke-static {v3}, Lcom/mi/mimsgsdk/controller/MessageController;->parseMessage(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->insertGroupRecordDb(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/utils/BusinessDBUtils$2;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-static {v0}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->insertGroupRecordDb(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
