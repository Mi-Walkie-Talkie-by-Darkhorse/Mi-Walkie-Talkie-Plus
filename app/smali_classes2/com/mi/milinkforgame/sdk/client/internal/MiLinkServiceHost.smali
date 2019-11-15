.class public Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;
.super Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;
.source "MiLinkServiceHost.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost$S;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected context:Landroid/content/Context;

.field protected mMilinkListener:Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;)V
    .locals 7

    sget-object v0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->mMilinkListener:Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setSessionManagerListener(Lcom/mi/milinkforgame/sdk/session/ISessionManagerListener;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->clearResources()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/mi/milinkforgame/sdk/service/MiLinkExceptionHandler;

    invoke-direct {v2}, Lcom/mi/milinkforgame/sdk/service/MiLinkExceptionHandler;-><init>()V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/mi/milinkforgame/sdk/base/Global;->STARTUP_TIME:J

    invoke-static {}, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MiLink Service Created, pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cost="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public onOpenSessionResult(JI)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSessionStateChanged(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)Z
    .locals 3

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    new-instance v2, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost$S;

    invoke-direct {v2, p1, p2}, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost$S;-><init>(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost$S;

    iget-object v1, v0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost$S;->oldState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    iget-object v0, v0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost$S;->newState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->mMilinkListener:Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->TAG:Ljava/lang/String;

    const-string v3, "SERVER_STATE_UPDATED from %s to %s "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->mMilinkListener:Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;

    invoke-interface {v2, v1, v0}, Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;->onMilinkSdkStateUpdate(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->TAG:Ljava/lang/String;

    const-string v1, "mMilinkListener is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->mMilinkListener:Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->TAG:Ljava/lang/String;

    const-string v2, "MNS_INTERNAL_ERROR errCode is %d , notice client"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->mMilinkListener:Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;

    invoke-interface {v1, v0}, Lcom/mi/milinkforgame/sdk/client/MiLinkObserver;->onInternalError(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;->TAG:Ljava/lang/String;

    const-string v1, "mMilinkListener is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
