.class Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;
.super Ljava/lang/Object;
.source "Ks3FileUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->completeUploadPart(Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

.field final synthetic val$att:Lcom/mi/mimsgsdk/upload/Attachment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Landroid/content/Context;Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;Lcom/mi/mimsgsdk/upload/Attachment;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    iput-object p2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->val$request:Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;

    iput-object p4, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$900(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Landroid/content/Context;)Lcom/ksyun/ks3/services/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;->val$request:Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;

    new-instance v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6$1;

    invoke-direct {v2, p0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6$1;-><init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;)V

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;Lcom/ksyun/ks3/services/a/a;)V

    return-void
.end method
