.class public Lcom/mi/mimsgsdk/service/MessageHandler;
.super Ljava/lang/Object;
.source "MessageHandler.java"

# interfaces
.implements Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageHandler"


# instance fields
.field private volatile mHandlerThread:Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/mi/mimsgsdk/service/MessageHandler;->initHandlerThread()V

    return-void
.end method

.method static synthetic access$000(Lcom/mi/mimsgsdk/service/MessageHandler;Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/service/MessageHandler;->onUserMessagePush(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mi/mimsgsdk/service/MessageHandler;Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/service/MessageHandler;->onSyncUserMessageResponse(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mi/mimsgsdk/service/MessageHandler;Lcom/mi/mimsgsdk/proto/MiMsgProto$PushGroupMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/service/MessageHandler;->onGroupMessagePush(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushGroupMsg;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mi/mimsgsdk/service/MessageHandler;Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/service/MessageHandler;->onSyncGroupMessageResponse(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mi/mimsgsdk/service/MessageHandler;Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/service/MessageHandler;->onRoomMessagePush(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;)V

    return-void
.end method

.method private initHandlerThread()V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MessageHandler;->mHandlerThread:Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/mimsgsdk/service/MessageHandler$1;

    const-string v1, "MessageHandler"

    invoke-direct {v0, p0, v1}, Lcom/mi/mimsgsdk/service/MessageHandler$1;-><init>(Lcom/mi/mimsgsdk/service/MessageHandler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/service/MessageHandler;->mHandlerThread:Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;

    :cond_0
    return-void
.end method

.method private onGroupMessagePush(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushGroupMsg;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "MessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupMessagePush messagePush="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushGroupMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushGroupMsg;->getMsg()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->parseMessage(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->insertGroupRecord(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    :cond_0
    return-void
.end method

.method private onRoomMessagePush(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "MessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoomMessagePush messagePush="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->getMsg()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->parseMessage(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/controller/MessageController;->getInstance()Lcom/mi/mimsgsdk/controller/MessageController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/mi/mimsgsdk/controller/MessageController;->onReceiveGameMessage(ILcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    :cond_0
    return-void
.end method

.method private onSyncGroupMessageResponse(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "MessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncGroupMessageResponse messageResponse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getRetCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getMsgsCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getMsgs(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v2

    invoke-static {v2}, Lcom/mi/mimsgsdk/controller/MessageController;->parseMessage(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->insertGroupRecordDb(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onSyncUserMessageResponse(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "MessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncUserMessageResponse messageResponse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->getRetCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->getMsgsCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->getMsgs(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v2

    invoke-static {v2}, Lcom/mi/mimsgsdk/controller/MessageController;->parseMessage(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->insertUserRecordDb(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onUserMessagePush(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "MessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserMessagePush messagePush="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->getMsg()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/controller/MessageController;->parseMessage(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mi/mimsgsdk/utils/BusinessDBUtils;->insertUserRecord(Lcom/mi/mimsgsdk/service/aidl/MiMessage;)V

    :cond_0
    return-void
.end method

.method private runOnThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/mi/mimsgsdk/service/MessageHandler;->initHandlerThread()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MessageHandler;->mHandlerThread:Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public isAcceptPacket(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Z
    .locals 2
    .param p1    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "opensdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processPacketData(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Z
    .locals 1
    .param p1    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/mi/mimsgsdk/service/MessageHandler$2;

    invoke-direct {v0, p0, p1}, Lcom/mi/mimsgsdk/service/MessageHandler$2;-><init>(Lcom/mi/mimsgsdk/service/MessageHandler;Lcom/mi/milinkforgame/sdk/aidl/PacketData;)V

    invoke-direct {p0, v0}, Lcom/mi/mimsgsdk/service/MessageHandler;->runOnThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method
