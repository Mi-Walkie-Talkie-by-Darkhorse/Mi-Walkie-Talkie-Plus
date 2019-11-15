.class Lcom/mi/milinkforgame/sdk/session/Session$5;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/ResponseListener;


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

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/Session$5;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$5;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "heartbeat failed"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 4

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$5;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "heartbeat success"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp;->parseFrom([B)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp;->getJsonconfig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->updateConfig(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getEngineConfigRatio()F

    move-result v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session$5;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "engineConfigRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto$DataExtra;->newBuilder()Lcom/mi/milinkforgame/sdk/proto/DataExtraProto$DataExtra$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto$DataExtra$Builder;->setEngineratio(F)Lcom/mi/milinkforgame/sdk/proto/DataExtraProto$DataExtra$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto$DataExtra$Builder;->build()Lcom/mi/milinkforgame/sdk/proto/DataExtraProto$DataExtra;

    move-result-object v0

    new-instance v1, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;-><init>()V

    const-string v2, "data.extra"

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/DataExtraProto$DataExtra;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->setData([B)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;->getInstance()Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;->dispatchPacket(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
