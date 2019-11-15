.class public Lcom/ifengyu/im/imservice/manager/IMLoginManager;
.super Lcom/ifengyu/im/imservice/manager/IMManager;
.source "IMLoginManager.java"


# static fields
.field private static inst:Lcom/ifengyu/im/imservice/manager/IMLoginManager;


# instance fields
.field private b2Token:Ljava/lang/String;

.field private everLogined:Z

.field private identityChanged:Z

.field imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

.field private isKickout:Z

.field private isLocalLogin:Z

.field private isPcOnline:Z

.field private logger:Lcom/ifengyu/im/utils/Logger;

.field private loginId:I

.field private loginInfo:Lcom/ifengyu/im/DB/entity/UserEntity;

.field private loginPwd:Ljava/lang/String;

.field private loginStatus:Lcom/ifengyu/im/imservice/event/LoginEvent;

.field private publicId:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->inst:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;-><init>()V

    const-class v0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    iput-boolean v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->identityChanged:Z

    iput-boolean v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isKickout:Z

    iput-boolean v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isPcOnline:Z

    iput-boolean v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->everLogined:Z

    iput-boolean v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isLocalLogin:Z

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->NONE:Lcom/ifengyu/im/imservice/event/LoginEvent;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginStatus:Lcom/ifengyu/im/imservice/event/LoginEvent;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#creating IMLoginManager"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/im/imservice/manager/IMLoginManager;)Lcom/ifengyu/im/utils/Logger;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    return-object v0
.end method

.method public static instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->inst:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    return-object v0
.end method

.method private reqDeviceToken()V
    .locals 0

    return-void
.end method

.method private reqLoginOut()V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMLogoutReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMLogin$IMLogoutReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMLogoutReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMLogin$IMLogoutReq;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v3, 0x105

    :try_start_0
    iget-object v4, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v4, v0, v2, v3}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/ifengyu/im/DB/sp/LoginSp;->instance()Lcom/ifengyu/im/DB/sp/LoginSp;

    move-result-object v0

    iget v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginId:I

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/ifengyu/im/DB/sp/LoginSp;->setLoginInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#send logout finish message"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_OUT:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#reqLoginOut#sendRequest error,cause by"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/ifengyu/im/DB/sp/LoginSp;->instance()Lcom/ifengyu/im/DB/sp/LoginSp;

    move-result-object v0

    iget v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginId:I

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/ifengyu/im/DB/sp/LoginSp;->setLoginInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#send logout finish message"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_OUT:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v0

    invoke-static {}, Lcom/ifengyu/im/DB/sp/LoginSp;->instance()Lcom/ifengyu/im/DB/sp/LoginSp;

    move-result-object v0

    iget v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginId:I

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/ifengyu/im/DB/sp/LoginSp;->setLoginInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#send logout finish message"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_OUT:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    throw v6
.end method


# virtual methods
.method public doOnStart()V
    .locals 0

    return-void
.end method

.method public getB2Token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->b2Token:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginId:I

    return v0
.end method

.method public getLoginInfo()Lcom/ifengyu/im/DB/entity/UserEntity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginInfo:Lcom/ifengyu/im/DB/entity/UserEntity;

    return-object v0
.end method

.method public getLoginStatus()Lcom/ifengyu/im/imservice/event/LoginEvent;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginStatus:Lcom/ifengyu/im/imservice/event/LoginEvent;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public isEverLogined()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->everLogined:Z

    return v0
.end method

.method public isKickout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isKickout:Z

    return v0
.end method

.method public isPcOnline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isPcOnline:Z

    return v0
.end method

.method public logOut()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#logOut"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#stop reconnecting"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->everLogined:Z

    iput-boolean v3, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isLocalLogin:Z

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->reqLoginOut()V

    return-void
.end method

.method public login(Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;)V
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_0

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_AUTH_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->identityChanged:Z

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginPwd:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->publicKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->publicId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->getB2Token()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->b2Token:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;->getLoginId()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/im/DB/DBInterface;->initDbHelp(Landroid/content/Context;I)V

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/DBInterface;->getByLoginId(I)Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->reqMsgServerAddrs()V

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginInfo:Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginId:I

    iput-boolean v3, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isLocalLogin:Z

    iput-boolean v3, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->everLogined:Z

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOCAL_LOGIN_SUCCESS:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    goto :goto_1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#login -> userName:%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginPwd:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->identityChanged:Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->reqMsgServerAddrs()V

    return-void
.end method

