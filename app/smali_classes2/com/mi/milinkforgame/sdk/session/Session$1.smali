.class Lcom/mi/milinkforgame/sdk/session/Session$1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/session/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/session/Session;


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/session/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/Session$1;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddTimeout(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRecvDownStream(I[B)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    const-string v1, "[No:%d]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/mi/milinkforgame/sdk/session/util/StreamUtil;->getDownPacket(Ljava/lang/String;[B)Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session$1;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->hasClientInfo()Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    :cond_2
    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->access$102(Lcom/mi/milinkforgame/sdk/session/Session;Z)Z

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$1;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onRecvDownStream cmd="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mnscode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getMnsCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " seq="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getSeqNo()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and set mNeedClientInfo="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/Session$1;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v4}, Lcom/mi/milinkforgame/sdk/session/Session;->access$100(Lcom/mi/milinkforgame/sdk/session/Session;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getSeqNo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->trySetMaxRecvSeqNo(I)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v1

    array-length v4, p2

    invoke-virtual {v0, v1, v4}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->traffic(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$1;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->access$200(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getSeqNo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/session/Request;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session$1;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/session/Session;->access$300(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getSeqNo()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/milinkforgame/sdk/session/Request;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$1;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->access$300(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getSeqNo()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$1;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/session/Session;->access$400(Lcom/mi/milinkforgame/sdk/session/Session;Lcom/mi/milinkforgame/sdk/session/Request;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$1;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/mi/milinkforgame/sdk/session/Session;->access$502(Lcom/mi/milinkforgame/sdk/session/Session;J)J

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/Session$1;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v4}, Lcom/mi/milinkforgame/sdk/session/Session;->access$600(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/Session$1;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v4}, Lcom/mi/milinkforgame/sdk/session/Session;->access$600(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$1;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->access$700(Lcom/mi/milinkforgame/sdk/session/Session;)Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->selectHandleUtil(Lcom/mi/milinkforgame/sdk/aidl/PacketData;Lcom/mi/milinkforgame/sdk/session/Request;)Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->handle()Z

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/Session$1;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v4}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "decode downstream failed"

    invoke-static {v4, v5, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_4
    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_2
.end method
