.class public Lcom/ifengyu/im/imservice/service/IMService;
.super Landroid/app/Service;
.source "IMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/service/IMService$IMServiceBinder;
    }
.end annotation


# instance fields
.field private binder:Lcom/ifengyu/im/imservice/service/IMService$IMServiceBinder;

.field private configSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

.field private contactMgr:Lcom/ifengyu/im/imservice/manager/IMContactManager;

.field private dbInterface:Lcom/ifengyu/im/DB/DBInterface;

.field private groupMgr:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

.field private heartBeatManager:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

.field private logger:Lcom/ifengyu/im/utils/Logger;

.field private loginMgr:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

.field private loginSp:Lcom/ifengyu/im/DB/sp/LoginSp;

.field private mSessionManager:Lcom/ifengyu/im/imservice/services/IMSessionManager;

.field private messageSevr:Lcom/ifengyu/im/imservice/services/MessageService;

.field private nearbyService:Lcom/ifengyu/im/imservice/services/NearbyService;

.field private notificationMgr:Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

.field private reconnectMgr:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

.field private sessionMgr:Lcom/ifengyu/im/imservice/services/IMSessionManager;

.field private socketMgr:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

.field private unReadMsgMgr:Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-class v0, Lcom/ifengyu/im/imservice/service/IMService;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->logger:Lcom/ifengyu/im/utils/Logger;

    new-instance v0, Lcom/ifengyu/im/imservice/service/IMService$IMServiceBinder;

    invoke-direct {v0, p0}, Lcom/ifengyu/im/imservice/service/IMService$IMServiceBinder;-><init>(Lcom/ifengyu/im/imservice/service/IMService;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->binder:Lcom/ifengyu/im/imservice/service/IMService$IMServiceBinder;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->socketMgr:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->loginMgr:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->contactMgr:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->instance()Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->groupMgr:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->instance()Lcom/ifengyu/im/imservice/services/MessageService;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->messageSevr:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-static {}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->instance()Lcom/ifengyu/im/imservice/services/IMSessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->sessionMgr:Lcom/ifengyu/im/imservice/services/IMSessionManager;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->instance()Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->reconnectMgr:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->instance()Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->unReadMsgMgr:Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->instance()Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->notificationMgr:Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->instance()Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->heartBeatManager:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-static {}, Lcom/ifengyu/im/imservice/services/NearbyService;->instance()Lcom/ifengyu/im/imservice/services/NearbyService;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->nearbyService:Lcom/ifengyu/im/imservice/services/NearbyService;

    invoke-static {}, Lcom/ifengyu/im/DB/sp/LoginSp;->instance()Lcom/ifengyu/im/DB/sp/LoginSp;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->loginSp:Lcom/ifengyu/im/DB/sp/LoginSp;

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    return-void
.end method

.method private handleLoginout()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "imservice#handleLoginout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->socketMgr:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->reset()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->loginMgr:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->reset()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->contactMgr:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->reset()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->messageSevr:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->reset()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->groupMgr:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->reset()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->sessionMgr:Lcom/ifengyu/im/imservice/services/IMSessionManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->reset()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->unReadMsgMgr:Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->reset()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->notificationMgr:Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->reset()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->reconnectMgr:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->reset()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->heartBeatManager:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->reset()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->nearbyService:Lcom/ifengyu/im/imservice/services/NearbyService;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/NearbyService;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->configSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/event/c;->b()V

    return-void
.end method

.method private onLocalLoginOk()V
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/service/IMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->loginMgr:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->instance(Landroid/content/Context;I)Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/im/imservice/service/IMService;->configSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/service/IMService;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v2, v0, v1}, Lcom/ifengyu/im/DB/DBInterface;->initDbHelp(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->contactMgr:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->onLocalLoginOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->groupMgr:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onLocalLoginOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->sessionMgr:Lcom/ifengyu/im/imservice/services/IMSessionManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->onLocalLoginOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->reconnectMgr:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->onLocalLoginOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->notificationMgr:Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->onLoginSuccess()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->messageSevr:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->onLoginSuccess()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->nearbyService:Lcom/ifengyu/im/imservice/services/NearbyService;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/NearbyService;->onLoginSuccess()V

    return-void
.end method

.method private onLocalNetOk()V
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/service/IMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->loginMgr:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->instance(Landroid/content/Context;I)Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/im/imservice/service/IMService;->configSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/service/IMService;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v2, v0, v1}, Lcom/ifengyu/im/DB/DBInterface;->initDbHelp(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->contactMgr:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->onLocalNetOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->groupMgr:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onLocalNetOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->sessionMgr:Lcom/ifengyu/im/imservice/services/IMSessionManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->onLocalNetOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->unReadMsgMgr:Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->onLocalNetOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->reconnectMgr:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->onLocalNetOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->heartBeatManager:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->onloginNetSuccess()V

    return-void
.end method

.method private onNormalLoginOk()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "imservice#onLogin Successful"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/service/IMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->loginMgr:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->instance(Landroid/content/Context;I)Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/im/imservice/service/IMService;->configSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/service/IMService;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v2, v0, v1}, Lcom/ifengyu/im/DB/DBInterface;->initDbHelp(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->contactMgr:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->onNormalLoginOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->sessionMgr:Lcom/ifengyu/im/imservice/services/IMSessionManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->onNormalLoginOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->groupMgr:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onNormalLoginOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->unReadMsgMgr:Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->onNormalLoginOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->reconnectMgr:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->onNormalLoginOk()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->messageSevr:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/MessageService;->onLoginSuccess()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->notificationMgr:Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->onLoginSuccess()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->heartBeatManager:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->onloginNetSuccess()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->nearbyService:Lcom/ifengyu/im/imservice/services/NearbyService;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/NearbyService;->onLoginSuccess()V

    return-void
.end method


# virtual methods
.method public getConfigSp()Lcom/ifengyu/im/DB/sp/ConfigurationSp;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->configSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    return-object v0
.end method

.method public getContactManager()Lcom/ifengyu/im/imservice/manager/IMContactManager;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->contactMgr:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    return-object v0
.end method

.method public getDbInterface()Lcom/ifengyu/im/DB/DBInterface;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    return-object v0
.end method

.method public getGroupManager()Lcom/ifengyu/im/imservice/manager/IMGroupManager;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->groupMgr:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    return-object v0
.end method

.method public getLoginManager()Lcom/ifengyu/im/imservice/manager/IMLoginManager;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->loginMgr:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    return-object v0
.end method

.method public getLoginSp()Lcom/ifengyu/im/DB/sp/LoginSp;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->loginSp:Lcom/ifengyu/im/DB/sp/LoginSp;

    return-object v0
.end method

.method public getNotificationManager()Lcom/ifengyu/im/imservice/manager/IMNotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->notificationMgr:Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    return-object v0
.end method

.method public getReconnectManager()Lcom/ifengyu/im/imservice/manager/IMReconnectManager;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->reconnectMgr:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    return-object v0
.end method

.method public getSessionManager()Lcom/ifengyu/im/imservice/services/IMSessionManager;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->sessionMgr:Lcom/ifengyu/im/imservice/services/IMSessionManager;

    return-object v0
.end method

.method public getUnReadMsgManager()Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->unReadMsgMgr:Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "IMService onBind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->binder:Lcom/ifengyu/im/imservice/service/IMService$IMServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "IMService onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/im/imservice/service/IMService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "IMService onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/service/IMService;->handleLoginout()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/DBInterface;->close()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->instance()Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->cancelAllNotifications()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onEvent(Lcom/ifengyu/im/imservice/event/LoginEvent;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/im/imservice/service/IMService$1;->$SwitchMap$com$ifengyu$im$imservice$event$LoginEvent:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/LoginEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/service/IMService;->onNormalLoginOk()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/service/IMService;->onLocalLoginOk()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/service/IMService;->onLocalNetOk()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/service/IMService;->handleLoginout()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onEvent(Lcom/ifengyu/im/imservice/event/PriorityEvent;)V
    .locals 6

    sget-object v0, Lcom/ifengyu/im/imservice/service/IMService$1;->$SwitchMap$com$ifengyu$im$imservice$event$PriorityEvent$Event:[I

    iget-object v1, p1, Lcom/ifengyu/im/imservice/event/PriorityEvent;->event:Lcom/ifengyu/im/imservice/event/PriorityEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/PriorityEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/ifengyu/im/imservice/event/PriorityEvent;->object:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "messageactivity#not this session msg -> id:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->unReadMsgMgr:Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->add(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "IMService onStartCommand"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/service/IMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->loginSp:Lcom/ifengyu/im/DB/sp/LoginSp;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/sp/LoginSp;->init(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->socketMgr:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->onStartIMManager(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->loginMgr:Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->onStartIMManager(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->contactMgr:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->onStartIMManager(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->messageSevr:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/services/MessageService;->onStartIMManager(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->groupMgr:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMGroupManager;->onStartIMManager(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->sessionMgr:Lcom/ifengyu/im/imservice/services/IMSessionManager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->onStartIMManager(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->unReadMsgMgr:Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMUnreadMsgManager;->onStartIMManager(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->notificationMgr:Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->onStartIMManager(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->reconnectMgr:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->onStartIMManager(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->heartBeatManager:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->onStartIMManager(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/service/IMService;->nearbyService:Lcom/ifengyu/im/imservice/services/NearbyService;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/services/NearbyService;->onStartIMManager(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "imservice#onTaskRemoved"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/service/IMService;->stopSelf()V

    return-void
.end method
