.class Lcom/mi/mimsgsdk/controller/MessageController$10$2;
.super Lcom/mi/mimsgsdk/upload/UploadCallBack;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController$10;->uploadThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController$10;Lcom/mi/mimsgsdk/upload/Attachment;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$10$2;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;

    invoke-direct {p0, p2}, Lcom/mi/mimsgsdk/upload/UploadCallBack;-><init>(Lcom/mi/mimsgsdk/upload/Attachment;)V

    return-void
.end method


# virtual methods
.method public onTaskFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadthumbnail failed, i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ks3Error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p5}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$10$2;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;

    iget-object v0, v0, Lcom/mi/mimsgsdk/controller/MessageController$10;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/4 v1, -0x1

    const-string v2, "upload thumbnail task faied"

    iget-object v3, p0, Lcom/mi/mimsgsdk/controller/MessageController$10$2;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$10;

    iget-object v3, v3, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1100(Lcom/mi/mimsgsdk/controller/MessageController;ILjava/lang/String;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    return-void
.end method

.method public onTaskSuccess(I[Lorg/apache/http/Header;)V
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadthumbnail success"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/mimsgsdk/controller/MessageController$10$2$1;

    invoke-direct {v0, p0}, Lcom/mi/mimsgsdk/controller/MessageController$10$2$1;-><init>(Lcom/mi/mimsgsdk/controller/MessageController$10$2;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
