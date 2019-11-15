.class Lcom/mi/milinkforgame/sdk/session/SessionManager$7;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/milinkforgame/sdk/session/SessionManager;->onOpenSessionResult(IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

.field final synthetic val$openStartTime:J


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;J)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$7;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    iput-wide p2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$7;->val$openStartTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check isInternetAvailable begin ,id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mInfoOnOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$7;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v4}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1400(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionConst;->isInternetAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->getCurrentNetworkDetailInfo()Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;

    move-result-object v2

    const-string v3, "SessionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkDetailInfo current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$7;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1400(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$NetworkDetailInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statistic milink.open, code=1,id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, "milink.open"

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$7;->val$openStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v3 .. v14}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    :cond_0
    :goto_0
    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check isInternetAvailable end, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statistic milink.open, code=4,id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, "milink.open"

    const/4 v7, 0x4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$7;->val$openStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v3 .. v14}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    goto :goto_0
.end method
