.class public abstract Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# instance fields
.field private clockId:I

.field private interval:J

.field private listener:Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;


# direct methods
.method protected constructor <init>(IJLcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;->interval:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;->clockId:I

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;->setClockId(I)V

    invoke-virtual {p0, p2, p3}, Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;->setInterval(J)V

    invoke-direct {p0, p4}, Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;->setListener(Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;)V

    return-void
.end method

.method private setClockId(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;->clockId:I

    return-void
.end method

.method private setListener(Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;->listener:Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public getClockId()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;->clockId:I

    return v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;->interval:J

    return-wide v0
.end method

.method public getListener()Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;->listener:Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;

    return-object v0
.end method

.method public setInterval(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;->interval:J

    return-void
.end method
