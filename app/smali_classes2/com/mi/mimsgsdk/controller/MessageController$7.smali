.class Lcom/mi/mimsgsdk/controller/MessageController$7;
.super Landroid/os/AsyncTask;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->sendAudioMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;

.field final synthetic val$att:Lcom/mi/mimsgsdk/upload/Attachment;

.field final synthetic val$gameMessage:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

.field final synthetic val$sendToType:I

.field final synthetic val$tempContent:[B


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/service/aidl/MiMessage;[BI)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$7;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iput-object p2, p0, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    iput-object p3, p0, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$gameMessage:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    iput-object p4, p0, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$tempContent:[B

    iput p5, p0, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$sendToType:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/controller/MessageController$7;->uploadFile()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method public uploadFile()V
    .locals 7

    invoke-static {}, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->getInstance()Lcom/mi/mimsgsdk/upload/UploadFileLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$7;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$700(Lcom/mi/mimsgsdk/controller/MessageController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    new-instance v3, Lcom/mi/mimsgsdk/controller/MessageController$7$1;

    iget-object v4, p0, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$att:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-direct {v3, p0, v4}, Lcom/mi/mimsgsdk/controller/MessageController$7$1;-><init>(Lcom/mi/mimsgsdk/controller/MessageController$7;Lcom/mi/mimsgsdk/upload/Attachment;)V

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->startUploadFile(Landroid/content/Context;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/upload/UploadCallBack;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAudioMessage upload audio failure, res ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$7;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$sendToType:I

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$7;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iget-object v3, p0, Lcom/mi/mimsgsdk/controller/MessageController$7;->val$gameMessage:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/mi/mimsgsdk/controller/MessageController;->access$500(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/service/aidl/MiMessage;JI)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v2

    const/16 v3, -0x191

    const-string v4, "sendAudioMessage, upload audio failed, unknown error!"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mi/mimsgsdk/controller/MessageController;->access$600(Lcom/mi/mimsgsdk/controller/MessageController;ILcom/mi/mimsgsdk/service/aidl/MiMessage;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
