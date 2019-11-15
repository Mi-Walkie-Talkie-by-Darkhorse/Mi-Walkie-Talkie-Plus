.class public Lcom/mi/mimsgsdk/service/MiMsgServiceFacade;
.super Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;
.source "MiMsgServiceFacade.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/service/MiMsgServiceFacade;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceFacade;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 11

    invoke-direct {p0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;-><init>()V

    iput-object p1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceFacade;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mi/mimsgsdk/utils/GlobalData;->initialize(Landroid/content/Context;I)V

    iget-object v10, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceFacade;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceFacade;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mi/mimsgsdk/utils/VersionUtils;->getCurrentVersionCode(Landroid/content/Context;)I

    move-result v2

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceFacade;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mi/mimsgsdk/utils/VersionUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RELEASE"

    const-string v5, "MiMsgSdk"

    const-string v6, "com.mi.mimsgsdk"

    const-string v7, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.mi.mimsgsdk:milink"

    move v1, p2

    invoke-direct/range {v0 .. v9}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v0}, Lcom/mi/milinkforgame/sdk/base/Global;->init(Landroid/content/Context;Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;)V

    invoke-static {}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->getInstance()Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;

    move-result-object v0

    new-instance v1, Lcom/mi/mimsgsdk/service/MessageHandler;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/service/MessageHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->addPacketDataHandler(Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;)V

    invoke-static {}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->getInstance()Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;

    move-result-object v0

    new-instance v1, Lcom/mi/mimsgsdk/log/upload/LogUploadCommandListener;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/log/upload/LogUploadCommandListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->addPacketDataHandler(Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;)V

    return-void
.end method


# virtual methods
.method public destroy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->destroy()Z

    move-result v0

    return v0
.end method

.method public downloadMediaFile(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/mimsgsdk/controller/MessageController;->downloadMediaFile(ILjava/lang/String;)V

    return-void
.end method

.method public getConferenceMember(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/mimsgsdk/controller/MessageController;->getConferenceMember(J)Z

    move-result v0

    return v0
.end method

.method public getGuidfromMediaId(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/mimsgsdk/controller/MessageController;->getGuidfromMediaId(II)Z

    move-result v0

    return v0
.end method

.method public getProcessPid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/IMessageListener;)Z
    .locals 8
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceFacade;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/mi/mimsgsdk/controller/MessageController;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/IMessageListener;)Z

    move-result v0

    return v0
.end method

.method public isAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public pullOldGroupMessage(Ljava/lang/String;JI)Z
    .locals 2

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mi/mimsgsdk/controller/MessageController;->pullOldGroupMessage(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public pullOldUserMessage(JI)Z
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mi/mimsgsdk/controller/MessageController;->pullOldUserMessage(JI)Z

    move-result v0

    return v0
.end method

.method public scribe(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/controller/MessageController;->scribe(Ljava/lang/String;)V

    return-void
.end method

.method public sendAsyncWithResponse(Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;ILcom/mi/mimsgsdk/service/aidl/ISendCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;->toService()Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/mi/mimsgsdk/controller/MessageController;->sendAsyncWithResponse(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/mimsgsdk/service/aidl/ISendCallback;)V

    return-void
.end method

.method public sendAudioMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mi/mimsgsdk/controller/MessageController;->sendAudioMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    move-result v0

    return v0
.end method

.method public sendChannelCheckMessage(JILjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mi/mimsgsdk/controller/MessageController;->sendChannelCheckMessage(JILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendGroupMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/mimsgsdk/controller/MessageController;->sendGroupMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    move-result v0

    return v0
.end method

.method public sendRoomMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/mimsgsdk/controller/MessageController;->sendRoomMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    move-result v0

    return v0
.end method

.method public sendUserMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/mimsgsdk/controller/MessageController;->sendUserMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    move-result v0

    return v0
.end method

.method public sendVideoMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mi/mimsgsdk/controller/MessageController;->sendVideoMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z

    move-result v0

    return v0
.end method

.method public setMessageListener(Lcom/mi/mimsgsdk/service/aidl/IMessageListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/controller/MessageController;->setMessageListener(Lcom/mi/mimsgsdk/service/aidl/IMessageListener;)Z

    move-result v0

    return v0
.end method

.method public setSyncLimit(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/controller/MessageController;->setSyncLimit(I)Z

    move-result v0

    return v0
.end method

.method public syncGroupMessage(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/controller/MessageController;->syncGroupMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public uploadImage(Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/mimsgsdk/controller/MessageController;->uploadImage(Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;)Z

    move-result v0

    return v0
.end method

.method public uploadLogs(Ljava/lang/String;IJZLjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->setSubPath(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->setLimit(I)V

    invoke-virtual {v0, p3, p4}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->setMaxLength(J)V

    invoke-virtual {v0, p5}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->setStillUploadWithoutWifi(Z)V

    invoke-virtual {v0, p6}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->setFeedbackMessage(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/mi/mimsgsdk/controller/MessageController;->uploadLogs(ZLcom/mi/mimsgsdk/log/upload/UploadLogParameter;)V

    return-void
.end method

.method public uploadVideo(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/controller/MessageController;->uploadVideo(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    return-void
.end method
