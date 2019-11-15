.class public Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;
.super Ljava/lang/Object;
.source "AlarmClockService.java"


# static fields
.field private static ALARM_CLOCK_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;->ALARM_CLOCK_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;)V
    .locals 3

    const-string v0, "alarm"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->setPendingIntent(Landroid/app/PendingIntent;)V

    :cond_0
    const-class v1, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;->ALARM_CLOCK_MAP:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->getNamePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static cancelWhenArrived(Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->setPendingIntent(Landroid/app/PendingIntent;)V

    const-class v1, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;->ALARM_CLOCK_MAP:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->getNamePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getClock(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;->ALARM_CLOCK_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;

    return-object v0
.end method

.method public static set(Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;)Z
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "alarm"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->getInterval()J

    move-result-wide v4

    add-long/2addr v2, v4

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->getNamePrefix()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->setPendingIntent(Landroid/app/PendingIntent;)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-class v2, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;->ALARM_CLOCK_MAP:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->getNamePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
