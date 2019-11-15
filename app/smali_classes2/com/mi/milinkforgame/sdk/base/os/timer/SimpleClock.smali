.class public Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;
.super Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;
.source "SimpleClock.java"


# static fields
.field private static final CLOCK_MAX_COUNT:I = 0x20

.field private static final CLOCK_SERVICE_NAME:Ljava/lang/String; = "base.clock.service"

.field private static clockHandler:Landroid/os/Handler;

.field private static clockThread:Landroid/os/HandlerThread;

.field private static clocks:[Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;


# direct methods
.method protected constructor <init>(IJLcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;-><init>(IJLcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;)V

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->handleClockMessage(I)V

    return-void
.end method

.method public static cancel(Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;)V
    .locals 4

    const-class v1, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->getClockId()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clocks:[Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clocks:[Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    if-ne v2, p0, :cond_3

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clocks:[Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static handleClockMessage(I)V
    .locals 2

    if-ltz p0, :cond_0

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clocks:[Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clocks:[Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->getListener()Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;->onClockArrived(Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->getInterval()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->prepareNextInterval(IJ)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->cancel(Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;)V

    goto :goto_0
.end method

.method private static initClockService()V
    .locals 3

    const-class v1, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clocks:[Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    if-nez v0, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clocks:[Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    :cond_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clockThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "base.clock.service"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clockThread:Landroid/os/HandlerThread;

    :cond_1
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clockThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clockThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_2
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clockThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clockHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock$1;

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clockThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clockHandler:Landroid/os/Handler;

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static prepareNextInterval(IJ)V
    .locals 3

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clockHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clockHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clockHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static set(JJLcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;)Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;
    .locals 4

    const-class v2, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->initClockService()V

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clocks:[Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clocks:[Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    move v1, v0

    :cond_0
    if-gez v1, :cond_2

    const/4 v0, 0x0

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    invoke-direct {v0, v1, p0, p1, p4}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;-><init>(IJLcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;)V

    sget-object v3, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->clocks:[Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    aput-object v0, v3, v1

    invoke-static {v1, p2, p3}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->prepareNextInterval(IJ)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->cancel(Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;)V

    return-void
.end method
