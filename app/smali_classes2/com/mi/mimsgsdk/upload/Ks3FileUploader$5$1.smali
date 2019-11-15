.class Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;
.super Lcom/ksyun/ks3/services/a/d;
.source "Ks3FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    invoke-direct {p0}, Lcom/ksyun/ks3/services/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1, p5}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/a/c;)V
    .locals 4

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$400(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$request:Lcom/ksyun/ks3/services/request/ListPartsRequest;

    invoke-virtual {v0}, Lcom/ksyun/ks3/services/request/ListPartsRequest;->p()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-boolean v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$isContinueUpload:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$requestFactory:Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/ksyun/ks3/model/a/c;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/ksyun/ks3/model/a/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-object v1, v1, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$requestFactory:Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;

    invoke-virtual {v1, v0}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->setHasUploadPart(I)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-object v1, v1, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$requestFactory:Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-object v2, v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    iget-object v3, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-object v3, v3, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$1000(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;

    invoke-direct {v0, p3}, Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;-><init>(Lcom/ksyun/ks3/model/a/c;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-object v1, v1, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-object v2, v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    iget-object v3, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    iget-object v3, v3, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, v2, v3}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$1100(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V

    goto :goto_0
.end method
