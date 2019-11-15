.class Lcom/mi/mimsgsdk/controller/MessageController$13;
.super Lcom/mi/mimsgsdk/upload/UploadCallBack;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->uploadLogs0(ZLcom/mi/mimsgsdk/log/upload/UploadLogParameter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;

.field final synthetic val$attachment:Lcom/mi/mimsgsdk/upload/Attachment;

.field final synthetic val$needNotifyClient:Z

.field final synthetic val$param:Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/upload/Attachment;ZLjava/lang/String;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iput-boolean p3, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->val$needNotifyClient:Z

    iput-object p4, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->val$path:Ljava/lang/String;

    iput-object p5, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->val$attachment:Lcom/mi/mimsgsdk/upload/Attachment;

    iput-object p6, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->val$param:Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;

    invoke-direct {p0, p2}, Lcom/mi/mimsgsdk/upload/UploadCallBack;-><init>(Lcom/mi/mimsgsdk/upload/Attachment;)V

    return-void
.end method


# virtual methods
.method public onTaskFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget-boolean v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->val$needNotifyClient:Z

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTaskFailure zip localpath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->val$path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ks3Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1300(Lcom/mi/mimsgsdk/controller/MessageController;ZILjava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1402(Lcom/mi/mimsgsdk/controller/MessageController;Z)Z

    return-void
.end method

.method public onTaskSuccess(I[Lorg/apache/http/Header;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget-boolean v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->val$needNotifyClient:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskSuccess zip localpath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->val$attachment:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/upload/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1300(Lcom/mi/mimsgsdk/controller/MessageController;ZILjava/lang/String;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->val$param:Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->getFeedbackMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->val$attachment:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mi/mimsgsdk/upload/UploadTask;->notifyServerUploadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$13;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v0, v4}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1402(Lcom/mi/mimsgsdk/controller/MessageController;Z)Z

    return-void
.end method
