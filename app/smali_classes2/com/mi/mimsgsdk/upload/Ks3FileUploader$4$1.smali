.class Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;
.super Lcom/ksyun/ks3/services/a/f;
.source "Ks3FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field progressInFile:D

.field final synthetic this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

.field final synthetic val$request:Lcom/ksyun/ks3/services/request/UploadPartRequest;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;Lcom/ksyun/ks3/services/request/UploadPartRequest;)V
    .locals 2

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

    iput-object p2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->val$request:Lcom/ksyun/ks3/services/request/UploadPartRequest;

    invoke-direct {p0}, Lcom/ksyun/ks3/services/a/f;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->progressInFile:D

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1, p5}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/d;)V
    .locals 4

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$400(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->val$request:Lcom/ksyun/ks3/services/request/UploadPartRequest;

    invoke-virtual {v0}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->p()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

    iget-object v1, v1, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->val$requestFactory:Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

    iget-object v2, v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    iget-object v3, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

    iget-object v3, v3, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$1000(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onTaskProgress(D)V
    .locals 9

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$400(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->val$request:Lcom/ksyun/ks3/services/request/UploadPartRequest;

    invoke-virtual {v0}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->p()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    div-double v0, p1, v6

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->val$request:Lcom/ksyun/ks3/services/request/UploadPartRequest;

    iget-wide v2, v2, Lcom/ksyun/ks3/services/request/UploadPartRequest;->a:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

    iget-object v2, v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->val$requestFactory:Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->getUploadedSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->val$request:Lcom/ksyun/ks3/services/request/UploadPartRequest;

    invoke-virtual {v2}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->q()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->val$request:Lcom/ksyun/ks3/services/request/UploadPartRequest;

    invoke-virtual {v2}, Lcom/ksyun/ks3/services/request/UploadPartRequest;->q()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->progressInFile:D

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;->progressInFile:D

    invoke-virtual {v0, v2, v3}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onTaskProgress(D)V

    goto :goto_0

    :cond_2
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method
