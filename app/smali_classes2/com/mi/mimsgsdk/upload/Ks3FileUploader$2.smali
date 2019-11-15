.class Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;
.super Ljava/lang/Object;
.source "Ks3FileUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->doSingleUpload(Ljava/lang/String;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/ksyun/ks3/services/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

.field final synthetic val$att:Lcom/mi/mimsgsdk/upload/Attachment;

.field final synthetic val$bucketName:Ljava/lang/String;

.field final synthetic val$client:Lcom/ksyun/ks3/services/e;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Ljava/lang/String;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/ksyun/ks3/services/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    iput-object p2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->val$bucketName:Ljava/lang/String;

    iput-object p3, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    iput-object p4, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->val$client:Lcom/ksyun/ks3/services/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/ksyun/ks3/services/request/PutObjectRequest;

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->val$bucketName:Ljava/lang/String;

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v2}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$200(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v4}, Lcom/mi/mimsgsdk/upload/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/services/request/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-static {v1}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$300(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/services/request/PutObjectRequest;->a(Lcom/ksyun/ks3/model/acl/CannedAccessControlList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;->val$client:Lcom/ksyun/ks3/services/e;

    new-instance v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;

    invoke-direct {v2, p0, v0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2$1;-><init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;Lcom/ksyun/ks3/services/request/PutObjectRequest;)V

    invoke-virtual {v1, v0, v2}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/services/request/PutObjectRequest;Lcom/ksyun/ks3/services/a/e;)Lcom/ksyun/ks3/services/request/Ks3HttpRequest;

    return-void
.end method
