.class Lcom/mi/milinkforgame/sdk/session/Session$4;
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

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/Session$4;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$4;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind onDataSendFailed errCode= "

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

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onLoginResult(Z)V

    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$4;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind response mns code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getMnsCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getMnsCode()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindRsp;->parseFrom([B)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$4;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fastlogin response = null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onLoginResult(Z)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindRsp;->getB2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindRsp;->getGTKEYB2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindRsp;->getUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindRsp;->getB2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindRsp;->getGTKEYB2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->loginMiLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->setInitByAppLogin(Z)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MnsCmdBindRsp;->getSUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->updateSuid(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onLoginResult(Z)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$4;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->heartBeat()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Session$4;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/session/Session;->access$000(Lcom/mi/milinkforgame/sdk/session/Session;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fastlogin response.getB2() = null or response.getGTKEYB2() = null"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onLoginResult(Z)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
