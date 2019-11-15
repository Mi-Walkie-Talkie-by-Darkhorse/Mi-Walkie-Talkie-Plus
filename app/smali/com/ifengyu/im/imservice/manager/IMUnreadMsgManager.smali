.class public Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;
.super Lcom/ifengyu/im/imservice/manager/IMManager;
.source "IMUnreadMsgManager.java"


# static fields
.field private static inst:Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;


# instance fields
.field private imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

.field private logger:Lcom/ifengyu/im/utils/Logger;

.field private loginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

.field private totalUnreadCount:I

.field private unreadListReady:Z

.field private unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/im/imservice/entity/UnreadEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->inst:Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;-><init>()V

    const-class v0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->loginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput v1, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->totalUnreadCount:I

    iput-boolean v1, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadListReady:Z

    return-void
.end method

.method private addIsForbidden(Lcom/ifengyu/im/imservice/entity/UnreadEntity;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getSessionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getPeerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->findGroup(I)Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->setForbidden(Z)V

    :cond_0
    return-void
.end method

.method public static instance()Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->inst:Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    return-object v0
.end method

.method private reqUnreadMsgContactList()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "unread#1reqUnreadMsgContactList"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMMessage$IMUnreadMsgCntReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMMessage$IMUnreadMsgCntReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMUnreadMsgCntReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMMessage$IMUnreadMsgCntReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMUnreadMsgCntReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMMessage$IMUnreadMsgCntReq;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x307

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;II)V

    return-void
.end method


# virtual methods
.method public ackReadMsg(Lcom/ifengyu/im/imservice/entity/UnreadEntity;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "chat#ackReadMsg -> msg:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->loginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getSessionType()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/im/protobuf/helper/Java2ProtoBuf;->getProtoSessionType(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck;->newBuilder()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getLaststMsgId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;->setMsgId(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getPeerId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;->setSessionId(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;->setSessionType(Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;->build()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x303

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;II)V

    return-void
.end method

.method public ackReadMsg(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "chat#ackReadMsg -> msg:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->loginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getSessionType()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/im/protobuf/helper/Java2ProtoBuf;->getProtoSessionType(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck;->newBuilder()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;->setMsgId(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;

    move-result-object v2

    invoke-virtual {p1, v6}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getPeerId(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;->setSessionId(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;->setSessionType(Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck$Builder;->build()Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadAck;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x303

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;II)V

    return-void
.end method

.method public add(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "unread#unreadMgr#add msg is null!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v3, "unread#unreadMgr#add unread msg:%s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->buildSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->isSend(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->instance()Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->cancelSessionNotifications(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getLaststMsgId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getUnReadCnt()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->setUnReadCnt(I)V

    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMessageDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->setLatestMsgData(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->setLaststMsgId(I)V

    invoke-direct {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->addIsForbidden(Lcom/ifengyu/im/imservice/entity/UnreadEntity;)V

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->isForbidden()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    new-instance v1, Lcom/ifengyu/im/imservice/event/UnreadEvent;

    invoke-direct {v1}, Lcom/ifengyu/im/imservice/event/UnreadEvent;-><init>()V

    sget-object v2, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->UNREAD_MSG_RECEIVED:Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    iput-object v2, v1, Lcom/ifengyu/im/imservice/event/UnreadEvent;->event:Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    iput-object v0, v1, Lcom/ifengyu/im/imservice/event/UnreadEvent;->entity:Lcom/ifengyu/im/imservice/entity/UnreadEntity;

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/UnreadEvent;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;-><init>()V

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->setUnReadCnt(I)V

    invoke-virtual {p1, v4}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getPeerId(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->setPeerId(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getSessionType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->setSessionType(I)V

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->buildSessionKey()Ljava/lang/String;

    move v1, v2

    goto :goto_1
.end method

.method public doOnStart()V
    .locals 0

    return-void
.end method

.method public findUnread(Ljava/lang/String;)Lcom/ifengyu/im/imservice/entity/UnreadEntity;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "unread#findUnread# buddyId:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "unread#findUnread# no unread info"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;

    goto :goto_0
.end method

.method public getTotalUnreadCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->isForbidden()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getUnReadCnt()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getUnreadMsgMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/im/imservice/entity/UnreadEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public isUnreadListReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadListReady:Z

    return v0
.end method

.method public onLocalNetOk()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public onNormalLoginOk()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public onNotifyRead(Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadNotify;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "chat#onNotifyRead"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadNotify;->getUserId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v3, "onNotifyRead# trigerId:%s,loginId:%s not Equal"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadNotify;->getMsgId()I

    move-result v1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadNotify;->getSessionId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMMsgDataReadNotify;->getSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getJavaSessionType(Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/ifengyu/im/protobuf/helper/EntityChangeEngine;->getSessionKey(II)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->ctx:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->instance()Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->getSessionNotificationId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0, v2}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->findUnread(Ljava/lang/String;)Lcom/ifengyu/im/imservice/entity/UnreadEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getLaststMsgId()I

    move-result v0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "chat#onNotifyRead# unreadSession onLoginOut"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->readUnreadSession(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRepUnreadMsgContactList(Lcom/ifengyu/im/protobuf/IMMessage$IMUnreadMsgCntRsp;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "unread#2onRepUnreadMsgContactList"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMUnreadMsgCntRsp;->getTotalCnt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->totalUnreadCount:I

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMUnreadMsgCntRsp;->getUnreadinfoListList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "unread#unreadMsgCnt:%d, unreadMsgInfoCnt:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget v5, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->totalUnreadCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getUnreadEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;)Lcom/ifengyu/im/imservice/entity/UnreadEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->addIsForbidden(Lcom/ifengyu/im/imservice/entity/UnreadEntity;)V

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ifengyu/im/imservice/event/UnreadEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->UNREAD_MSG_LIST_OK:Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    invoke-direct {v0, v1}, Lcom/ifengyu/im/imservice/event/UnreadEvent;-><init>(Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/UnreadEvent;)V

    return-void
.end method

.method public readUnreadSession(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "unread#readUnreadSession# sessionKey:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;

    new-instance v0, Lcom/ifengyu/im/imservice/event/UnreadEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->SESSION_READED_UNREAD_MSG:Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    invoke-direct {v0, v1}, Lcom/ifengyu/im/imservice/event/UnreadEvent;-><init>(Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/UnreadEvent;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadListReady:Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public setForbidden(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadMsgMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/entity/UnreadEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->setForbidden(Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized triggerEvent(Lcom/ifengyu/im/imservice/event/UnreadEvent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager$1;->$SwitchMap$com$ifengyu$im$imservice$event$UnreadEvent$Event:[I

    iget-object v1, p1, Lcom/ifengyu/im/imservice/event/UnreadEvent;->event:Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->unreadListReady:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
