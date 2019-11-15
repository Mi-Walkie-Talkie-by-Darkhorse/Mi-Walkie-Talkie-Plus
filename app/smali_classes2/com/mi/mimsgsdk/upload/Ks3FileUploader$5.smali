.class Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;
.super Ljava/lang/Object;
.source "Ks3FileUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->listParts(Lcom/ksyun/ks3/services/request/ListPartsRequest;Lcom/mi/mimsgsdk/upload/Attachment;ZLcom/mi/mimsgsdk/upload/UploadPartRequestFactory;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

.field final synthetic val$att:Lcom/mi/mimsgsdk/upload/Attachment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isContinueUpload:Z

.field final synthetic val$request:Lcom/ksyun/ks3/services/request/ListPartsRequest;

.field final synthetic val$requestFactory:Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Landroid/content/Context;Lcom/ksyun/ks3/services/request/ListPartsRequest;ZLcom/mi/mimsgsdk/upload/UploadPartRequestFactory;Lcom/mi/mimsgsdk/upload/Attachment;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    iput-object p2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$request:Lcom/ksyun/ks3/services/request/ListPartsRequest;

    iput-boolean p4, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$isContinueUpload:Z

    iput-object p5, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$requestFactory:Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;

    iput-object p6, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$900(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Landroid/content/Context;)Lcom/ksyun/ks3/services/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;->val$request:Lcom/ksyun/ks3/services/request/ListPartsRequest;

    new-instance v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;

    invoke-direct {v2, p0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5$1;-><init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/services/request/ListPartsRequest;Lcom/ksyun/ks3/services/a/d;)V

    return-void
.end method
