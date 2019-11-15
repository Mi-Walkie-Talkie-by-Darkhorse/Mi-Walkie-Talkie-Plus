.class public Lcom/ifengyu/im/imservice/services/IMSessionManager;
.super Lcom/ifengyu/im/imservice/manager/IMManager;
.source "IMSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/services/IMSessionManager$Holder;
    }
.end annotation


# instance fields
.field private groupManager:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

.field private logger:Lcom/ifengyu/im/utils/Logger;

.field private mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

.field private mIMLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

.field private sessionListReady:Z

.field private sessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/im/imservice/model/SessionEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;-><init>()V

    const-class v0, Lcom/ifengyu/im/imservice/services/IMSessionManager;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->logger:Lcom/ifengyu/im/utils/Logger;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->mIMLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->groupManager:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionListReady:Z

    return-void
.end method

.method public static instance()Lcom/ifengyu/im/imservice/services/IMSessionManager;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/services/IMSessionManager$Holder;->INSTANCE:Lcom/ifengyu/im/imservice/services/IMSessionManager;

    return-object v0
.end method

.method static final synthetic lambda$sort$0$IMSessionManager(Lcom/ifengyu/im/imservice/entity/RecentInfo;Lcom/ifengyu/im/imservice/entity/RecentInfo;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTalk()Z

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTalk()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTop()Z

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->isTop()Z

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getUpdateTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getUpdateTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/entity/RecentInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/imservice/services/IMSessionManager$$Lambda$0;->$instance:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public doOnStart()V
    .locals 0

    return-void
.end method

.method public findSession(Ljava/lang/String;)Lcom/ifengyu/im/imservice/model/SessionEntity;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/SessionEntity;

    goto :goto_0
.end method

.method public getRecentListInfo()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/entity/RecentInfo;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->getRecentSessionList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->getUserMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->instance()Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->getUnreadMsgMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->getGroupMap()Ljava/util/Map;

    move-result-object v6

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->ctx:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->instance(Landroid/content/Context;I)Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->getSessionTopList()Ljava/util/HashSet;

    move-result-object v7

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->ctx:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->instance(Landroid/content/Context;I)Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->getSessionTalk()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/SessionEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getSessionType()I

    move-result v2

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getSessionKey()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/im/imservice/entity/UnreadEntity;

    const/4 v12, 0x3

    if-ne v2, v12, :cond_5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/im/DB/entity/GroupEntity;

    new-instance v10, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    invoke-direct {v10, v0, v2, v1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;-><init>(Lcom/ifengyu/im/imservice/model/SessionEntity;Lcom/ifengyu/im/DB/entity/GroupEntity;Lcom/ifengyu/im/imservice/entity/UnreadEntity;)V

    if-eqz v7, :cond_1

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v10, v13}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->setTop(Z)V

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v10, v13}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->setTalk(Z)V

    :cond_2
    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getTalkId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    if-eqz v0, :cond_3

    invoke-virtual {v10}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getLatestMsgData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v10, v0}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->setLatestMsgData(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_1

    :cond_5
    if-ne v2, v13, :cond_0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/im/DB/entity/UserEntity;

    new-instance v10, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    invoke-direct {v10, v0, v2, v1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;-><init>(Lcom/ifengyu/im/imservice/model/SessionEntity;Lcom/ifengyu/im/DB/entity/UserEntity;Lcom/ifengyu/im/imservice/entity/UnreadEntity;)V

    if-eqz v7, :cond_6

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10, v13}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->setTop(Z)V

    :cond_6
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-static {v3}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sort(Ljava/util/List;)V

    return-object v3
.end method

.method public getRecentSessionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/SessionEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isSessionListReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionListReady:Z

    return v0
.end method

.method public onLocalLoginOk()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "session#loadFromDb"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/DBInterface;->loadAllSession()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/SessionEntity;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ifengyu/im/imservice/event/SessionEvent;->RECENT_SESSION_LIST_SUCCESS:Lcom/ifengyu/im/imservice/event/SessionEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/SessionEvent;)V

    return-void
.end method

.method public onLocalNetOk()V
    .locals 0

    return-void
.end method

.method public onNormalLoginOk()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "recent#onLogin Successful"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->onLocalLoginOk()V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->onLocalNetOk()V

    return-void
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->mIMLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->instance()Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->readUnreadSession(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v1, p1}, Lcom/ifengyu/im/DB/DBInterface;->deleteSession(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->ctx:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->instance(Landroid/content/Context;I)Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->setSessionTop(Ljava/lang/String;Z)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/SessionEvent;->RECENT_SESSION_LIST_UPDATE:Lcom/ifengyu/im/imservice/event/SessionEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/SessionEvent;)V

    :cond_0
    return-void
.end method

.method public reqRemoveSession(Lcom/ifengyu/im/imservice/entity/RecentInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "session#reqRemoveSession"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/RecentInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->removeSession(Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionListReady:Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setSessionListReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionListReady:Z

    return-void
.end method

.method public triggerEvent(Lcom/ifengyu/im/imservice/event/SessionEvent;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/im/imservice/services/IMSessionManager$1;->$SwitchMap$com$ifengyu$im$imservice$event$SessionEvent:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/SessionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionListReady:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateSession(Lcom/ifengyu/im/DB/entity/GroupEntity;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "recent#updateSession GroupEntity:%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/ifengyu/im/imservice/model/SessionEntity;

    invoke-direct {v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;-><init>()V

    invoke-virtual {v1, v4}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setLatestMsgType(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getUpdated()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setTime(J)V

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getCreatorId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setTalkId(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setLatestMsgId(J)V

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setSessionId(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setSessionType(I)V

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->buildSessionKey()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->findSession(Ljava/lang/String;)Lcom/ifengyu/im/imservice/model/SessionEntity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/DBInterface;->batchInsertOrUpdateSession(Ljava/util/List;)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/SessionEvent;->RECENT_SESSION_LIST_UPDATE:Lcom/ifengyu/im/imservice/event/SessionEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/SessionEvent;)V

    return-void
.end method

.method public updateSession(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->mIMLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->isSend(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getPeerId(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->buildSessionKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->findSession(Ljava/lang/String;)Lcom/ifengyu/im/imservice/model/SessionEntity;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "session#updateSession#not found msgSessionEntity"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/ifengyu/im/imservice/model/SessionEntity;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/model/SessionEntity;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMessageDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setContent(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setTime(J)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setTalkId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setLatestMsgId(J)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setLatestMsgType(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getSessionType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setSessionType(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMessageDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setLatestMsgData(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/SessionEntity;->buildSessionKey()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getSessionType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->groupManager:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-virtual {v2, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->findGroup(I)Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->groupManager:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-virtual {v2, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqGroupDetailInfo(I)V

    :cond_1
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->mDBInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v2, v1}, Lcom/ifengyu/im/DB/DBInterface;->batchInsertOrUpdateSession(Ljava/util/List;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->sessionMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/SessionEntity;->getSessionKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ifengyu/im/imservice/event/SessionEvent;->RECENT_SESSION_LIST_UPDATE:Lcom/ifengyu/im/imservice/event/SessionEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/SessionEvent;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/IMSessionManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "session#updateSession#msgSessionEntity already in Map"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setTime(J)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMessageDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setContent(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setTalkId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setLatestMsgId(J)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setLatestMsgType(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMessageDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/SessionEntity;->setLatestMsgData(Ljava/lang/String;)V

    goto :goto_1
.end method
