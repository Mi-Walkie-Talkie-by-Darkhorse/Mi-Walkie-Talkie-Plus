.class public Lcom/ifengyu/im/imservice/callback/ListenerQueue;
.super Ljava/lang/Object;
.source "ListenerQueue.java"


# static fields
.field private static listenerQueue:Lcom/ifengyu/im/imservice/callback/ListenerQueue;


# instance fields
.field private callBackQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ifengyu/im/imservice/callback/Packetlistener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hasTask:Z

.field private logger:Lcom/ifengyu/im/utils/Logger;

.field private volatile stopFlag:Z

.field private timerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->listenerQueue:Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->logger:Lcom/ifengyu/im/utils/Logger;

    iput-boolean v1, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->stopFlag:Z

    iput-boolean v1, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->hasTask:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->callBackQueue:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->timerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/im/imservice/callback/ListenerQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->timerImpl()V

    return-void
.end method

.method static synthetic access$102(Lcom/ifengyu/im/imservice/callback/ListenerQueue;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->hasTask:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ifengyu/im/imservice/callback/ListenerQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->startTimer()V

    return-void
.end method

.method public static instance()Lcom/ifengyu/im/imservice/callback/ListenerQueue;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->listenerQueue:Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    return-object v0
.end method

.method private startTimer()V
    .locals 4

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->stopFlag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->hasTask:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->hasTask:Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->timerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ifengyu/im/imservice/callback/ListenerQueue$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/im/imservice/callback/ListenerQueue$1;-><init>(Lcom/ifengyu/im/imservice/callback/ListenerQueue;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopTimer()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->stopFlag:Z

    return-void
.end method

.method private timerImpl()V
    .locals 11

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->callBackQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/im/imservice/callback/Packetlistener;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/callback/Packetlistener;->getCreateTime()J

    move-result-wide v6

    sub-long v6, v2, v6

    :try_start_0
    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/callback/Packetlistener;->getTimeOut()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v5, "ListenerQueue#find timeout msg"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->pop(I)Lcom/ifengyu/im/imservice/callback/Packetlistener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;->onTimeout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v5, "ListenerQueue#timerImpl onTimeout is Error,exception is %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-virtual {v1, v5, v6}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onDestory()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "ListenerQueue#onDestory "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->callBackQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->stopTimer()V

    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "ListenerQueue#onStart run"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->stopFlag:Z

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->startTimer()V

    return-void
.end method

.method public pop(I)Lcom/ifengyu/im/imservice/callback/Packetlistener;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->callBackQueue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->callBackQueue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/callback/Packetlistener;

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public push(ILcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 3

    if-lez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "ListenerQueue#push error, cause by Illegal params"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->callBackQueue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
