.class Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6$1;
.super Lcom/ksyun/ks3/services/a/a;
.source "Ks3FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;

    invoke-direct {p0}, Lcom/ksyun/ks3/services/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    const/4 v1, 0x0

    invoke-static {v0, v1, p4}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$600(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1, p5}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/a/a;)V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;

    iget-object v2, v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$600(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onTaskSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/a/a;)V

    :cond_0
    return-void
.end method
