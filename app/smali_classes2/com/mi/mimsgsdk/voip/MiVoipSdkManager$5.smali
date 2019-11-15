.class Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$5;
.super Ljava/lang/Object;
.source "MiVoipSdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->leaveRoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$5;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$5;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$800(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lio/agora/rtc/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc/c;->b()I

    move-result v0

    sget-object v1, Lcom/mi/mimsgsdk/utils/LogType;->voip:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v2, "agora-mixun_sdk_voip-leave-code-%d-uid-%s-appid-%s"

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInstance()Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInitParams()Lcom/mi/mimsgsdk/InitParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/InitParams;->getgUid()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [J

    int-to-long v6, v0

    aput-wide v6, v4, v8

    invoke-static {v1, v2, v3, v4}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$5;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    const-string v2, "exitVoipRoom"

    invoke-static {v1, v2, v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$300(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Ljava/lang/String;I)V

    invoke-static {}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leave room fail, code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-wide v0, Lcom/mi/mimsgsdk/MsgSdkManager;->startTime:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mi/mimsgsdk/MsgSdkManager;->startTime:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/mi/mimsgsdk/utils/LogType;->voip:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v3, "agora-mixun_sdk_voip-time-%d-uid-%s-appid-%s"

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInstance()Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInitParams()Lcom/mi/mimsgsdk/InitParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/mimsgsdk/InitParams;->getgUid()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [J

    aput-wide v0, v5, v8

    invoke-static {v2, v3, v4, v5}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    sput-wide v10, Lcom/mi/mimsgsdk/MsgSdkManager;->startTime:J

    goto :goto_0
.end method
