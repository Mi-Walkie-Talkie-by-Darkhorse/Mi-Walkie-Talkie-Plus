.class public Lcom/ifengyu/im/imservice/manager/IMContactManager;
.super Lcom/ifengyu/im/imservice/manager/IMManager;
.source "IMContactManager.java"


# static fields
.field private static inst:Lcom/ifengyu/im/imservice/manager/IMContactManager;


# instance fields
.field private dbInterface:Lcom/ifengyu/im/DB/DBInterface;

.field private departmentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ifengyu/im/DB/entity/DepartmentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

.field private inGroupUserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ifengyu/im/DB/entity/GroupMember;",
            ">;>;"
        }
    .end annotation
.end field

.field private logger:Lcom/ifengyu/im/utils/Logger;

.field private userDataReady:Z

.field private userMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->inst:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;-><init>()V

    const-class v0, Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userDataReady:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->departmentMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->inGroupUserMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/im/imservice/manager/IMContactManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->departmentMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ifengyu/im/imservice/manager/IMContactManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->inGroupUserMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/im/imservice/manager/IMContactManager;)Lcom/ifengyu/im/utils/Logger;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    return-object v0
.end method

.method public static instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->inst:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    return-object v0
.end method

.method private reqGetAllUsers(I)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "contact#reqGetAllUsers"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserReq$Builder;->setLatestUpdateTime(I)Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserReq;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x208

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;II)V

    return-void
.end method


# virtual methods
.method public doOnStart()V
    .locals 0

    return-void
.end method

.method public findContact(I)Lcom/ifengyu/im/DB/entity/UserEntity;
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findDepartment(I)Lcom/ifengyu/im/DB/entity/DepartmentEntity;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->departmentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;

    return-object v0
.end method

.method public findUserInGroup(II)Lcom/ifengyu/im/DB/entity/GroupMember;
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->inGroupUserMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->inGroupUserMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-lez p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupMember;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContactSortedList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/ifengyu/im/imservice/manager/IMContactManager$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/im/imservice/manager/IMContactManager$4;-><init>(Lcom/ifengyu/im/imservice/manager/IMContactManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getDepartmentMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ifengyu/im/DB/entity/DepartmentEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->departmentMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDepartmentSortedList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/DepartmentEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->departmentMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/ifengyu/im/imservice/manager/IMContactManager$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/im/imservice/manager/IMContactManager$3;-><init>(Lcom/ifengyu/im/imservice/manager/IMContactManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getDepartmentTabSortedList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/ifengyu/im/imservice/manager/IMContactManager$5;

    invoke-direct {v1, p0}, Lcom/ifengyu/im/imservice/manager/IMContactManager$5;-><init>(Lcom/ifengyu/im/imservice/manager/IMContactManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getUserMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    return-object v0
.end method

.method public isUserDataReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userDataReady:Z

    return v0
.end method

.method public onLocalLoginOk()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "contact#loadAllUserInfo"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/DBInterface;->loadAllUsers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "contact#loadAllUserInfo dbsuccess"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/im/utils/pinyin/PinYin;->getPinYin(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;)V

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->USER_INFO_OK:Lcom/ifengyu/im/imservice/event/UserInfoEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/UserInfoEvent;)V

    return-void
.end method

.method public onLocalNetOk()V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/DBInterface;->getUserInfoLastTime()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "contact#loadAllUserInfo req-updateTime:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onNormalLoginOk()V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->onLocalLoginOk()V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->onLocalNetOk()V

    return-void
.end method

.method public onRepAllUsers(Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "contact#onRepAllUsers"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->getLatestUpdateTime()I

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->getUserListCount()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v3, "contact#user cnt:%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "[fatal error] userId not equels loginId ,cause by onRepAllUsers"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMAllUserRsp;->getUserListList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getUserEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/DBInterface;->batchInsertOrUpdateUser(Ljava/util/List;)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->USER_INFO_UPDATE:Lcom/ifengyu/im/imservice/event/UserInfoEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/UserInfoEvent;)V

    goto :goto_0
.end method

.method public onRepDepartment(Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentRsp;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "contact#onRepDepartment"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentRsp;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentRsp;->getLatestUpdateTime()I

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentRsp;->getDeptListCount()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v3, "contact#department cnt:%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "[fatal error] userId not equels loginId ,cause by onRepDepartment"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentRsp;->getDeptListList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getDepartEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartInfo;)Lcom/ifengyu/im/DB/entity/DepartmentEntity;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->departmentMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->getDepartId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->USER_INFO_UPDATE:Lcom/ifengyu/im/imservice/event/UserInfoEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/UserInfoEvent;)V

    goto :goto_0
.end method

.method public onRepDetailUsers(Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoRsp;)V
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoRsp;->getUserId()I

    move-result v4

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoRsp;->getUserInfoListList()Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getUserEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;)Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v7

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contact#onRepDetailUsers:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/ifengyu/im/DB/entity/UserEntity;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Lcom/ifengyu/im/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v1

    iget-object v8, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {v1, v7}, Lcom/ifengyu/im/DB/entity/UserEntity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserInfo;->getUserId()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->setLoginInfo(Lcom/ifengyu/im/DB/entity/UserEntity;)V

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0, v5}, Lcom/ifengyu/im/DB/DBInterface;->batchInsertOrUpdateUser(Ljava/util/List;)V

    if-eqz v2, :cond_3

    sget-object v0, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->USER_INFO_UPDATE:Lcom/ifengyu/im/imservice/event/UserInfoEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/UserInfoEvent;)V

    :cond_3
    return-void
.end method

.method public onRepGroupMembers(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoRsp;)V
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoRsp;->getUserId()I

    move-result v4

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoRsp;->getGroupUserinfoListList()Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getUserEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v7

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contact#onRepDetailUsers:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/ifengyu/im/DB/entity/UserEntity;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Lcom/ifengyu/im/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v8

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {v1, v7}, Lcom/ifengyu/im/DB/entity/UserEntity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getInGroupUserEntity(Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;)Lcom/ifengyu/im/DB/entity/GroupMember;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ifengyu/im/DB/entity/GroupMember;->getGroupId()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->inGroupUserMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->inGroupUserMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/im/DB/entity/GroupMember;

    invoke-virtual {v1, v7}, Lcom/ifengyu/im/DB/entity/GroupMember;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->getUserId()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->setLoginInfo(Lcom/ifengyu/im/DB/entity/UserEntity;)V

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->inGroupUserMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0, v5}, Lcom/ifengyu/im/DB/DBInterface;->batchInsertOrUpdateUser(Ljava/util/List;)V

    if-eqz v2, :cond_6

    sget-object v0, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->USER_INFO_UPDATE:Lcom/ifengyu/im/imservice/event/UserInfoEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/UserInfoEvent;)V

    :cond_6
    return-void
