.class public Lcom/mi/milinkforgame/sdk/receiver/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "milink.heartbeat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;->getClock(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->getListener()Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;->onClockArrived(Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;->set(Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;->cancelWhenArrived(Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;)V

    goto :goto_0
.end method
