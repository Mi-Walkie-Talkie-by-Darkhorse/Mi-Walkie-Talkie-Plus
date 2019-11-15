.class public Lcom/ifengyu/im/imservice/manager/IMReconnectManager;
.super Lcom/ifengyu/im/imservice/manager/IMManager;
.source "IMReconnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/manager/IMReconnectManager$ReconnectHandler;
    }
.end annotation


# static fields
.field private static final HANDLER_CHECK_NETWORK:I = 0x1

.field private static final INIT_RECONNECT_INTERVAL_SECONDS:I = 0x3

.field private static final MAX_RECONNECT_INTERVAL_SECONDS:I = 0x3c

.field private static inst:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;


# instance fields
.field private final ACTION_RECONNECT:Ljava/lang/String;

.field handler:Lcom/ifengyu/im/imservice/manager/IMReconnectManager$ReconnectHandler;

.field private imReceiver:Landroid/content/BroadcastReceiver;

.field private volatile isAlarmTrigger:Z

.field private logger:Lcom/ifengyu/im/utils/Logger;

.field private reconnectInterval:I

.field private volatile status:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->inst:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;-><init>()V

    const-class v0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    sget-object v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->NONE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->status:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->reconnectInterval:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->isAlarmTrigger:Z

    new-instance v0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager$ReconnectHandler;

    invoke-direct {v0, p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager$ReconnectHandler;-><init>(Lcom/ifengyu/im/imservice/manager/IMReconnectManager;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->handler:Lcom/ifengyu/im/imservice/manager/IMReconnectManager$ReconnectHandler;

    const-string v0, "com.mogujie.tt.imlib.action.reconnect"

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->ACTION_RECONNECT:Ljava/lang/String;

    new-instance v0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager$1;-><init>(Lcom/ifengyu/im/imservice/manager/IMReconnectManager;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->imReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/im/imservice/manager/IMReconnectManager;)Lcom/ifengyu/im/utils/Logger;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ifengyu/im/imservice/manager/IMReconnectManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->ctx:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "teamtalk_reconnecting_wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "acquireWakeLock#call acquireWakeLock"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleReconnectServer()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#handleReconnectServer#\u5b9a\u65f6\u4efb\u52a1\u89e6\u53d1"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->acquireWakeLock()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->disconnectMsgServer()V

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->isAlarmTrigger:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->isAlarmTrigger:Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#\u5b9a\u65f6\u5668\u89e6\u53d1\u91cd\u8fde\u3002\u3002\u3002"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->reconnectInterval:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->relogin()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->reconnectMsg()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#\u6b63\u5e38\u91cd\u8fde\uff0c\u975e\u5b9a\u65f6\u5668"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->reconnectMsg()V

    goto :goto_0
.end method

.method private incrementReconnectInterval()V
    .locals 2

    const/16 v1, 0x3c

    iget v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->reconnectInterval:I

    if-lt v0, v1, :cond_0

    iput v1, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->reconnectInterval:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->reconnectInterval:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->reconnectInterval:I

    goto :goto_0
.end method

.method public static instance()Lcom/ifengyu/im/imservice/manager/IMReconnectManager;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->inst:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    return-object v0
.end method

.method private isReconnecting()Z
    .locals 3

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->getSocketStatus()Lcom/ifengyu/im/imservice/event/SocketEvent;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->getLoginStatus()Lcom/ifengyu/im/imservice/event/LoginEvent;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/im/imservice/event/SocketEvent;->CONNECTING_MSG_SERVER:Lcom/ifengyu/im/imservice/event/SocketEvent;

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/event/SocketEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/ifengyu/im/imservice/event/SocketEvent;->REQING_MSG_SERVER_ADDRS:Lcom/ifengyu/im/imservice/event/SocketEvent;

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/imservice/event/SocketEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGINING:Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/event/LoginEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "releaseWakeLock##call releaseWakeLock"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resetReconnectTime()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#resetReconnectTime"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->reconnectInterval:I

    return-void
.end method

.method private scheduleReconnect(I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#scheduleReconnect after %d seconds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mogujie.tt.imlib.action.reconnect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->ctx:Landroid/content/Context;

    const/high16 v2, 0x10000000

    invoke-static {v1, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#pi is null"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->ctx:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit16 v4, p1, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private tryReconnect()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->ctx:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#netinfo \u4e3a\u7a7a\u5ef6\u8fdf\u68c0\u6d4b"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->DISABLE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->status:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->handler:Lcom/ifengyu/im/imservice/manager/IMReconnectManager$ReconnectHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager$ReconnectHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->status:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->NONE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isEverLogined()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->isKickout()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->isSocketConnect()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#\u65e0\u9700\u542f\u52a8\u91cd\u8fde\u7a0b\u5e8f"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->isReconnecting()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#\u6b63\u5728\u91cd\u8fde\u4e2d.."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->incrementReconnectInterval()V

    iget v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->reconnectInterval:I

    invoke-direct {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->scheduleReconnect(I)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#tryReconnect#\u4e0b\u6b21\u91cd\u7ec3\u65f6\u95f4\u95f4\u9694:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->reconnectInterval:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->handleReconnectServer()V

    :goto_1
    monitor-exit p0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#\u7f51\u7edc\u4e0d\u53ef\u7528!! \u901a\u77e5\u4e0a\u5c42"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->DISABLE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->status:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->DISABLE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public doOnStart()V
    .locals 0

    return-void
.end method

.method public onAction(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#onAction action:%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#onAction#\u7f51\u7edc\u72b6\u6001\u53d1\u751f\u53d8\u5316!!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->tryReconnect()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.mogujie.tt.imlib.action.reconnect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->isAlarmTrigger:Z

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->tryReconnect()V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/LoginEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#LoginEvent event: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/LoginEvent;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager$2;->$SwitchMap$com$ifengyu$im$imservice$event$LoginEvent:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/LoginEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->tryReconnect()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->resetReconnectTime()V

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->releaseWakeLock()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/SocketEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#SocketEvent event:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/SocketEvent;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager$2;->$SwitchMap$com$ifengyu$im$imservice$event$SocketEvent:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/SocketEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->tryReconnect()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLocalLoginOk()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#LoginEvent onLocalLoginOk"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->inst:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->inst:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.mogujie.tt.imlib.action.reconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "reconnect#register actions"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->imReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onLocalNetOk()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#onLoginSuccess \u7f51\u7edc\u94fe\u63a5\u4e0a\u6765,\u65e0\u9700\u5176\u4ed6\u64cd\u4f5c"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->SUCCESS:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->status:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    return-void
.end method

.method public onNormalLoginOk()V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->onLocalLoginOk()V

    sget-object v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->SUCCESS:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->status:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#reset begin"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->inst:Lcom/ifengyu/im/imservice/manager/IMReconnectManager;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->imReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->NONE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->status:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->isAlarmTrigger:Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "reconnect#reset stop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->releaseWakeLock()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "reconnect#reset error:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->releaseWakeLock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMReconnectManager;->releaseWakeLock()V

    throw v0
.end method
