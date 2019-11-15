.class Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;
.super Ljava/lang/Object;
.source "Ks3FileUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->uploadpart(Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

.field final synthetic val$att:Lcom/mi/mimsgsdk/upload/Attachment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$requestFactory:Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Landroid/content/Context;Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;Lcom/mi/mimsgsdk/upload/Attachment;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    iput-object p2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->val$requestFactory:Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;

    iput-object p4, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->this$0:Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$900(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Landroid/content/Context;)Lcom/ksyun/ks3/services/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;->val$requestFactory:Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->getNextUploadPartRequest()Lcom/ksyun/ks3/services/request/UploadPartRequest;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload upload part="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;

    invoke-direct {v2, p0, v1}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4$1;-><init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;Lcom/ksyun/ks3/services/request/UploadPartRequest;)V

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/ks3/services/e;->a(Lcom/ksyun/ks3/services/request/UploadPartRequest;Lcom/ksyun/ks3/services/a/f;)V

    return-void
.end method
