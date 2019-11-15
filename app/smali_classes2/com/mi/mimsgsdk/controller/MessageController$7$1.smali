.class Lcom/mi/mimsgsdk/controller/MessageController$7$1;
.super Lcom/mi/mimsgsdk/upload/UploadCallBack;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController$7;->uploadFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController$7;Lcom/mi/mimsgsdk/upload/Attachment;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    invoke-direct {p0, p2}, Lcom/mi/mimsgsdk/upload/UploadCallBack;-><init>(Lcom/mi/mimsgsdk/upload/Attachment;)V

    return-void
.end method


# virtual methods
.method public onTaskFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAudioMessage upload audio failure, i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ks3Error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p5}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v0, v0, Lcom/mi/mimsgsdk/controller/MessageController$7;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget v1, v1, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$sendToType:I

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v2, v2, Lcom/mi/mimsgsdk/controller/MessageController$7;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget-object v3, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v3, v3, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$gameMessage:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/mi/mimsgsdk/controller/MessageController;->access$500(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/service/aidl/MiMessage;JI)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v2

    const/16 v3, -0x191

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendAudioMessage, upload audio failed, ks3 error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mi/mimsgsdk/controller/MessageController;->access$600(Lcom/mi/mimsgsdk/controller/MessageController;ILcom/mi/mimsgsdk/service/aidl/MiMessage;ILjava/lang/String;)V

    return-void
.end method

.method public onTaskSuccess(I[Lorg/apache/http/Header;)V
    .locals 6

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendAudioMessage upload audio success"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/MiMessage;-><init>()V

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v1, v1, Lcom/mi/mimsgsdk/controller/MessageController$7;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$800(Lcom/mi/mimsgsdk/controller/MessageController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v1, v1, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$gameMessage:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    iget-object v1, v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    new-instance v1, Lcom/mi/mimsgsdk/message/AudioBody;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/message/AudioBody;-><init>()V

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v2, v2, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/mi/mimsgsdk/message/AudioBody;->setLength(J)V

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v2, v2, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/message/AudioBody;->setUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v2, v2, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$tempContent:[B

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/message/AudioBody;->setContent([B)V

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v1, v1, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$gameMessage:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    iget-wide v2, v1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    iput-wide v2, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->sendTime:I

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAudioMessage upload audio success url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v3, v3, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/upload/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget v1, v1, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$sendToType:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v1, v1, Lcom/mi/mimsgsdk/controller/MessageController$7;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2}, Lcom/mi/mimsgsdk/controller/MessageController;->sendUserMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v1, v1, Lcom/mi/mimsgsdk/controller/MessageController$7;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2}, Lcom/mi/mimsgsdk/controller/MessageController;->sendUserMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v1, v1, Lcom/mi/mimsgsdk/controller/MessageController$7;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2}, Lcom/mi/mimsgsdk/controller/MessageController;->sendRoomMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$7$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$7;

    iget-object v1, v1, Lcom/mi/mimsgsdk/controller/MessageController$7;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2}, Lcom/mi/mimsgsdk/controller/MessageController;->sendGroupMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