.end method

.method public onUserNicknameChangeInGroupNotify(Lcom/ifengyu/im/protobuf/IMGroup$IMChangeNickNameInGroupNotify;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMChangeNickNameInGroupNotify;->getGroupId()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->inGroupUserMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMChangeNickNameInGroupNotify;->getChangenameUid()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->inGroupUserMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupMember;

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMChangeNickNameInGroupNotify;->getNicknameIngroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupMember;->setGroupNick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reqGetDepartment(I)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "contact#reqGetDepartment"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentReq$Builder;->setLatestUpdateTime(I)Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMBuddy$IMDepartmentReq;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x210

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;II)V

    return-void
.end method

.method public reqGetDetaillUsers(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "contact#contact#reqGetDetaillUsers"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "contact#contact#reqGetDetaillUsers return,cause by null or empty"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;->addAllUserIdList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x204

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;II)V

    goto :goto_0
.end method

.method public reqGroupMembers(I)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->reqGroupMembers(Ljava/util/List;)V

    return-void
.end method

.method public reqGroupMembers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "contact#reqGroupMembers"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "contact#contact#reqGroupMembers return,cause by null or empty"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;->addAllGroupIdList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupUserInfoReq;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x420

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;II)V

    goto :goto_0
.end method

.method public reqUpdateMyNicknameInGroup(ILjava/lang/String;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "contact#updateMyNicknameInGroup"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupReq$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupReq$Builder;->setGroupId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupReq$Builder;->setNicknameIngroup(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMGroup$IMUpdateNickNameInGroupReq;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x422

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;

    invoke-direct {v4, p0, p1, p3}, Lcom/ifengyu/im/imservice/manager/IMContactManager$6;-><init>(Lcom/ifengyu/im/imservice/manager/IMContactManager;ILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public reqUserInfo(ILcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 5

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;->addAllUserIdList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x204

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;

    invoke-direct {v4, p0, p2}, Lcom/ifengyu/im/imservice/manager/IMContactManager$1;-><init>(Lcom/ifengyu/im/imservice/manager/IMContactManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public reqUserInfo(Ljava/util/List;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/ifengyu/im/imservice/callback/Packetlistener;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;->addAllUserIdList(Ljava/lang/Iterable;)Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMBuddy$IMUsersInfoReq;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x204

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMContactManager$2;

    invoke-direct {v4, p0, p2}, Lcom/ifengyu/im/imservice/manager/IMContactManager$2;-><init>(Lcom/ifengyu/im/imservice/manager/IMContactManager;Lcom/ifengyu/im/imservice/callback/Packetlistener;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userDataReady:Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public triggerEvent(Lcom/ifengyu/im/imservice/event/UserInfoEvent;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMContactManager$7;->$SwitchMap$com$ifengyu$im$imservice$event$UserInfoEvent:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/UserInfoEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->g(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager;->userDataReady:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
