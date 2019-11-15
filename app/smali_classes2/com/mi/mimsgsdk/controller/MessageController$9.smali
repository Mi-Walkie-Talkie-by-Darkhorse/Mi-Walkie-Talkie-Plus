.class Lcom/mi/mimsgsdk/controller/MessageController$9;
.super Landroid/os/AsyncTask;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->uploadImage(Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;)Z
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

.field final synthetic val$callback:Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;

.field final synthetic val$imgAtt:Lcom/mi/mimsgsdk/upload/Attachment;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$9;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    iput-object p2, p0, Lcom/mi/mimsgsdk/controller/MessageController$9;->val$imgAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    iput-object p3, p0, Lcom/mi/mimsgsdk/controller/MessageController$9;->val$callback:Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mi/mimsgsdk/controller/MessageController$9;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/controller/MessageController$9;->handleCallback(ILjava/lang/String;)V

    return-void
.end method

.method private handleCallback(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/RetValue;-><init>()V

    iput p1, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    iput-object p2, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$9;->val$callback:Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;

    invoke-interface {v1, v0}, Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;->onResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uploadImage-handleCallback Exception"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    invoke-static {}, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->getInstance()Lcom/mi/mimsgsdk/upload/UploadFileLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController$9;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-static {v1}, Lcom/mi/mimsgsdk/controller/MessageController;->access$700(Lcom/mi/mimsgsdk/controller/MessageController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController$9;->val$imgAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    new-instance v3, Lcom/mi/mimsgsdk/controller/MessageController$9$1;

    iget-object v4, p0, Lcom/mi/mimsgsdk/controller/MessageController$9;->val$imgAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-direct {v3, p0, v4}, Lcom/mi/mimsgsdk/controller/MessageController$9$1;-><init>(Lcom/mi/mimsgsdk/controller/MessageController$9;Lcom/mi/mimsgsdk/upload/Attachment;)V

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->startUploadFile(Landroid/content/Context;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/upload/UploadCallBack;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "upload image but no response."

    invoke-direct {p0, v0, v1}, Lcom/mi/mimsgsdk/controller/MessageController$9;->handleCallback(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
