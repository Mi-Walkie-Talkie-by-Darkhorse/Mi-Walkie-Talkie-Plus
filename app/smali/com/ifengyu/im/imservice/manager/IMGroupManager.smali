.class public Lcom/ifengyu/im/imservice/manager/IMGroupManager;
.super Lcom/ifengyu/im/imservice/manager/IMManager;
.source "IMGroupManager.java"


# static fields
.field private static inst:Lcom/ifengyu/im/imservice/manager/IMGroupManager;


# instance fields
.field private dbInterface:Lcom/ifengyu/im/DB/DBInterface;

.field private groupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ifengyu/im/DB/entity/GroupEntity;",
            ">;"
        }
    .end annotation
.end field

.field private imContactManager:Lcom/ifengyu/im/imservice/manager/IMContactManager;

.field private imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

.field private imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

.field private isGroupReady:Z

.field private logger:Lcom/ifengyu/im/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->inst:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;-><init>()V

    const-class v0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imContactManager:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->isGroupReady:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Lcom/ifengyu/im/utils/Logger;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Lcom/ifengyu/im/DB/DBInterface;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)Lcom/ifengyu/im/imservice/manager/IMContactManager;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imContactManager:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    return-object v0
.end method

.method public static instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->inst:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    return-object v0
.end method

.method private loadSessionGroupInfo()V
    .locals 0

    return-void
.end method

