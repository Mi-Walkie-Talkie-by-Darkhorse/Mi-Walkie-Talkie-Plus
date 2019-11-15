.class public Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;
.super Ljava/lang/Object;
.source "RuntimeStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager$RuntimeStateListener;
    }
.end annotation


# static fields
.field private static final POWERSAVE_TIMESPAN:I = 0xdbba0

.field public static final RUNTIME_STATE_BACKGROUND:I = 0x1

.field private static final RUNTIME_STATE_CLOCK_LISTENER:Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;

.field public static final RUNTIME_STATE_FOREGROUND:I = 0x0

.field private static final RUNTIME_STATE_LISTENERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager$RuntimeStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public static final RUNTIME_STATE_POWERSAVING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RuntimeStateManager"

.field private static volatile sBackgroundBeginTime:J

.field private static sLastState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x2710

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->RUNTIME_STATE_LISTENERS:Ljava/util/List;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager$1;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager$1;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->RUNTIME_STATE_CLOCK_LISTENER:Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sBackgroundBeginTime:J

    const/4 v0, 0x1

    sput v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sLastState:I

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->RUNTIME_STATE_CLOCK_LISTENER:Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;

    invoke-static {v2, v3, v2, v3, v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->set(JJLcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;)Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sBackgroundBeginTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRuntimeStateListener(Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager$RuntimeStateListener;)V
    .locals 2

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->RUNTIME_STATE_LISTENERS:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->RUNTIME_STATE_LISTENERS:Ljava/util/List;

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

.method public static checkRuntimeState()V
    .locals 7

    const-class v2, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->getRuntimeState()I

    move-result v3

    sget v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sLastState:I

    if-eq v3, v0, :cond_0

    const-string v0, "RuntimeStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Runtime State Changed from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sLastState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u2192 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->RUNTIME_STATE_LISTENERS:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->RUNTIME_STATE_LISTENERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    check-cast v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager$RuntimeStateListener;

    sget v6, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sLastState:I

    invoke-interface {v0, v6, v3}, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager$RuntimeStateListener;->onRuntimeStateListener(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_0
    :try_start_5
    sput v3, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sLastState:I

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void
.end method

.method public static getRuntimeState()I
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->isBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static final isBackground()Z
    .locals 4

    sget-wide v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sBackgroundBeginTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sBackgroundBeginTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isBackgroundOrPowerSaving()Z
    .locals 4

    sget-wide v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sBackgroundBeginTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isForeground()Z
    .locals 4

    sget-wide v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sBackgroundBeginTime:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isPowerSave()Z
    .locals 4

    sget-wide v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sBackgroundBeginTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sBackgroundBeginTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeRuntimeStateListener(Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager$RuntimeStateListener;)V
    .locals 2

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->RUNTIME_STATE_LISTENERS:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->RUNTIME_STATE_LISTENERS:Ljava/util/List;

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

.method public static setBackground(Z)V
    .locals 3

    const-class v2, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->isBackgroundOrPowerSaving()Z

    move-result v0

    if-eq v0, p0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    sput-wide v0, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->sBackgroundBeginTime:J

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/RuntimeStateManager;->checkRuntimeState()V

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
