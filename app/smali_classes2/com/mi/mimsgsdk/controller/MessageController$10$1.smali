.class Lcom/mi/mimsgsdk/controller/MessageController$10$1;
.super Lcom/mi/mimsgsdk/upload/UploadCallBack;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController$10;->uploadFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController$10;Lcom/mi/mimsgsdk/upload/Attachment;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$10$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;

    invoke-direct {p0, p2}, Lcom/mi/mimsgsdk/upload/UploadCallBack;-><init>(Lcom/mi/mimsgsdk/upload/Attachment;)V

    return-void
.end method


# virtual methods
.method public onTaskFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadVideo failed, i="

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

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$10$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;

    iget-object v0, v0, Lcom/mi/mimsgsdk/controller/MessageController$10;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/4 v1, -0x1

    const-string v2, "upload video task failed"

    iget-object v3, p0, Lcom/mi/mimsgsdk/controller/MessageController$10$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;

    iget-object v3, v3, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1100(Lcom/mi/mimsgsdk/controller/MessageController;ILjava/lang/String;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    return-void
.end method

.method public onTaskSuccess(I[Lorg/apache/http/Header;)V
    .locals 6

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadVideo success"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/MiMessage;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    new-instance v1, Lcom/mi/mimsgsdk/video/VideoBody;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/video/VideoBody;-><init>()V

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$10$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;

    iget-object v2, v2, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$videoAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/video/VideoBody;->setUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$10$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;

    iget-object v2, v2, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$videoAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/video/VideoBody;->setLength(I)V

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$10$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;

    iget-object v2, v2, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$videoAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getFileSize()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/video/VideoBody;->setSize(I)V

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$10$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;

    iget-object v2, v2, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$tempContent:[B

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/video/VideoBody;->setContent([B)V

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$10$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;

    iget-object v2, v2, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$imgAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/video/VideoBody;->setThumbnailUrl(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadVideo success url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/controller/MessageController$10$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;

    iget-object v3, v3, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$videoAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/upload/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$10$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;

    iget-object v1, v1, Lcom/mi/mimsgsdk/controller/MessageController$10;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/4 v2, 0x0

    const-string v3, "success"

    invoke-static {v1, v2, v3, v0}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1100(Lcom/mi/mimsgsdk/controller/MessageController;ILjava/lang/String;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    return-void
.end method