.method public onKickout(Lcom/ifengyu/im/protobuf/IMLogin$IMKickUser;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#onKickout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMKickUser;->getUserId()I

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMKickUser;->getKickReason()Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isKickout:Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->onMsgServerDisconn()V

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->KICK_OUT:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    return-void
.end method

.method public onLoginOk()V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#onLoginOk"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->everLogined:Z

    iput-boolean v6, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isKickout:Z

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isLocalLogin:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOCAL_LOGIN_MSG_SERVICE:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    :goto_0
    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->identityChanged:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/im/DB/sp/LoginSp;->instance()Lcom/ifengyu/im/DB/sp/LoginSp;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginPwd:Ljava/lang/String;

    iget v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginId:I

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->publicId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->publicKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->b2Token:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/ifengyu/im/DB/sp/LoginSp;->setLoginInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->identityChanged:Z

    :cond_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isLocalLogin:Z

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_OK:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    goto :goto_0
.end method

.method public onLoginStatusNotify(Lcom/ifengyu/im/protobuf/IMBuddy$IMPCLoginStatusNotify;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMPCLoginStatusNotify;->getUserId()I

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#onLoginStatusNotify userId \u2260 loginId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRepLoginOut(Lcom/ifengyu/im/protobuf/IMLogin$IMLogoutRsp;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMLogoutRsp;->getResultCode()I

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#send logout finish message"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRepMsgServerLogin(Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#onRepMsgServerLogin"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#decode LoginResponse failed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_AUTH_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getResultCode()Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/manager/IMLoginManager$3;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$ResultType:[I

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "login#login msg server inner failed, result:%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_INNER_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getPublicid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->publicId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getPublickey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->publicKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getB2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->b2Token:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginRes;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginId:I

    invoke-static {}, Lcom/ifengyu/im/account/UserCache;->instance()Lcom/ifengyu/im/account/UserCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/account/UserCache;->getUserInfo()Lcom/ifengyu/im/account/UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;->getUserEntity(Lcom/ifengyu/im/account/UserInfo;)Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginInfo:Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->onLoginOk()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "login#login msg server failed, result:%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_AUTH_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public relogin()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginPwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#login#relogin"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->reqMsgServerAddrs()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#login#userName or loginPwd is null!!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->everLogined:Z

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_AUTH_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    goto :goto_0
.end method

.method public reqKickPCClient()V
    .locals 5

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMKickPCClientReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMLogin$IMKickPCClientReq$Builder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginId:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMKickPCClientReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMLogin$IMKickPCClientReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMKickPCClientReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMLogin$IMKickPCClientReq;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x10a

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v4, Lcom/ifengyu/im/imservice/manager/IMLoginManager$2;

    invoke-direct {v4, p0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager$2;-><init>(Lcom/ifengyu/im/imservice/manager/IMLoginManager;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public reqLoginMsgServer()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#reqLoginMsgServer"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGINING:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginPwd:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/im/account/UserCache;->instance()Lcom/ifengyu/im/account/UserCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/account/UserCache;->getUserInfo()Lcom/ifengyu/im/account/UserInfo;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/ifengyu/im/account/UserInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/library/util/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v4, "key = %s,time = %d,sign = %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/ifengyu/im/account/UserInfo;->key:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-virtual {v3, v4, v5}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;->setFyappid(I)Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;

    move-result-object v3

    const v4, 0x5f5e10d

    invoke-virtual {v3, v4}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;->setAppid(I)Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;->setApikey(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;

    move-result-object v2

    iget-object v0, v0, Lcom/ifengyu/im/account/UserInfo;->userId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;->setUserId(I)Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;->setTime(I)Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_ANDROID:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;->setClientType(Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;)Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ifengyu/library/widget/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;->setClientVersion(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMLogin$IMLoginReq;

    move-result-object v0

    const/16 v1, 0x103

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->imSocketManager:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    new-instance v3, Lcom/ifengyu/im/imservice/manager/IMLoginManager$1;

    invoke-direct {v3, p0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager$1;-><init>(Lcom/ifengyu/im/imservice/manager/IMLoginManager;)V

    invoke-virtual {v2, v0, v8, v1, v3}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginPwd:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginId:I

    iput-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginInfo:Lcom/ifengyu/im/DB/entity/UserEntity;

    iput-boolean v1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->identityChanged:Z

    iput-boolean v1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isKickout:Z

    iput-boolean v1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isPcOnline:Z

    iput-boolean v1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->everLogined:Z

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->NONE:Lcom/ifengyu/im/imservice/event/LoginEvent;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginStatus:Lcom/ifengyu/im/imservice/event/LoginEvent;

    iput-boolean v1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isLocalLogin:Z

    return-void
.end method

.method public setB2Token(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->b2Token:Ljava/lang/String;

    return-void
.end method

.method public setEverLogined(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->everLogined:Z

    return-void
.end method

.method public setKickout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isKickout:Z

    return-void
.end method

.method public setLoginId(I)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#setLoginId -> loginId:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginId:I

    return-void
.end method

.method public setLoginInfo(Lcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginInfo:Lcom/ifengyu/im/DB/entity/UserEntity;

    return-void
.end method

.method public setPcOnline(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isPcOnline:Z

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->publicKey:Ljava/lang/String;

    return-void
.end method

.method public triggerEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->loginStatus:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->g(Ljava/lang/Object;)V

    return-void
.end method
