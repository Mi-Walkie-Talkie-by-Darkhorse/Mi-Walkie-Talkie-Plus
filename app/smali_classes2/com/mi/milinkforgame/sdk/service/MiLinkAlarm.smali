.class public Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;
.super Ljava/lang/Object;
.source "MiLinkAlarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm$MiLinkAlarmListener;
    }
.end annotation


# static fields
.field private static final FOREGROUND_ALARM_LISTENER:Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;

.field private static volatile LAST_ALARM_TIME:J = 0x0L

.field private static volatile NEXT_INTERVAL:J = 0x0L

.field private static final SYSTEM_ALARM:Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;

.field private static SYSTEM_ALARM_LISTENERS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm$MiLinkAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MiLinkAlarm"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;

    const-string v1, "milink.heartbeat"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getHeartBeatInterval()J

    move-result-wide v2

    new-instance v4, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm$1;

    invoke-direct {v4}, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm$1;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;-><init>(Ljava/lang/String;JLcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->SYSTEM_ALARM:Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;

    new-instance v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm$2;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm$2;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->FOREGROUND_ALARM_LISTENER:Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->LAST_ALARM_TIME:J

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getHeartBeatInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->NEXT_INTERVAL:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->SYSTEM_ALARM_LISTENERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->notifyAlarmTime(Ljava/lang/String;)V

    return-void
.end method

.method public static addListener(Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm$MiLinkAlarmListener;)V
    .locals 2

    sget-object v1, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->SYSTEM_ALARM_LISTENERS:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->SYSTEM_ALARM_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static notifyAlarmTime(Ljava/lang/String;)V
    .locals 6

    const-string v0, "MiLinkAlarm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAlarmTime sender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->LAST_ALARM_TIME:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->NEXT_INTERVAL:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    const-string v0, "MiLinkAlarm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAlarmTime Denied sender= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->LAST_ALARM_TIME:J

    invoke-static {}, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->notifyListeners()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static notifyListeners()V
    .locals 4

    sget-object v1, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->SYSTEM_ALARM_LISTENERS:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->SYSTEM_ALARM_LISTENERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    check-cast v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm$MiLinkAlarmListener;

    invoke-interface {v0}, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm$MiLinkAlarmListener;->onAlarmArrived()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public static removeListener(Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm$MiLinkAlarmListener;)V
    .locals 2

    sget-object v1, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->SYSTEM_ALARM_LISTENERS:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->SYSTEM_ALARM_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setInterval(J)V
    .locals 2

    const-class v1, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;

    monitor-enter v1

    :try_start_0
    sput-wide p0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->NEXT_INTERVAL:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->SYSTEM_ALARM:Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;

    invoke-virtual {v0, p0, p1}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->setInterval(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static start()V
    .locals 4

    const-wide/16 v2, 0x7530

    invoke-static {}, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->stop()V

    sget-object v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->SYSTEM_ALARM:Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;->set(Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MiLinkAlarm"

    const-string v1, "Heartbeat Alarm failed, use SimpleClock "

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->FOREGROUND_ALARM_LISTENER:Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;

    invoke-static {v2, v3, v2, v3, v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->set(JJLcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;)Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    :cond_0
    const-string v0, "MiLinkAlarm"

    const-string v1, "Heartbeat Alarm enabled"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static stop()V
    .locals 5

    const-string v0, "alarm"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->SYSTEM_ALARM:Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;

    invoke-virtual {v4}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->getNamePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->SYSTEM_ALARM:Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->cancel()V

    return-void
.end method
