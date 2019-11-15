.class Lcom/mi/mimsgsdk/controller/MessageController$8$1;
.super Lcom/mi/mimsgsdk/upload/UploadCallBack;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController$8;->uploadThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/mimsgsdk/controller/MessageController$8;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController$8;Lcom/mi/mimsgsdk/upload/Attachment;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$8$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$8;

    invoke-direct {p0, p2}, Lcom/mi/mimsgsdk/upload/UploadCallBack;-><init>(Lcom/mi/mimsgsdk/upload/Attachment;)V

    return-void
.end method


# virtual methods
.method public onTaskFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendVideoMessage, uploadThumbnail failure, i="

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

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$8$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$8;

    iget-object v0, v0, Lcom/mi/mimsgsdk/controller/MessageController$8;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$8$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$8;

    iget v1, v1, Lcom/mi/mimsgsdk/controller/MessageController$8;->val$sendToType:I

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$8$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$8;

    iget-object v2, v2, Lcom/mi/mimsgsdk/controller/MessageController$8;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget-object v3, p0, Lcom/mi/mimsgsdk/controller/MessageController$8$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$8;

    iget-object v3, v3, Lcom/mi/mimsgsdk/controller/MessageController$8;->val$gameMessage:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/mi/mimsgsdk/controller/MessageController;->access$500(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/service/aidl/MiMessage;JI)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v2

    const/16 v3, -0x191

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload thumbnail failed\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mi/mimsgsdk/controller/MessageController;->access$600(Lcom/mi/mimsgsdk/controller/MessageController;ILcom/mi/mimsgsdk/service/aidl/MiMessage;ILjava/lang/String;)V

    return-void
.end method

.method public onTaskSuccess(I[Lorg/apache/http/Header;)V
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendVideoMessage, uploadThumbnail success"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/mimsgsdk/controller/MessageController$8$1$1;

    invoke-direct {v0, p0}, Lcom/mi/mimsgsdk/controller/MessageController$8$1$1;-><init>(Lcom/mi/mimsgsdk/controller/MessageController$8$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
