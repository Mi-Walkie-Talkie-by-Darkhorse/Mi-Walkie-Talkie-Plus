.class abstract Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;
.super Ljava/util/concurrent/FutureTask;
.source "MiLinkClient.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/client/MiLinkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/mi/milinkforgame/sdk/aidl/PacketData;",
        ">;",
        "Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageFuture",
        "<",
        "Lcom/mi/milinkforgame/sdk/aidl/PacketData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;


# direct methods
.method public constructor <init>(Lcom/mi/milinkforgame/sdk/client/MiLinkClient;)V
    .locals 1

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;->this$0:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    new-instance v0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask$1;

    invoke-direct {v0, p1}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask$1;-><init>(Lcom/mi/milinkforgame/sdk/client/MiLinkClient;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method private ensureNotOnMainThread()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;->this$0:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->access$200(Lcom/mi/milinkforgame/sdk/client/MiLinkClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;->this$0:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->access$400(Lcom/mi/milinkforgame/sdk/client/MiLinkClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    throw v0

    :cond_0
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;->ensureNotOnMainThread()V

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;->cancel(Z)Z

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v2}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;->cancel(Z)Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;->cancel(Z)Z

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method public abstract doSendWork()V
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;->getResult(JLjava/util/concurrent/TimeUnit;)Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v0

    return-object v0
.end method

.method public final start()Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageFuture",
            "<",
            "Lcom/mi/milinkforgame/sdk/aidl/PacketData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;->doSendWork()V

    return-object p0
.end method
