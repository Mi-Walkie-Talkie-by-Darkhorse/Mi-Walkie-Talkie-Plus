.class public Lcom/mi/mimsgsdk/service/MiMsgServiceClient;
.super Ljava/util/Observable;
.source "MiMsgServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/service/MiMsgServiceClient$OnServiceStartListener;,
        Lcom/mi/mimsgsdk/service/MiMsgServiceClient$ServiceStartResult;,
        Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;
    }
.end annotation


# static fields
.field private static final AFTER_STOP_SERVICE_START_THRESHOLD:I = 0x5

.field private static final SERVICE_OUT_TIME:J = 0x3a98L

.field private static final SERVICE_START_THRESHOLD:I = 0x14

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final INIT_LOCK:Ljava/lang/Object;

.field private final SERVICE_LOCK:Ljava/lang/Object;

.field protected context:Landroid/content/Context;

.field private mIsInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private onStartCommandReturn:I

.field private final remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;",
            ">;"
        }
    .end annotation
.end field

.field private volatile serviceConnecting:Z

.field private volatile servicePid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->servicePid:I

    iput-boolean v1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->serviceConnecting:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->SERVICE_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->INIT_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->mIsInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->context:Landroid/content/Context;

    new-instance v0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    invoke-static {p1}, Lcom/mi/mimsgsdk/utils/VersionUtils;->getCurrentVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/mi/mimsgsdk/utils/VersionUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RELEASE"

    const-string v5, "MiMsgSdk"

    const-string v6, "com.mi.mimsgsdk"

    const-string v7, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.mi.mimsgsdk:milink"

    move v1, p2

    invoke-direct/range {v0 .. v9}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/mi/milinkforgame/sdk/base/Global;->init(Landroid/content/Context;Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mi/mimsgsdk/service/MiMsgServiceClient;Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->startService(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mi/mimsgsdk/service/MiMsgServiceClient;Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->stopService(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mi/mimsgsdk/service/MiMsgServiceClient;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->SERVICE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method private initService()Z
    .locals 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "onStartCommandReturn"

    iget v2, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->onStartCommandReturn:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "appId"

    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->getAppId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->context:Landroid/content/Context;

    const-class v3, Lcom/mi/mimsgsdk/service/MiMsgService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "start service failed"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startService ComponentName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "start service success"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    goto :goto_0
.end method

.method private startService(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)Z
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->initService()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "bindService() failed!!"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    sget-object v1, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "bindService() success!!"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->serviceConnecting:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopService(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)V
    .locals 4

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->serviceConnecting:Z

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->UserCall:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->context:Landroid/content/Context;

    const-class v3, Lcom/mi/mimsgsdk/service/MiMsgService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->mIsInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->mIsInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->mIsInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public getRemoteService()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->getRemoteServiceInit()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "remoteReference.get() == null milink\u8fdc\u7a0b\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInstance()Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInstance()Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInitParams()Lcom/mi/mimsgsdk/InitParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/MsgSdkManager;->init(Lcom/mi/mimsgsdk/InitParams;)V

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    return-object v0
.end method

.method public getRemoteServiceInit()Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "getRemoteService, but remoteService = null, try start service"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$1;

    invoke-direct {v0, p0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$1;-><init>(Lcom/mi/mimsgsdk/service/MiMsgServiceClient;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/d;)Lrx/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a;->b()Lrx/f;

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->SERVICE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->SERVICE_LOCK:Ljava/lang/Object;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "remoteReference.get() == null milink\u8fdc\u7a0b\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getServicePid()I
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->servicePid:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isServiceAlive()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->isServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    invoke-interface {v0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->isAlive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "Remote Service is Dead"

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public isServiceAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public killService()V
    .locals 3

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->servicePid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] will be Terminated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->servicePid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->serviceConnecting:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->serviceConnecting:Z

    :goto_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p2}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    invoke-interface {v0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->ClientError:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    invoke-direct {p0, v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->stopService(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)V

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;

    invoke-interface {v0}, Lcom/mi/mimsgsdk/service/aidl/IMiMsgService;->getProcessPid()I

    move-result v0

    iput v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->servicePid:I

    iget v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->servicePid:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->ClientError:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    invoke-direct {p0, v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->stopService(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->remoteRefrence:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "onServiceConnected got a binder"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->SERVICE_LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->SERVICE_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_3
    :try_start_4
    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "Ghost\'s Call? Nobody binds service but Callback here. WTF!!!"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->ClientError:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    invoke-direct {p0, v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->stopService(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->Disconnect:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    invoke-direct {p0, v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->stopService(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startService(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$OnServiceStartListener;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->UserCall:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    invoke-direct {p0, v1}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->startService(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    :goto_0
    if-eqz p1, :cond_0

    if-eqz v1, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$ServiceStartResult;->Success:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$ServiceStartResult;

    :goto_1
    invoke-interface {p1, v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$OnServiceStartListener;->onServiceStarted(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$ServiceStartResult;)V

    :cond_0
    return v1

    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$ServiceStartResult;->SystemError:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$ServiceStartResult;

    goto :goto_1
.end method

.method public startService(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$OnServiceStartListener;I)Z
    .locals 1

    iput p2, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->onStartCommandReturn:I

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->startService(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$OnServiceStartListener;)Z

    move-result v0

    return v0
.end method

.method public stopService()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->stopService(ZZ)V

    return-void
.end method

.method public stopService(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->stopService(ZZ)V

    return-void
.end method

.method public stopService(ZZ)V
    .locals 3

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop Service By User [ Logout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Kill = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->UserCall:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    invoke-direct {p0, v0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->stopService(Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient;->killService()V

    :cond_0
    return-void
.end method
