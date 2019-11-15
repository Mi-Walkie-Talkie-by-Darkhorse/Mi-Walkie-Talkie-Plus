.class Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3$1;
.super Lcom/ksyun/ks3/services/a/b;
.source "Ks3FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;

    invoke-direct {p0}, Lcom/ksyun/ks3/services/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1, p5}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    :cond_0
    invoke-static {}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sliceFile error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ksyun/ks3/exception/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ksyun/ks3/exception/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;

    iget-object v2, v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/a/b;)V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;

    iget-object v0, v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;

    iget-object v1, v1, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3$1;->this$1:Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;

    iget-object v2, v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->val$context:Landroid/content/Context;

    invoke-static {v0, p3, v1, v2}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$800(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Lcom/ksyun/ks3/model/a/b;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V

    return-void
.end method
