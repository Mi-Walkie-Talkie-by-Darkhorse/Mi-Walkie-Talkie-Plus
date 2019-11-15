.class public Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;
.super Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;
.source "AlarmClock.java"


# instance fields
.field private namePrefix:Ljava/lang/String;

.field private pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;-><init>(IJLcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;)V

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->setNamePrefix(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClockService;->cancel(Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;)V

    return-void
.end method

.method public getNamePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->namePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public setNamePrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->namePrefix:Ljava/lang/String;

    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/timer/AlarmClock;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method
