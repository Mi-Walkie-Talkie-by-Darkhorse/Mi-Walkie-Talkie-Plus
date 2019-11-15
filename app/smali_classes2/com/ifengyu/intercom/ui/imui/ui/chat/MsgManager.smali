.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;
.super Ljava/lang/Object;
.source "MsgManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mWorkerThread:Landroid/os/HandlerThread;

.field private static volatile sInstance:Lcom/mi/mimsgsdk/MsgSdkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManager()Lcom/mi/mimsgsdk/MsgSdkManager;
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;->sInstance:Lcom/mi/mimsgsdk/MsgSdkManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;->sInstance:Lcom/mi/mimsgsdk/MsgSdkManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/mimsgsdk/MsgSdkManager;

    invoke-static {}, Lcom/ifengyu/library/util/l;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mi/mimsgsdk/MsgSdkManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;->sInstance:Lcom/mi/mimsgsdk/MsgSdkManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;->sInstance:Lcom/mi/mimsgsdk/MsgSdkManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getWorkerLooper()Landroid/os/Looper;
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;->mWorkerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;->mWorkerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/IMXMsgCallback;)V
    .locals 8

    invoke-static {}, Lcom/ifengyu/library/util/j;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager$$Lambda$0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/IMXMsgCallback;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static final synthetic lambda$init$0$MsgManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/IMXMsgCallback;)V
    .locals 7

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/chat/MsgManager;->getManager()Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mi/mimsgsdk/MsgSdkManager;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/IMXMsgCallback;)Z

    return-void
.end method