.method private reqChangeGroupMember(ILcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#reqChangeGroupMember, changeGroupMemberType = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReq$Builder;->setChangeType(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReq$Builder;->addAllMemberIdList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReq$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberReq;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x409

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMGroupManager$3;

    invoke-direct {v4, p0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$3;-><init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method private reqGetNormalGroupList()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#reqGetNormalGroupList"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListReq;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x403

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;II)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#send packet to server"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doOnStart()V
    .locals 0

    return-void
.end method

.method public findGroup(I)Lcom/ifengyu/im/DB/entity/GroupEntity;
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#findGroup groupId:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllGroupList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/GroupEntity;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getGroupMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ifengyu/im/DB/entity/GroupEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    return-object v0
.end method

.method public getGroupMembers(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#getGroupMembers groupId:%s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->findGroup(I)Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#no such group id:%s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getlistGroupMemberIds()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->findContact(I)Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v4, "group#no such contact id:%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getNormalGroupList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/GroupEntity;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getGroupType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getNormalGroupSortedList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/GroupEntity;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->getNormalGroupList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/manager/IMGroupManager$5;

    invoke-direct {v1, p0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$5;-><init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getSearchAllGroupList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/GroupEntity;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-static {p1, v0}, Lcom/ifengyu/im/utils/IMUIHelper;->handleGroupSearch(Ljava/lang/String;Lcom/ifengyu/im/DB/entity/GroupEntity;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public isGroupReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->isGroupReady:Z

    return v0
.end method

.method public onApplyJoinGroupNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorNotify;)V
    .locals 4

    new-instance v0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorNotify;->getCreatorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->setCreatorId(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorNotify;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->setGroupId(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorNotify;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorNotify;->getReqUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->setReqUserId(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorNotify;->getReqUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->setReqUserName(Ljava/lang/String;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;

    sget-object v3, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->APPLY_JOIN_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-direct {v2, v0, v3}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;-><init>(Lcom/ifengyu/im/imservice/entity/ApplyNotify;Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/ifengyu/im/imservice/event/SessionEvent;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$14;->$SwitchMap$com$ifengyu$im$imservice$event$SessionEvent:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/SessionEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->loadSessionGroupInfo()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onGroupInfoChangeNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoChangeNotify;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoChangeNotify;->getGroupId()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoChangeNotify;->getReason()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateGroup(Lcom/ifengyu/im/DB/entity/GroupEntity;)J

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->GROUP_INFO_UPDATED:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/event/GroupEvent;->setGroupEntity(Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoChangeNotify;->getNewCreator()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setCreatorId(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoChangeNotify;->getNewCreator()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setCreatorId(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoChangeNotify;->getNewGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setMainName(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onInviteUserJoinGroupNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqNotify;)V
    .locals 4

    new-instance v0, Lcom/ifengyu/im/imservice/entity/InviteNotify;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/entity/InviteNotify;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqNotify;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setGroupId(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqNotify;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqNotify;->getInviteUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setInvitedUserId(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqNotify;->getReqUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setReqUserId(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReqNotify;->getReqUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setReqUserName(Ljava/lang/String;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;

    sget-object v3, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->INVITED_JOIN_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-direct {v2, v0, v3}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;-><init>(Lcom/ifengyu/im/imservice/entity/InviteNotify;Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onLocalLoginOk()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#loadFromDb"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->inst:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->inst:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/DBInterface;->loadAllGroup()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->GROUP_INFO_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v0, v1}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    return-void
.end method

.method public onLocalNetOk()V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqQueryGroupList()V

    return-void
.end method

.method public onNormalLoginOk()V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onLocalLoginOk()V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onLocalNetOk()V

    return-void
.end method

.method public onReceiveAgreeOrRejectGroupInviteNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspNotify;)V
    .locals 3

    new-instance v0, Lcom/ifengyu/im/imservice/entity/InviteNotify;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/entity/InviteNotify;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspNotify;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setGroupId(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspNotify;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspNotify;->getInviteUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setInvitedUserId(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspNotify;->getInviteUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setInvitedUserName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspNotify;->getReqUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->setReqUserId(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRspNotify;->getResultCode()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->AGREE_INVITE_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-direct {v1, v0, v2}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;-><init>(Lcom/ifengyu/im/imservice/entity/InviteNotify;Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->REJECT_INVITE_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-direct {v1, v0, v2}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;-><init>(Lcom/ifengyu/im/imservice/entity/InviteNotify;Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;)V

    goto :goto_0
.end method

.method public onReceiveAgreeOrRejectUserJoinGroupNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspNotify;)V
    .locals 3

    new-instance v0, Lcom/ifengyu/im/imservice/entity/ApplyNotify;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspNotify;->getCreatorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->setCreatorId(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspNotify;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->setGroupId(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspNotify;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspNotify;->getReqUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->setReqUserId(I)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRspNotify;->getResultCode()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->AGREE_APPLY_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-direct {v1, v0, v2}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;-><init>(Lcom/ifengyu/im/imservice/entity/ApplyNotify;Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;)V

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->getGroupId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqGroupDetailInfo(IZLcom/ifengyu/im/imservice/callback/Packetlistener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->REJECT_APPLY_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-direct {v1, v0, v2}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;-><init>(Lcom/ifengyu/im/imservice/entity/ApplyNotify;Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;)V

    goto :goto_0
.end method

.method public onRepGroupDetailInfo(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRsp;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#onRepGroupDetailInfo"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRsp;->getGroupInfoListCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRsp;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v4, "group#onRepGroupDetailInfo cnt:%d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v0, :cond_0

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v3, "group#onRepGroupDetailInfo size empty or userid[%d]\u2260 loginId[%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-virtual {v0, v3, v4}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->GROUP_INFO_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v0, v1}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListRsp;->getGroupInfoListList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getGroupEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;)Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v0

    iget-object v4, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v5, "group#groupEntity %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/DBInterface;->batchInsertOrUpdateGroup(Ljava/util/List;)V

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->GROUP_INFO_UPDATED:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v0, v1}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imContactManager:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->reqGroupMembers(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onRepNormalGroupList(Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListRsp;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#onRepNormalGroupList"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListRsp;->getGroupVersionListCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "group#onRepNormalGroupList cnt:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMNormalGroupListRsp;->getGroupVersionListList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo;

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo;->getGroupId()I

    move-result v3

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo;->getVersion()I

    move-result v4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getVersion()I

    move-result v0

    if-eq v0, v4, :cond_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo;->newBuilder()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;->setVersion(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqGetGroupDetailInfo(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public onReqChangeGroupMember(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;)V
    .locals 5

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v0, v1}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->getGroupId()I

    move-result v1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->getChgUserIdListList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->getChangeType()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    move-result-object v3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->getCurUserIdListList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setlistGroupMemberIds(Ljava/util/List;)V

    iget-object v4, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateGroup(Lcom/ifengyu/im/DB/entity/GroupEntity;)J

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v4, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_SUCCESS:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v1, v4}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent;->setChangeList(Ljava/util/List;)V

    invoke-static {v3}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getGroupChangeType(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent;->setChangeType(I)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/event/GroupEvent;->setGroupEntity(Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    goto :goto_0
.end method

.method public onReqCreateTempGroup(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateRsp;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#onReqCreateTempGroup"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateRsp;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#createGroup failed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CREATE_GROUP_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v0, v1}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getGroupEntity(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateRsp;)Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setlistGroupMemberIds(Ljava/util/List;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->instance()Lcom/ifengyu/im/imservice/services/IMSessionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->updateSession(Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateGroup(Lcom/ifengyu/im/DB/entity/GroupEntity;)J

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CREATE_GROUP_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v1, v2, v0}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    goto :goto_0
.end method

.method public onRespQueryGroupList(Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInRsp;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#onRespQueryGroupList"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInRsp;->getGroupInfoListCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInRsp;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v4, "group#onRespQueryGroupList cnt:%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v0, :cond_0

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v3, "group#onRespQueryGroupList size empty or userid[%d]\u2260 loginId[%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-virtual {v0, v3, v4}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInRsp;->getGroupInfoListList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getGroupEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupInfo;)Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v4, "group#groupEntity %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/ifengyu/im/DB/entity/GroupEntity;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getUserCnt()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v3, "group#group member count is 0, nothing to do, return"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v0

    iget-object v4, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {v0, v3}, Lcom/ifengyu/im/DB/entity/GroupEntity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/DBInterface;->batchInsertOrUpdateGroup(Ljava/util/List;)V

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->GROUP_INFO_UPDATED:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v0, v1}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->getGroupMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imContactManager:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->reqGroupMembers(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public receiveGroupChangeMemberNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;)V
    .locals 6

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->getGroupId()I

    move-result v1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->getChangeType()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getGroupChangeType(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;)I

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->getChgUserIdListList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->getCurUserIdListList()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {v0, v4}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setlistGroupMemberIds(Ljava/util/List;)V

    iget-object v4, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v4, v0}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateGroup(Lcom/ifengyu/im/DB/entity/GroupEntity;)J

    iget-object v4, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/ifengyu/im/imservice/event/GroupEvent;

    sget-object v4, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_SUCCESS:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-direct {v1, v4}, Lcom/ifengyu/im/imservice/event/GroupEvent;-><init>(Lcom/ifengyu/im/imservice/event/GroupEvent$Event;)V

    invoke-virtual {v1, v3}, Lcom/ifengyu/im/imservice/event/GroupEvent;->setChangeList(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent;->setChangeType(I)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/event/GroupEvent;->setGroupEntity(Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v0, v0, Lcom/ifengyu/im/DB/entity/GroupEntity;->peerId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imContactManager:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->reqGroupMembers(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public reqAddGroupMember(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->GROUP_MODIFY_TYPE_ADD:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    invoke-direct {p0, p1, v0, p2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqChangeGroupMember(ILcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;Ljava/util/Set;)V

    return-void
.end method

.method public reqApplyJoinGroup(IILcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginInfo()Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0x414

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReq$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReq$Builder;->setCreatorId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReq$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReq$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReq$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReq$Builder;->setReqUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReq$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReq$Builder;->setReqUserName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToCreatorReq;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMGroupManager$6;

    invoke-direct {v4, p0, p3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$6;-><init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public reqCreateTempGroup(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#reqCreateTempGroup, tempGroupName = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginInfo()Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;->setUserName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;->GROUP_TYPE_TMP:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;->setGroupType(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;->setGroupName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;

    move-result-object v1

    if-nez v2, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;->setGroupAvatar(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;->addAllMemberIdList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupCreateReq;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x407

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMGroupManager$2;

    invoke-direct {v4, p0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$2;-><init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/ifengyu/im/DB/entity/UserEntity;->getAvatar()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public reqGetGroupDetailInfo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#reqGetGroupDetailInfo"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#reqGetGroupDetailInfo# please check your params,cause by empty/null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq$Builder;->addAllGroupVersionList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x405

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;II)V

    goto :goto_0
.end method

.method public reqGroupDetailInfo(I)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo;->newBuilder()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;->setVersion(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqGetGroupDetailInfo(Ljava/util/List;)V

    return-void
.end method

.method public reqGroupDetailInfo(IZLcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 5

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo;->newBuilder()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;->setVersion(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo$Builder;->build()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupVersionInfo;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq$Builder;->addAllGroupVersionList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupInfoListReq;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x405

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;

    invoke-direct {v4, p0, p3, p2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$1;-><init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;Z)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public reqInviteUserJoinGroup(ILjava/util/List;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/ifengyu/im/imservice/callback/Packetlistener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x41a

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v3}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginInfo()Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v3

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->findGroup(I)Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v4

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->setReqUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v5

    if-nez v3, :cond_0

    const-string v0, "\u672a\u77e5"

    :goto_0
    invoke-virtual {v5, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->setReqUserName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v3

    if-nez v4, :cond_1

    const-string v0, "\u672a\u77e5"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->setGroupName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->addAllInviteeUidList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupReq;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMGroupManager$8;

    invoke-direct {v4, p0, p3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$8;-><init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public reqLeaveGroup(ILcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x42d

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;->setLeaveType(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMGroupManager$10;

    invoke-direct {v4, p0, p2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$10;-><init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public reqQueryGroupList()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#reqQueryGroupList"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x401

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInReq$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMQueryGroupImInReq;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;II)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "group#send packet to server"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reqRemoveGroupMember(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->GROUP_MODIFY_TYPE_DEL:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    invoke-direct {p0, p1, v0, p2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reqChangeGroupMember(ILcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;Ljava/util/Set;)V

    return-void
.end method

.method public reqShieldGroup(II)V
    .locals 10

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/im/DB/entity/GroupEntity;

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "GroupEntity do not exist!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v3

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldReq$Builder;->setShieldStatus(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldReq$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldReq$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupShieldReq;

    move-result-object v6

    const/4 v7, 0x4

    const/16 v8, 0x40b

    iget-object v9, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;

    move-object v1, p0

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$4;-><init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;IILcom/ifengyu/im/DB/entity/GroupEntity;I)V

    invoke-virtual {v9, v6, v7, v8, v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    goto :goto_0
.end method

.method public reqTrandferCreator(IILcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorReq$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorReq$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorReq$Builder;->setNewCreator(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupTransferCreatorReq;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x42f

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;

    invoke-direct {v4, p0, p3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$13;-><init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public reqUpdateGroupName(ILjava/lang/String;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameReq$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameReq$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameReq$Builder;->setNewGroupName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUpdateGroupNameReq;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x431

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMGroupManager$12;

    invoke-direct {v4, p0, p3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$12;-><init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public reqkickOutUser(ILjava/util/List;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/ifengyu/im/imservice/callback/Packetlistener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x42d

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;->setLeaveType(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;->addAllMemberIdList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupLeaveGroupReq;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;

    invoke-direct {v4, p0, p3}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$11;-><init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->isGroupReady:Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->groupMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->inst:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public rspAcceptOrRejectGroupInvite(Lcom/ifengyu/im/imservice/entity/InviteNotify;ZLcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    const/4 v1, 0x4

    const/16 v2, 0x41d

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginInfo()Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->getGroupId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;->setGroupName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->getInvitedUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;->setInviteUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;

    move-result-object v3

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;->setInviteUserName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/InviteNotify;->getReqUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;->setReqUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;

    move-result-object v3

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;->setResultCode(I)Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMInviteUserJoinGroupRsp;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;

    invoke-direct {v4, p0, p3, p2, p1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$9;-><init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;ZLcom/ifengyu/im/imservice/entity/InviteNotify;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public rspApplyJoinGroup(Lcom/ifengyu/im/imservice/entity/ApplyNotify;ZLcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 5

    const/4 v1, 0x4

    const/16 v2, 0x417

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imLoginManager:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginInfo()Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->getCreatorId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;->setCreatorId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;

    move-result-object v3

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;->setCreatorName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->getGroupId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;->setGroupName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/ApplyNotify;->getReqUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;->setReqUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;

    move-result-object v3

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;->setResultCode(I)Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMApplyJoinGroupToApplicantRsp;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMGroupManager$7;

    invoke-direct {v4, p0, p3, p1}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$7;-><init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;Lcom/ifengyu/im/imservice/entity/ApplyNotify;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized triggerEvent(Lcom/ifengyu/im/imservice/event/GroupEvent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$14;->$SwitchMap$com$ifengyu$im$imservice$event$GroupEvent$Event:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupEvent;->getEvent()Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->g(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->isGroupReady:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->isGroupReady:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized triggerEvent(Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->g(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
