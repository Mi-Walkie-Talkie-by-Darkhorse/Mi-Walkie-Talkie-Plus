.class Lcom/mi/mimsgsdk/controller/MessageController$10;
.super Landroid/os/AsyncTask;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->uploadVideo(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
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

.field final synthetic val$imgAtt:Lcom/mi/mimsgsdk/upload/Attachment;

.field final synthetic val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

.field final synthetic val$tempContent:[B

.field final synthetic val$videoAtt:Lcom/mi/mimsgsdk/upload/Attachment;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/upload/Attachment;[BLcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iput-object p2, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$videoAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    iput-object p3, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$tempContent:[B

    iput-object p4, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$imgAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    iput-object p5, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mi/mimsgsdk/controller/MessageController$10;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/controller/MessageController$10;->uploadFile()V

    return-void
.end method

.method private uploadFile()V
    .locals 5

    invoke-static {}, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->getInstance()Lcom/mi/mimsgsdk/upload/UploadFileLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$700(Lcom/mi/mimsgsdk/controller/MessageController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$videoAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    new-instance v3, Lcom/mi/mimsgsdk/controller/MessageController$10$1;

    iget-object v4, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$videoAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-direct {v3, p0, v4}, Lcom/mi/mimsgsdk/controller/MessageController$10$1;-><init>(Lcom/mi/mimsgsdk/controller/MessageController$10;Lcom/mi/mimsgsdk/upload/Attachment;)V

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->startUploadFile(Landroid/content/Context;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/upload/UploadCallBack;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/4 v1, -0x1

    const-string v2, "uploadVideo occur unkown error"

    iget-object v3, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1100(Lcom/mi/mimsgsdk/controller/MessageController;ILjava/lang/String;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    :cond_0
    return-void
.end method

.method private uploadThumbnail()V
    .locals 5

    invoke-static {}, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->getInstance()Lcom/mi/mimsgsdk/upload/UploadFileLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$700(Lcom/mi/mimsgsdk/controller/MessageController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$imgAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    new-instance v3, Lcom/mi/mimsgsdk/controller/MessageController$10$2;

    iget-object v4, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$imgAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-direct {v3, p0, v4}, Lcom/mi/mimsgsdk/controller/MessageController$10$2;-><init>(Lcom/mi/mimsgsdk/controller/MessageController$10;Lcom/mi/mimsgsdk/upload/Attachment;)V

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->startUploadFile(Landroid/content/Context;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/upload/UploadCallBack;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    const/4 v1, -0x1

    const-string v2, "uploadThumbnail occur unknown error"

    iget-object v3, p0, Lcom/mi/mimsgsdk/controller/MessageController$10;->val$message:Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/controller/MessageController;->access$1100(Lcom/mi/mimsgsdk/controller/MessageController;ILjava/lang/String;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController$10;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-direct {p0}, Lcom/mi/mimsgsdk/controller/MessageController$10;->uploadThumbnail()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
