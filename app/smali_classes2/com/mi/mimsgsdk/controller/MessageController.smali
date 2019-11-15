.class public Lcom/mi/mimsgsdk/controller/MessageController;
.super Ljava/lang/Object;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/controller/MessageController$MessageControllerHolder;
    }
.end annotation


# static fields
.field public static final BODY_TYPE_AUDIO:I = 0x2

.field public static final BODY_TYPE_CUSTOM:I = 0x0

.field public static final BODY_TYPE_TEXT:I = 0x1

.field public static final BODY_TYPE_VIDEO:I = 0x3

.field public static final CHANNEL_GROUP:I = 0x3

.field public static final CHANNEL_ROOM:I = 0x2

.field public static final CHANNEL_USER:I = 0x1

.field private static final KS_ERROR:I = -0x191

.field private static final MAX_SYNC:I = 0x14

.field private static final MILINK_ERROR:I = -0x190

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mAppId:Ljava/lang/String;

.field private volatile mContext:Landroid/content/Context;

.field private volatile mGUid:Ljava/lang/String;

.field private volatile mHasLogin:Z

.field private volatile mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

.field private volatile mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

.field private volatile mSyncLimit:I

.field private volatile uploadingLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mHasLogin:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mSyncLimit:I

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mi/mimsgsdk/controller/MessageController;ILjava/lang/String;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mi/mimsgsdk/controller/MessageController;->onUploadVideoResponse(ILjava/lang/String;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mi/mimsgsdk/controller/MessageController;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mi/mimsgsdk/controller/MessageController;->onUploadLogsResponse(ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/mi/mimsgsdk/controller/MessageController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->uploadingLog:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/mi/mimsgsdk/controller/MessageController;ZLcom/mi/mimsgsdk/log/upload/UploadLogParameter;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/controller/MessageController;->uploadLogs0(ZLcom/mi/mimsgsdk/log/upload/UploadLogParameter;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mi/mimsgsdk/controller/MessageController;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mi/mimsgsdk/controller/MessageController;->onDownloadMediaFileResponse(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mi/mimsgsdk/controller/MessageController;ILcom/mi/mimsgsdk/service/aidl/MiMessage;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mi/mimsgsdk/controller/MessageController;->processSendSignalResponse(ILcom/mi/mimsgsdk/service/aidl/MiMessage;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mi/mimsgsdk/controller/MessageController;IILcom/mi/mimsgsdk/service/aidl/RetValue;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mi/mimsgsdk/controller/MessageController;->onReceiveConferenceMembers(IILcom/mi/mimsgsdk/service/aidl/RetValue;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mi/mimsgsdk/controller/MessageController;)Lcom/mi/mimsgsdk/service/aidl/IMessageListener;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mi/mimsgsdk/controller/MessageController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mHasLogin:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mi/mimsgsdk/controller/MessageController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mHasLogin:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mi/mimsgsdk/controller/MessageController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mi/mimsgsdk/controller/MessageController;->syncUserMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/service/aidl/MiMessage;JI)Lcom/mi/mimsgsdk/service/aidl/MiMessage;
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mi/mimsgsdk/controller/MessageController;->constructSendMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;JI)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mi/mimsgsdk/controller/MessageController;ILcom/mi/mimsgsdk/service/aidl/MiMessage;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mi/mimsgsdk/controller/MessageController;->processSendResponse(ILcom/mi/mimsgsdk/service/aidl/MiMessage;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mi/mimsgsdk/controller/MessageController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mi/mimsgsdk/controller/MessageController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mGUid:Ljava/lang/String;

    return-object v0
.end method

.method private checkMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mGUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mGUid:Ljava/lang/String;

    iget-object v1, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructSendMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;JI)Lcom/mi/mimsgsdk/service/aidl/MiMessage;
    .locals 4
    .param p1    # Lcom/mi/mimsgsdk/service/aidl/MiMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/MiMessage;-><init>()V

    iget-wide v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    iput-wide v2, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    iput-wide p2, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgSeq:J

    iput p4, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->sendTime:I

    iget-object v1, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    iget-object v1, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    iget-object v1, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    iget v1, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    iput v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    return-object v0
.end method

.method public static getInstance()Lcom/mi/mimsgsdk/controller/MessageController;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController$MessageControllerHolder;->access$000()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v0

    return-object v0
.end method

.method private onDownloadMediaFileResponse(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "mMsgListener listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/RetValue;-><init>()V

    iput p2, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    iput-object p3, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    invoke-interface {v1, p1, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onDownloadMediaFileResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onReceiveConferenceMembers(IILcom/mi/mimsgsdk/service/aidl/RetValue;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/mi/mimsgsdk/service/aidl/RetValue;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;

    invoke-direct {v3}, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;-><init>()V

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;->getGuid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->gUid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;->getMediaMuid()I

    move-result v4

    iput v4, v3, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->mediaMuid:I

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$MediaUserId;->getMuid()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->mUid:J

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    invoke-interface {v0, p1, p2, p3, v2}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onReceiveConferenceMembers(IILcom/mi/mimsgsdk/service/aidl/RetValue;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "transform message via aidl method onReceiveConferenceMembers failed"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private onUploadLogsResponse(ZILjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload log result, code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    if-nez v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "mMsgListener listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/RetValue;-><init>()V

    iput p2, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    iput-object p3, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    invoke-interface {v1, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onUploadLogsResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onUploadVideoResponse(ILjava/lang/String;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "mMsgListener listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/RetValue;-><init>()V

    iput p1, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    iput-object p2, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    invoke-interface {v1, v0, p3}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onUploadVideoResponse(Lcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseMessage(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/service/aidl/MiMessage;
    .locals 4
    .param p0    # Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/MiMessage;-><init>()V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getMsgId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getMsgSeq()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgSeq:J

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getSentTime()I

    move-result v1

    iput v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->sendTime:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getFromGuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getTargetId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getBodyType()I

    move-result v1

    iput v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getBodyType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lcom/mi/mimsgsdk/message/DefaultBody;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/message/DefaultBody;-><init>()V

    const-string v2, "version too low, can not recognize msg"

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/message/DefaultBody;->setTips(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/message/DefaultBody;->setContent([B)V

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Lcom/mi/mimsgsdk/message/CustomBody;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/message/CustomBody;-><init>()V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/message/CustomBody;->setData([B)V

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "parseMessage failed, cause parse PB failed"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/mi/mimsgsdk/message/TextBody;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/message/TextBody;-><init>()V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/message/TextBody;->decodeBody([B)V

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "parseMessage failed, unexpected error"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :pswitch_2
    :try_start_2
    new-instance v1, Lcom/mi/mimsgsdk/message/AudioBody;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/message/AudioBody;-><init>()V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/message/AudioBody;->decodeBody([B)V

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/mi/mimsgsdk/video/VideoBody;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/video/VideoBody;-><init>()V

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/video/VideoBody;->decodeBody([B)V

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized processSendResponse(ILcom/mi/mimsgsdk/service/aidl/MiMessage;ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/RetValue;-><init>()V

    iput p3, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    iput-object p4, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    invoke-interface {v1, p1, v0, p2}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onDataSendResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processSendSignalResponse(ILcom/mi/mimsgsdk/service/aidl/MiMessage;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/RetValue;-><init>()V

    iput p3, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    iput-object p4, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    invoke-interface {v1, p1, v0, p2}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onDataSendResponse(ILcom/mi/mimsgsdk/service/aidl/RetValue;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private syncUserMessage()Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mGUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "syncUserMessage but some parameters is null, return"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest;->newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mGUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest$Builder;->setCurrGuid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mSyncLimit:I

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest$Builder;->setLimit(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest$Builder;

    move-result-object v1

    invoke-static {}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->getSingleMaxMsgSeq()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest$Builder;->setMaxRecvSeq(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest;

    move-result-object v1

    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncUserMessage request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v3, "opensdk.usermsg.sync"

    invoke-virtual {v2, v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgRequest;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    invoke-virtual {v2, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedCached(Z)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)V

    goto :goto_0
.end method

.method private uploadLogs0(ZLcom/mi/mimsgsdk/log/upload/UploadLogParameter;)Z
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v7, 0x2

    const/4 v1, 0x0

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "prepare upload log on thread"

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->getSubPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->getLimit()I

    move-result v2

    invoke-static {v0, v2}, Lcom/mi/mimsgsdk/log/LogsManager;->findLogDir(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/mi/mimsgsdk/exception/ExceptionWithCode; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "log dir is empty!!!"

    invoke-direct {p0, p1, v7, v0}, Lcom/mi/mimsgsdk/controller/MessageController;->onUploadLogsResponse(ZILjava/lang/String;)V

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v3, "find log dir fail"

    invoke-static {v2, v3, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/exception/ExceptionWithCode;->getCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/exception/ExceptionWithCode;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lcom/mi/mimsgsdk/controller/MessageController;->onUploadLogsResponse(ZILjava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_2

    sget-object v4, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "log file to be ziped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/mi/mimsgsdk/log/LogsManager;->getZipFile()Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/mi/mimsgsdk/log/LogsManager;->doZipDir(Ljava/util/List;Ljava/util/List;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x4

    const-string v2, "zip failed!!!"

    invoke-direct {p0, p1, v0, v2}, Lcom/mi/mimsgsdk/controller/MessageController;->onUploadLogsResponse(ZILjava/lang/String;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v3, "e"

    invoke-static {v2, v3, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x3

    const-string v2, "getZipFile occur exception"

    invoke-direct {p0, p1, v0, v2}, Lcom/mi/mimsgsdk/controller/MessageController;->onUploadLogsResponse(ZILjava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->getMaxLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->getMaxLength()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    const-string v2, "zip file size: %d > threshold: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->getMaxLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v2, v0}, Lcom/mi/mimsgsdk/controller/MessageController;->onUploadLogsResponse(ZILjava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;->isStillUploadWithoutWifi()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mi/mimsgsdk/utils/NetworkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v0, 0x9

    const-string v2, "no wifi connected"

    invoke-direct {p0, p1, v0, v2}, Lcom/mi/mimsgsdk/controller/MessageController;->onUploadLogsResponse(ZILjava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/mi/mimsgsdk/upload/Attachment;

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/mi/mimsgsdk/upload/Attachment;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/mi/mimsgsdk/upload/Attachment;->fileSize:J

    invoke-static {}, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->getInstance()Lcom/mi/mimsgsdk/upload/UploadFileLoader;

    move-result-object v7

    iget-object v8, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/mi/mimsgsdk/controller/MessageController$13;

    move-object v1, p0

    move v3, p1

    move-object v5, v2

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mi/mimsgsdk/controller/MessageController$13;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/upload/Attachment;ZLjava/lang/String;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;)V

    const/16 v1, 0x64

    invoke-virtual {v7, v8, v2, v0, v1}, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->startUploadFile(Landroid/content/Context;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/upload/UploadCallBack;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x6

    const-string v2, "uploadLogs unknown error"

    invoke-direct {p0, p1, v1, v2}, Lcom/mi/mimsgsdk/controller/MessageController;->onUploadLogsResponse(ZILjava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public destroy()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mGUid:Ljava/lang/String;

    iput-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mHasLogin:Z

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->logoff()V

    :cond_0
    iput-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    iput-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    const/4 v0, 0x1

    return v0
.end method

.method public downloadMediaFile(ILjava/lang/String;)V
    .locals 6

    const/4 v2, -0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "downloadMediaFile, url is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "url is null"

    invoke-direct {p0, p1, v2, v0}, Lcom/mi/mimsgsdk/controller/MessageController;->onDownloadMediaFileResponse(IILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/channel/common/audio/MessageType;->isVideo(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->newVideoFilePath()Ljava/lang/String;

    move-result-object v4

    :goto_1
    new-instance v2, Lcom/mi/mimsgsdk/controller/MessageController$14;

    invoke-direct {v2, p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController$14;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;I)V

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to download media file type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and temp local path = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/mimsgsdk/controller/MessageController$15;

    move-object v1, p0

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mi/mimsgsdk/controller/MessageController$15;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/channel/common/audio/MessageType;->isImage(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".jpeg"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->newFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/xiaomi/channel/common/audio/MessageType;->isAudio(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ".spx"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->newFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const-string v0, "messageType not match!"

    invoke-direct {p0, p1, v2, v0}, Lcom/mi/mimsgsdk/controller/MessageController;->onDownloadMediaFileResponse(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceMember(J)Z
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->newBuilder()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->setConferenceId(J)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConferenceMember request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v2, "opensdk.signal.conference_member"

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryConferenceMemberReq;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    invoke-virtual {v1, v4}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedCached(Z)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    const/16 v2, 0xbb8

    new-instance v3, Lcom/mi/mimsgsdk/controller/MessageController$17;

    invoke-direct {v3, p0}, Lcom/mi/mimsgsdk/controller/MessageController$17;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    return v4
.end method

.method public getGUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mGUid:Ljava/lang/String;

    return-object v0
.end method

.method public getGuidfromMediaId(II)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppId is empty when getGuidfromMediaId, channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mediaId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "getGuidfromMediaId"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->newBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;->addMediaMuid(I)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGuidfromMediaId request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v2, "opensdk.user.query_muid"

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedCached(Z)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    const/16 v2, 0xbb8

    new-instance v3, Lcom/mi/mimsgsdk/controller/MessageController$18;

    invoke-direct {v3, p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController$18;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    goto :goto_0
.end method

.method public getSyncLimit()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mSyncLimit:I

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/IMessageListener;)Z
    .locals 8
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const/4 v7, 0x1

    const/4 v1, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controller init start, gUid.len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pSkey.len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " b2Token.len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p5, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "init failed because some args is empty"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/RetValue;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retCode:I

    const-string v1, "init but some args is empty"

    iput-object v1, v0, Lcom/mi/mimsgsdk/service/aidl/RetValue;->retMsg:Ljava/lang/String;

    if-eqz p7, :cond_1

    invoke-interface {p7, v0}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onInitResult(Lcom/mi/mimsgsdk/service/aidl/RetValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    const/4 v7, 0x0

    :goto_4
    return v7

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mi/mimsgsdk/database/SingleMessageDao;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->setContext(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mGUid:Ljava/lang/String;

    iput-object p4, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    iput-object p7, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    new-instance v0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mi/mimsgsdk/controller/MessageController$1;

    invoke-direct {v2, p0}, Lcom/mi/mimsgsdk/controller/MessageController$1;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;)V

    invoke-direct {v0, v1, v2}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;-><init>(Landroid/content/Context;Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    new-instance v1, Lcom/mi/mimsgsdk/controller/MessageController$2;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/controller/MessageController$2;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;)V

    new-instance v2, Lcom/mi/mimsgsdk/controller/MessageController$3;

    invoke-direct {v2, p0}, Lcom/mi/mimsgsdk/controller/MessageController$3;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;)V

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->init(Lcom/mi/milinkforgame/sdk/interaction/IPacketCallback;Lcom/mi/milinkforgame/sdk/interaction/IEventCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4
.end method

.method public onReceiveCustomSignalMessage(ILcom/mi/mimsgsdk/service/aidl/RetValue;JJI)V
    .locals 9

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onReceiveSignalMessage(ILcom/mi/mimsgsdk/service/aidl/RetValue;JJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onReceiveGameMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    invoke-interface {v0, p1, p2}, Lcom/mi/mimsgsdk/service/aidl/IMessageListener;->onReceiveMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public pullOldGroupMessage(Ljava/lang/String;JI)Z
    .locals 6

    new-instance v5, Lcom/mi/mimsgsdk/controller/MessageController$20;

    invoke-direct {v5, p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController$20;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mi/mimsgsdk/controller/MessageController;->pullOldGroupMessage(Ljava/lang/String;JILcom/mi/milinkforgame/sdk/session/ResponseListener;)Z

    move-result v0

    return v0
.end method

.method public pullOldGroupMessage(Ljava/lang/String;JILcom/mi/milinkforgame/sdk/session/ResponseListener;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-ltz v1, :cond_0

    if-lez p4, :cond_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "pullOldGroupMessage but some parameters is null, return"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mGUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->setCurrGuid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->setTargetGgid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->setLimit(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->setStartMsgSeq(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;

    move-result-object v1

    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pullOldGroupMessage request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v3, "opensdk.groupmsg.pullold"

    invoke-virtual {v2, v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldGroupMsgRequest;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    invoke-virtual {v2, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedCached(Z)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    const/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, p5}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    goto :goto_0
.end method

.method public pullOldUserMessage(JI)Z
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/controller/MessageController$19;

    invoke-direct {v0, p0}, Lcom/mi/mimsgsdk/controller/MessageController$19;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mi/mimsgsdk/controller/MessageController;->pullOldUserMessage(JILcom/mi/milinkforgame/sdk/session/ResponseListener;)Z

    move-result v0

    return v0
.end method

.method public pullOldUserMessage(JILcom/mi/milinkforgame/sdk/session/ResponseListener;)Z
    .locals 5

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    if-lez p3, :cond_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "pullOldUserMessage but some parameters is null, return"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest;->newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mGUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest$Builder;->setCurrGuid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest$Builder;->setLimit(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest$Builder;->setStartMsgSeq(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest;

    move-result-object v1

    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pullOldUserMessage request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v3, "opensdk.usermsg.pullold"

    invoke-virtual {v2, v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PullOldUserMsgRequest;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    invoke-virtual {v2, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedCached(Z)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    const/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, p4}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    goto :goto_0
.end method

.method public scribe(Lcom/mi/milinkforgame/sdk/aidl/PacketData;I)I
    .locals 5
    .param p1    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, -0x3

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "milink client is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x1388

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    invoke-virtual {v2, p1, v0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendSync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;I)Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    packed-switch p2, :pswitch_data_0

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized scribe type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x4

    goto :goto_0

    :pswitch_0
    :try_start_0
    new-instance v2, Lcom/mi/mimsgsdk/stat/model/AgoraLog;

    invoke-direct {v2}, Lcom/mi/mimsgsdk/stat/model/AgoraLog;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->toPbRsp(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogRsp;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Scribe$AgoralogRsp;->getRet()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send AgoraLog fail, code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v3, "parse to PB failed"

    invoke-static {v2, v3, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v2, Lcom/mi/mimsgsdk/stat/model/CommonLog;

    invoke-direct {v2}, Lcom/mi/mimsgsdk/stat/model/CommonLog;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mi/mimsgsdk/stat/model/CommonLog;->toPbRsp(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/Scribe$CommonlogRsp;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/Scribe$CommonlogRsp;->getRet()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send CommonaLog fail, code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v3, "parse to PB failed"

    invoke-static {v2, v3, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scribe(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data to be scribed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "data to be scribed is empty"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->getInstance()Lcom/mi/mimsgsdk/stat/storage/StatDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->addNew(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1, v0}, Lcom/mi/mimsgsdk/stat/StatWorker;->parseJsonAndSend(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public sendAsyncWithResponse(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/mimsgsdk/service/aidl/ISendCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "sendAsyncWithResponse failed: mMiLinkClient = null,delay to call "

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mi/mimsgsdk/controller/MessageController$21;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mi/mimsgsdk/controller/MessageController$21;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/mimsgsdk/service/aidl/ISendCallback;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    new-instance v1, Lcom/mi/mimsgsdk/controller/MessageController$22;

    invoke-direct {v1, p0, p3}, Lcom/mi/mimsgsdk/controller/MessageController$22;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/service/aidl/ISendCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    goto :goto_0
.end method

.method public sendAudioMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 10

    const-string v0, ""

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    instance-of v0, v0, Lcom/mi/mimsgsdk/message/AudioBody;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    check-cast v0, Lcom/mi/mimsgsdk/message/AudioBody;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/mi/mimsgsdk/message/AudioBody;->getLength()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/message/AudioBody;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/message/AudioBody;->getContent()[B

    move-result-object v4

    long-to-float v0, v6

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v2, v8

    if-gez v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioLen ceil="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    long-to-float v2, v6

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/mi/mimsgsdk/upload/Attachment;

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/mi/mimsgsdk/upload/Attachment;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    long-to-int v0, v6

    iput v0, v2, Lcom/mi/mimsgsdk/upload/Attachment;->duration:I

    const/4 v0, 0x3

    iget-object v1, v2, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->getMimeType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mi/mimsgsdk/upload/Attachment;->mimeType:Ljava/lang/String;

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "sendAudioMessage start upload"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/mimsgsdk/controller/MessageController$7;

    move-object v1, p0

    move-object v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mi/mimsgsdk/controller/MessageController$7;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/service/aidl/MiMessage;[BI)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public sendChannelCheckMessage(JILjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest;->newBuilder()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;->setConferenceId(J)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;->setFromGuid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest;

    move-result-object v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendChannelCheckMessage request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v2, "opensdk.signal.query_mediaid"

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedCached(Z)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    new-instance v2, Lcom/mi/mimsgsdk/controller/MessageController$16;

    invoke-direct {v2, p0}, Lcom/mi/mimsgsdk/controller/MessageController$16;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;)V

    invoke-virtual {v0, v1, p3, v2}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    const/4 v0, 0x0

    return v0
.end method

.method public sendGroupMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController;->checkMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v2, :cond_2

    :cond_0
    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendGroupMsg msg not pass or milink is null, milink is null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest;->newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;->setFromGuid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;

    move-result-object v1

    iget-wide v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    invoke-virtual {v1, v2, v3}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;->setMsgId(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;->setToGgid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;

    move-result-object v1

    iget v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;->setBodyType(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    invoke-interface {v2}, Lcom/mi/mimsgsdk/message/MiMsgBody;->codeBody()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;->setBody(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest;

    move-result-object v1

    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendGroupMessage request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v3, "opensdk.groupmsg.send"

    invoke-virtual {v2, v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendGroupMsgRequest;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    invoke-virtual {v2, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedCached(Z)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    new-instance v3, Lcom/mi/mimsgsdk/controller/MessageController$5;

    invoke-direct {v3, p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController$5;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    invoke-virtual {v1, v2, p2, v3}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    goto :goto_1
.end method

.method public sendRequestAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V
    .locals 2
    .param p1    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mi/milinkforgame/sdk/session/ResponseListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "send async failed for mMiLinkClient is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    goto :goto_0
.end method

.method public sendRequestSync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;I)Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    .locals 2
    .param p1    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "send sync failed for mMiLinkClient is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    invoke-virtual {v0, p1, p2}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendSync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;I)Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v0

    goto :goto_0
.end method

.method public sendRoomMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController;->checkMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v2, :cond_2

    :cond_0
    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRoomMsg msg not pass or milink is null, milink is null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->setFromGuid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v1

    iget-wide v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    invoke-virtual {v1, v2, v3}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->setMsgId(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->setToGrid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v1

    iget v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->setBodyType(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    invoke-interface {v2}, Lcom/mi/mimsgsdk/message/MiMsgBody;->codeBody()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->setBody(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;

    move-result-object v1

    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRoomMessage request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v3, "opensdk.roommsg.send"

    invoke-virtual {v2, v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendRoomMsgRequest;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    invoke-virtual {v2, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedCached(Z)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    new-instance v3, Lcom/mi/mimsgsdk/controller/MessageController$6;

    invoke-direct {v3, p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController$6;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    invoke-virtual {v1, v2, p2, v3}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    goto :goto_1
.end method

.method public sendUserMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController;->checkMessage(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v2, :cond_2

    :cond_0
    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendUserMsg msg not pass or milink is null, milink is null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest;->newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->from:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;->setFromGuid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;

    move-result-object v1

    iget-wide v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->msgId:J

    invoke-virtual {v1, v2, v3}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;->setMsgId(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;

    move-result-object v1

    iget v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->bodyType:I

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;->setBodyType(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->to:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;->addToGuid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    invoke-interface {v2}, Lcom/mi/mimsgsdk/message/MiMsgBody;->codeBody()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;->setBody(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest;

    move-result-object v1

    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendUserMessage request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v3, "opensdk.usermsg.send"

    invoke-virtual {v2, v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SendUserMsgRequest;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    invoke-virtual {v2, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedCached(Z)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    new-instance v3, Lcom/mi/mimsgsdk/controller/MessageController$4;

    invoke-direct {v3, p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController$4;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    invoke-virtual {v1, v2, p2, v3}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    goto :goto_1
.end method

.method public sendVideoMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;I)Z
    .locals 7

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    instance-of v0, v0, Lcom/mi/mimsgsdk/video/VideoBody;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    check-cast v0, Lcom/mi/mimsgsdk/video/VideoBody;

    if-nez v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "sendVideoMessage but message.body is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "gameMessage is null or body is not instance of VB"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/VideoBody;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/VideoBody;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/VideoBody;->getLength()I

    move-result v3

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/VideoBody;->getSize()I

    move-result v4

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/VideoBody;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/VideoBody;->getContent()[B

    move-result-object v6

    const/16 v0, 0x1f4

    if-ge v3, v0, :cond_3

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoLen ceil="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " too short"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v2, Lcom/mi/mimsgsdk/upload/Attachment;

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/mi/mimsgsdk/upload/Attachment;-><init>(Landroid/content/Context;)V

    iput-object v5, v2, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    const/4 v0, 0x2

    iget-object v5, v2, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->getMimeType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mi/mimsgsdk/upload/Attachment;->mimeType:Ljava/lang/String;

    new-instance v5, Lcom/mi/mimsgsdk/upload/Attachment;

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/mi/mimsgsdk/upload/Attachment;-><init>(Landroid/content/Context;)V

    iput-object v1, v5, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    iput v3, v5, Lcom/mi/mimsgsdk/upload/Attachment;->duration:I

    mul-int/lit16 v0, v4, 0x400

    int-to-long v0, v0

    iput-wide v0, v5, Lcom/mi/mimsgsdk/upload/Attachment;->fileSize:J

    const/4 v0, 0x4

    iget-object v1, v5, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->getMimeType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/mi/mimsgsdk/upload/Attachment;->mimeType:Ljava/lang/String;

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "sendVideoMessage start upload"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/mimsgsdk/controller/MessageController$8;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/mi/mimsgsdk/controller/MessageController$8;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/upload/Attachment;ILcom/mi/mimsgsdk/service/aidl/MiMessage;Lcom/mi/mimsgsdk/upload/Attachment;[B)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setMessageListener(Lcom/mi/mimsgsdk/service/aidl/IMessageListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "setMessageListener"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMsgListener:Lcom/mi/mimsgsdk/service/aidl/IMessageListener;

    const/4 v0, 0x1

    return v0
.end method

.method public setSyncLimit(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSyncLimit limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mSyncLimit:I

    const/4 v0, 0x1

    return v0
.end method

.method public syncGroupMessage(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "syncGroupMsg but some parametes is null, return"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest;->newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mGUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest$Builder;->setCurrGuid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest$Builder;->setTargetGgid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mSyncLimit:I

    invoke-virtual {v1, v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest$Builder;->setLimit(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest$Builder;

    move-result-object v1

    invoke-static {p1}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->getGroupMaxMsgSeq(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest$Builder;->setMaxRecvSeq(J)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest;

    move-result-object v1

    sget-object v2, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncGroupMessage request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v3, "opensdk.groupmsg.sync"

    invoke-virtual {v2, v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgRequest;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    invoke-virtual {v2, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setNeedCached(Z)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mMiLinkClient:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)V

    goto :goto_0
.end method

.method public uploadImage(Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "uploadImage"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/mi/mimsgsdk/upload/Attachment;

    iget-object v1, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/upload/Attachment;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    const/4 v1, 0x2

    iget-object v2, v0, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->getMimeType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mi/mimsgsdk/upload/Attachment;->mimeType:Ljava/lang/String;

    new-instance v1, Lcom/mi/mimsgsdk/controller/MessageController$9;

    invoke-direct {v1, p0, v0, p2}, Lcom/mi/mimsgsdk/controller/MessageController$9;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/service/aidl/ICustomCallback;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "uploadImage Exception"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public uploadLogs(ZLcom/mi/mimsgsdk/log/upload/UploadLogParameter;)V
    .locals 3
    .param p2    # Lcom/mi/mimsgsdk/log/upload/UploadLogParameter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare upload log, param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->uploadingLog:Z

    if-eqz v0, :cond_0

    const-string v0, "another upload log task is processing, skip current request"

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1, v0}, Lcom/mi/mimsgsdk/controller/MessageController;->onUploadLogsResponse(ZILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->uploadingLog:Z

    new-instance v0, Lcom/mi/mimsgsdk/controller/MessageController$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/mi/mimsgsdk/controller/MessageController$12;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;ZLcom/mi/mimsgsdk/log/upload/UploadLogParameter;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    invoke-static {}, Lrx/e/e;->b()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/d;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mi/mimsgsdk/controller/MessageController$11;

    invoke-direct {v1, p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController$11;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;Z)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/e;)Lrx/f;

    goto :goto_0
.end method

.method public uploadVideo(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    .locals 8

    const/4 v7, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    instance-of v0, v0, Lcom/mi/mimsgsdk/video/VideoBody;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "uploadVideo but some args is wrong"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "your input has error"

    invoke-direct {p0, v7, v0, p1}, Lcom/mi/mimsgsdk/controller/MessageController;->onUploadVideoResponse(ILjava/lang/String;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/mi/mimsgsdk/service/aidl/MiMessage;->body:Lcom/mi/mimsgsdk/message/MiMsgBody;

    check-cast v0, Lcom/mi/mimsgsdk/video/VideoBody;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/VideoBody;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/VideoBody;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/VideoBody;->getLength()I

    move-result v5

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/VideoBody;->getSize()I

    move-result v6

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/VideoBody;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/VideoBody;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0}, Lcom/mi/mimsgsdk/video/VideoBody;->getContent()[B

    move-result-object v3

    const/16 v0, 0x1f4

    if-ge v5, v0, :cond_4

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoLen ceil="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, v5

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v1, "video length less than 500ms"

    invoke-direct {p0, v0, v1, p1}, Lcom/mi/mimsgsdk/controller/MessageController;->onUploadVideoResponse(ILjava/lang/String;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v0, p1}, Lcom/mi/mimsgsdk/controller/MessageController;->onUploadVideoResponse(ILjava/lang/String;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1

    :cond_3
    const-string v2, ""

    goto :goto_2

    :cond_4
    :try_start_1
    new-instance v4, Lcom/mi/mimsgsdk/upload/Attachment;

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/mi/mimsgsdk/upload/Attachment;-><init>(Landroid/content/Context;)V

    iput-object v2, v4, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    const/4 v0, 0x2

    iget-object v2, v4, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->getMimeType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/mi/mimsgsdk/upload/Attachment;->mimeType:Ljava/lang/String;

    new-instance v2, Lcom/mi/mimsgsdk/upload/Attachment;

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/mi/mimsgsdk/upload/Attachment;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    iput v5, v2, Lcom/mi/mimsgsdk/upload/Attachment;->duration:I

    mul-int/lit16 v0, v6, 0x400

    int-to-long v0, v0

    iput-wide v0, v2, Lcom/mi/mimsgsdk/upload/Attachment;->fileSize:J

    const/4 v0, 0x4

    iget-object v1, v2, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->getMimeType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mi/mimsgsdk/upload/Attachment;->mimeType:Ljava/lang/String;

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController;->TAG:Ljava/lang/String;

    const-string v1, "uploadVideo start upload"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/mimsgsdk/controller/MessageController$10;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mi/mimsgsdk/controller/MessageController$10;-><init>(Lcom/mi/mimsgsdk/controller/MessageController;Lcom/mi/mimsgsdk/upload/Attachment;[BLcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
