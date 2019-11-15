.class public Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;
.super Ljava/lang/Object;
.source "MxMsgCallbackAdapter.java"

# interfaces
.implements Lcom/mi/mimsgsdk/IMXMsgCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/im/imservice/services/MessageService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    return-void
.end method


# virtual methods
.method public onConnectionStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/imservice/services/MessageService;->handleConnectionStateChanged(I)V

    return-void
.end method

.method public onDataSendResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ifengyu/im/imservice/services/MessageService;->handleDataSendResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    return-void
.end method

.method public onDownloadMediaFileResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;)V
    .locals 0

    return-void
.end method

.method public onInitResult(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    iget v0, p1, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/services/MessageService;->setInitialized(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceiveMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/im/imservice/services/MessageService;->handleReceiveMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)Z

    move-result v0

    return v0
.end method

.method public onReceiveOldGroupMessage(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/service/aidl/MiMessage;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MxMsgCallbackAdapter;->mMessageService:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/im/imservice/services/MessageService;->handleReceiveOldGroupMessage(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public onReceiveOldUserMessage(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/service/aidl/MiMessage;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onUploadLogsResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
    .locals 0

    return-void
.end method

.method public onUploadVideoResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/video/VideoBody;)V
    .locals 0

    return-void
.end method
