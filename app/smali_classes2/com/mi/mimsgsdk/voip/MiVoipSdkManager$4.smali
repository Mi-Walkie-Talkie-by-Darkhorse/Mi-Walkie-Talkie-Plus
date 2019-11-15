.class Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;
.super Ljava/lang/Object;
.source "MiVoipSdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->joinRoom(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

.field final synthetic val$channel:Ljava/lang/String;

.field final synthetic val$mediaMuid:I


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    iput-object p2, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->val$channel:Ljava/lang/String;

    iput p3, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->val$mediaMuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$800(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lio/agora/rtc/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/agora/rtc/c;->a(I)I

    invoke-static {}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "joinRoom channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->val$channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->val$mediaMuid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extra info you pass to SDK"

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    iget v2, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->val$mediaMuid:I

    invoke-static {v1, v2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$202(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;I)I

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v1}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$800(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Lio/agora/rtc/c;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v2}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$500(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->val$channel:Ljava/lang/String;

    iget v4, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->val$mediaMuid:I

    invoke-virtual {v1, v2, v3, v0, v4}, Lio/agora/rtc/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/mi/mimsgsdk/MsgSdkManager;->startTime:J

    sget-object v1, Lcom/mi/mimsgsdk/utils/LogType;->voip:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v2, "agora-mixun_sdk_voip-enter-code-%d-uid-%s-appid-%s"

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInstance()Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInitParams()Lcom/mi/mimsgsdk/InitParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/InitParams;->getgUid()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [J

    const/4 v5, 0x0

    int-to-long v6, v0

    aput-wide v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    const-string v2, "joinVoipRoom"

    invoke-static {v1, v2, v0}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$300(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Ljava/lang/String;I)V

    invoke-static {}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "join agora room fail, code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager$4;->this$0:Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;

    invoke-static {v0, v8}, Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;->access$902(Lcom/mi/mimsgsdk/voip/MiVoipSdkManager;Z)Z

    return-void
.end method
