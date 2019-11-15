.class Lcom/mi/milinkforgame/sdk/session/Session$3;
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

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hand shake error session, errCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/session/Session;->access$1302(Lcom/mi/milinkforgame/sdk/session/Session;Z)Z

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v0, p1}, Lcom/mi/milinkforgame/sdk/session/Session;->access$1400(Lcom/mi/milinkforgame/sdk/session/Session;I)V

    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 13

    const/4 v12, 0x5

    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hand shake success session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v4}, Lcom/mi/milinkforgame/sdk/session/Session;->access$900(Lcom/mi/milinkforgame/sdk/session/Session;)Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getSeqNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;->parseFrom([B)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v5, v2

    :goto_0
    if-nez v5, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handshake response is null"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/session/Session;->access$1000(Lcom/mi/milinkforgame/sdk/session/Session;Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;)V

    :goto_1
    return-void

    :catch_0
    move-exception v2

    move-object v5, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;->getClientinfo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clientInfo:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/mi/milinkforgame/sdk/session/Session;->access$1102(Lcom/mi/milinkforgame/sdk/session/Session;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/mi/milinkforgame/sdk/session/Session;->access$1202(Lcom/mi/milinkforgame/sdk/session/Session;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    aget-object v4, v2, v1

    invoke-static {v3, v4}, Lcom/mi/milinkforgame/sdk/session/Session;->access$1102(Lcom/mi/milinkforgame/sdk/session/Session;Ljava/lang/String;)Ljava/lang/String;

    array-length v3, v2

    if-le v3, v11, :cond_1

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    aget-object v2, v2, v11

    invoke-static {v3, v2}, Lcom/mi/milinkforgame/sdk/session/Session;->access$1202(Lcom/mi/milinkforgame/sdk/session/Session;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    invoke-virtual {v5}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;->getRedirectList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2
    invoke-virtual {v5}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;->getRedirectCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {v5, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;->getRedirect(I)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsIpInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsIpInfo;->getIp()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-virtual {v6}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsIpInfo;->getIp()I

    move-result v7

    invoke-static {v7}, Lcom/mi/milinkforgame/sdk/base/data/Convert;->intToIPv4(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v1, v11, v12}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v0, :cond_4

    invoke-virtual {v6}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsIpInfo;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    array-length v8, v7

    move v4, v1

    :goto_3
    if-ge v4, v8, :cond_4

    aget-object v9, v7, v4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Lcom/mi/milinkforgame/sdk/session/ServerProfile;

    invoke-direct {v10, v9, v1, v11, v12}, Lcom/mi/milinkforgame/sdk/session/ServerProfile;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v4}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "milink server ip:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsIpInfo;->getIp()I

    move-result v8

    invoke-static {v8}, Lcom/mi/milinkforgame/sdk/base/data/Convert;->intToIPv4(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " port:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsIpInfo;->getPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " remark:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsIpInfo;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_5
    move-object v0, v2

    move-object v1, v3

    :goto_4
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    new-instance v3, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v4}, Lcom/mi/milinkforgame/sdk/session/Session;->access$1100(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mi/milinkforgame/sdk/session/Session$3;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v5}, Lcom/mi/milinkforgame/sdk/session/Session;->access$1200(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/session/Session;->access$1000(Lcom/mi/milinkforgame/sdk/session/Session;Lcom/mi/milinkforgame/sdk/session/OpenSessionSucessReturnInfo;)V

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto :goto_4
.end method
