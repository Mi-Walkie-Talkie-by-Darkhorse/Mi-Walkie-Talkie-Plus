.class Lcom/mi/mimsgsdk/controller/MessageController$9$1;
.super Lcom/mi/mimsgsdk/upload/UploadCallBack;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/mimsgsdk/controller/MessageController$9;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController$9;Lcom/mi/mimsgsdk/upload/Attachment;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$9$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$9;

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

    const-string v2, "upload image failed, i="

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

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$9$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$9;

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload image failed, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mi/mimsgsdk/controller/MessageController$9;->access$1000(Lcom/mi/mimsgsdk/controller/MessageController$9;ILjava/lang/String;)V

    return-void
.end method

.method public onTaskSuccess(I[Lorg/apache/http/Header;)V
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload image success, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$9$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$9;

    iget-object v2, v2, Lcom/mi/mimsgsdk/controller/MessageController$9;->val$imgAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$9$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$9;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$9$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$9;

    iget-object v2, v2, Lcom/mi/mimsgsdk/controller/MessageController$9;->val$imgAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mi/mimsgsdk/controller/MessageController$9;->access$1000(Lcom/mi/mimsgsdk/controller/MessageController$9;ILjava/lang/String;)V

    return-void
.end method
