.class Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;
.super Ljava/lang/Object;
.source "Ks3FileUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->initiateMultipartUpload(Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/ksyun/ks3/services/e;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

.field final synthetic val$att:Lcom/mi/mimsgsdk/upload/Attachment;

.field final synthetic val$client:Lcom/ksyun/ks3/services/e;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;Lcom/ksyun/ks3/services/e;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    iput-object p2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->val$request:Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;

    iput-object p3, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->val$client:Lcom/ksyun/ks3/services/e;

    iput-object p4, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    iput-object p5, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->val$request:Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v1}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$300(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->a(Lcom/ksyun/ks3/model/acl/CannedAccessControlList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->val$client:Lcom/ksyun/ks3/services/e;

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;->val$request:Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;

    new-instance v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3$1;

    invoke-direct {v2, p0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3$1;-><init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;Lcom/ksyun/ks3/services/a/b;)V

    return-void
.end method
