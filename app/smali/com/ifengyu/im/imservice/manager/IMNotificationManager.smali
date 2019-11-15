.class public Lcom/ifengyu/im/imservice/manager/IMNotificationManager;
.super Lcom/ifengyu/im/imservice/manager/IMManager;
.source "IMNotificationManager.java"


# static fields
.field private static inst:Lcom/ifengyu/im/imservice/manager/IMNotificationManager;


# instance fields
.field private configurationSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

.field private logger:Lcom/ifengyu/im/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->inst:Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;-><init>()V

    const-class v0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->logger:Lcom/ifengyu/im/utils/Logger;

    return-void
.end method

.method private handleMsgRecv(Lcom/ifengyu/im/imservice/entity/UnreadEntity;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "notification#recv unhandled message"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getPeerId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getSessionType()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v3, "notification#msg no one handled, peerId:%d, sessionType:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->isForbidden()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "notification#GROUP_STATUS_SHIELD"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->configurationSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    const-string v2, "Global"

    sget-object v3, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->NOTIFICATION:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->getCfg(Ljava/lang/String;Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "notification#shouldGloballyShowNotification is false, return"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->configurationSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/entity/UnreadEntity;->getSessionKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->NOTIFICATION:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->getCfg(Ljava/lang/String;Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "notification#shouldShowNotificationBySession is false, return"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v1

    if-eq v1, v0, :cond_0

    goto :goto_0
.end method

.method private hashBKDR(Ljava/lang/String;)J
    .locals 8

    const-wide/16 v4, 0x83

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    mul-long/2addr v2, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-long v6, v1

    add-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static instance()Lcom/ifengyu/im/imservice/manager/IMNotificationManager;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->inst:Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    return-object v0
.end method


# virtual methods
.method public cancelAllNotifications()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "notification#cancelAllNotifications"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->ctx:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->ctx:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_0
.end method

.method public cancelSessionNotifications(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "notification#cancelSessionNotifications"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->ctx:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->getSessionNotificationId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public doOnStart()V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->cancelAllNotifications()V

    return-void
.end method

.method public getSessionNotificationId(Ljava/lang/String;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "notification#getSessionNotificationId sessionTag:%s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->hashBKDR(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "notification#hashedNotificationId:%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/GroupEvent;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupEvent;->getGroupEntity()Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/GroupEvent;->getEvent()Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->cancelSessionNotifications(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/UnreadEvent;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager$1;->$SwitchMap$com$ifengyu$im$imservice$event$UnreadEvent$Event:[I

    iget-object v1, p1, Lcom/ifengyu/im/imservice/event/UnreadEvent;->event:Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/event/UnreadEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/ifengyu/im/imservice/event/UnreadEvent;->entity:Lcom/ifengyu/im/imservice/entity/UnreadEntity;

    invoke-direct {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->handleMsgRecv(Lcom/ifengyu/im/imservice/entity/UnreadEntity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoginSuccess()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginId()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->ctx:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/ifengyu/im/DB/sp/ConfigurationSp;->instance(Landroid/content/Context;I)Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->configurationSp:Lcom/ifengyu/im/DB/sp/ConfigurationSp;

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->inst:Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->inst:Lcom/ifengyu/im/imservice/manager/IMNotificationManager;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMNotificationManager;->cancelAllNotifications()V

    return-void
.end method
