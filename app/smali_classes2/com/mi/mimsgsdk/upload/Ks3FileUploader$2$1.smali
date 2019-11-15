.class Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;
.super Lcom/ksyun/ks3/services/a/e;
.source "Ks3FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

.field final synthetic val$request:Lcom/ksyun/ks3/services/request/PutObjectRequest;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;Lcom/ksyun/ks3/services/request/PutObjectRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iput-object p2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->val$request:Lcom/ksyun/ks3/services/request/PutObjectRequest;

    invoke-direct {p0}, Lcom/ksyun/ks3/services/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCancel()V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onTaskCancel()V

    :cond_0
    return-void
.end method

.method public onTaskFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    invoke-static {}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskFailure "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$400(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->val$request:Lcom/ksyun/ks3/services/request/PutObjectRequest;

    invoke-virtual {v0}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->p()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    const/4 v1, 0x0

    invoke-static {v0, v1, p4}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$600(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onTaskFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onTaskFinish()V
    .locals 0

    return-void
.end method

.method public onTaskProgress(D)V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$400(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->val$request:Lcom/ksyun/ks3/services/request/PutObjectRequest;

    invoke-virtual {v0}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->p()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onTaskProgress(D)V

    goto :goto_0
.end method

.method public onTaskStart()V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onTaskStart()V

    :cond_0
    return-void
.end method

.method public onTaskSuccess(I[Lorg/apache/http/Header;)V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$400(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->val$request:Lcom/ksyun/ks3/services/request/PutObjectRequest;

    invoke-virtual {v0}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->p()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v2, v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$600(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;ZLjava/lang/String;)V

    invoke-static {}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload file success, att url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v2, v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onTaskSuccess(I[Lorg/apache/http/Header;)V

    goto :goto_0
.end method
