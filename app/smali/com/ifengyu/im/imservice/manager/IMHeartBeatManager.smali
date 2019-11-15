.class public Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;
.super Lcom/ifengyu/im/imservice/manager/IMManager;
.source "IMHeartBeatManager.java"


# static fields
.field private static inst:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;


# instance fields
.field private final ACTION_SENDING_HEARTBEAT:Ljava/lang/String;

.field private final HEARTBEAT_INTERVAL:I

.field private imReceiver:Landroid/content/BroadcastReceiver;

.field private logger:Lcom/ifengyu/im/utils/Logger;

.field private pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->inst:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;-><init>()V

    const-class v0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const v0, 0x3a980

    iput v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->HEARTBEAT_INTERVAL:I

    const-string v0, "com.mogujie.tt.imservice.manager.imheartbeatmanager"

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->ACTION_SENDING_HEARTBEAT:Ljava/lang/String;

    new-instance v0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager$1;-><init>(Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->imReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;)Lcom/ifengyu/im/utils/Logger;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    return-object v0
.end method

.method private cancelHeartbeatTimer()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "heartbeat#cancelHeartbeatTimer"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->pendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "heartbeat#pi is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->ctx:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static instance()Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->inst:Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    return-object v0
.end method

.method private scheduleHeartbeat(I)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "heartbeat#scheduleHeartbeat every %d seconds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->pendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "heartbeat#fill in pendingintent"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mogujie.tt.imservice.manager.imheartbeatmanager"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->ctx:Landroid/content/Context;

    invoke-static {v2, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->pendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->pendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "heartbeat#scheduleHeartbeat#pi is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->ctx:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    int-to-long v4, p1

    iget-object v6, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public doOnStart()V
    .locals 0

    return-void
.end method

.method public onMsgServerDisconn()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "heartbeat#onChannelDisconn"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->cancelHeartbeatTimer()V

    return-void
.end method

.method public onloginNetSuccess()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "heartbeat#onLocalNetOk"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.mogujie.tt.imservice.manager.imheartbeatmanager"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "heartbeat#register actions"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->imReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x3a980

    invoke-direct {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->scheduleHeartbeat(I)V

    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "heartbeat#reset begin"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->imReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->cancelHeartbeatTimer()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "heartbeat#reset stop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "heartbeat#reset error:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendHeartBeatPacket()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "heartbeat#reqSendHeartbeat"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->ctx:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "teamtalk_heartBeat_wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_0
    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMHeartBeat;->newBuilder()Lcom/ifengyu/im/protobuf/IMOther$IMHeartBeat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMOther$IMHeartBeat$Builder;->build()Lcom/ifengyu/im/protobuf/IMOther$IMHeartBeat;

    move-result-object v0

    const/4 v2, 0x7

    const/16 v3, 0x701

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v4

    new-instance v5, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager$2;

    const-wide/16 v6, 0x1388

    invoke-direct {v5, p0, v6, v7}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager$2;-><init>(Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;J)V

    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "heartbeat#send packet to server"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
