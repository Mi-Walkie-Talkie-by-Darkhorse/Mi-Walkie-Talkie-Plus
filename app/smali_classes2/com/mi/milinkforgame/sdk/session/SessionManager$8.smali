.class Lcom/mi/milinkforgame/sdk/session/SessionManager$8;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/milinkforgame/sdk/session/SessionManager;->handleRequest(Lcom/mi/milinkforgame/sdk/session/Request;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

.field final synthetic val$request:Lcom/mi/milinkforgame/sdk/session/Request;


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;Lcom/mi/milinkforgame/sdk/session/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    iput-object p2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->val$request:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1500(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/session/Session;

    move-result-object v0

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send data, session manager state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v4}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1600(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->milinkHasLogined()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->milinkHasLogined()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "SessionManager"

    const-string v1, "send data, milink not login."

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->login()V

    :goto_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->val$request:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->requestShouldCached()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push request in cache, seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->val$request:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1700(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->val$request:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez v0, :cond_4

    const-string v0, "SessionManager"

    const-string v1, "send data, session is null."

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->autoOpen()Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send data, session is not available. sessionNo="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->getSessionNO()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abandon data because session is not available, seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->val$request:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->val$request:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getData()Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->val$request:Lcom/mi/milinkforgame/sdk/session/Request;

    const/16 v1, 0x215

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abandon package,session is not available state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v4}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1600(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mi/milinkforgame/sdk/session/Request;->onDataSendFailed(ILjava/lang/String;)Z

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v1

    const-string v2, ""

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->val$request:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getData()Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->val$request:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getCreatedTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->val$request:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSize()I

    move-result v10

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->val$request:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v12

    move v11, v3

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    goto/16 :goto_1

    :cond_6
    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send data to session, seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->val$request:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/session/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$8;->val$request:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/session/Session;->handleRequest(Lcom/mi/milinkforgame/sdk/session/Request;)Z

    goto/16 :goto_1
.end method
