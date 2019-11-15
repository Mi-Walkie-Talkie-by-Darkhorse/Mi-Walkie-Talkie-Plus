.class public abstract Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;
.super Ljava/lang/Object;
.source "IMnsCodeCopeWays.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field protected mRecvData:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

.field protected mRequeset:Lcom/mi/milinkforgame/sdk/session/Request;

.field protected mRetCode:I

.field protected mSession:Lcom/mi/milinkforgame/sdk/session/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IMnsCodeCopeWays"

    sput-object v0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mi/milinkforgame/sdk/session/Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mSession:Lcom/mi/milinkforgame/sdk/session/Session;

    return-void
.end method


# virtual methods
.method protected abstract afterHandle()V
.end method

.method public handleMnsCode()V
    .locals 3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getMnsCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRetCode:I

    const-string v1, "milink.handshake"

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mSession:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/session/Session;->addContinuousRecv110Count()V

    :cond_0
    :goto_0
    const-string v1, "milink.loginoff"

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milinkforgame/sdk/session/Request;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getListener()Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->getListener()Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getMnsCode()I

    move-result v1

    const-string v2, "MNS_LOGOFF failed, return"

    invoke-interface {v0, v1, v2}, Lcom/mi/milinkforgame/sdk/session/ResponseListener;->onDataSendFailed(ILjava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mSession:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/session/Session;->resetContinuousRecv110Count()V

    goto :goto_0

    :cond_3
    sparse-switch v0, :sswitch_data_0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->onUnknowMsnCode(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->afterHandle()V

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->onOk()V

    goto :goto_3

    :sswitch_1
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->onB2TokenExpired()V

    goto :goto_3

    :sswitch_2
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->onServerTokenExpired()V

    goto :goto_3

    :sswitch_3
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->onShouldCheckUpdate()V

    goto :goto_3

    :sswitch_4
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->onTimeOut()V

    goto :goto_3

    :sswitch_5
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->onKickedByServer()V

    goto :goto_3

    :sswitch_6
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->onAccNeedRetry()V

    goto :goto_3

    :sswitch_7
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->onServerSpecialLineBroken()V

    goto :goto_3

    :sswitch_8
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->onServerSpecialLineBrokenUrgent()V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_5
        0x67 -> :sswitch_3
        0x6d -> :sswitch_4
        0x6e -> :sswitch_7
        0x76 -> :sswitch_6
        0x77 -> :sswitch_8
    .end sparse-switch
.end method

.method protected abstract onAccNeedRetry()V
.end method

.method protected abstract onB2TokenExpired()V
.end method

.method protected abstract onBusinessCmdTimeout()V
.end method

.method protected abstract onInternalCmdTimeout()V
.end method

.method protected onKickedByServer()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$KickMessage;->parseFrom([B)Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$KickMessage;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onKickedByServer(Lcom/mi/milinkforgame/sdk/proto/PushPacketProto$KickMessage;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract onOk()V
.end method

.method protected onServerSpecialLineBroken()V
    .locals 3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milinkforgame/sdk/session/Request;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getMnsCode()I

    move-result v1

    const-string v2, "MI_LINK_CODE_SERVER_SPECIAL_LINE_BROKEN"

    invoke-virtual {v0, v1, v2}, Lcom/mi/milinkforgame/sdk/session/Request;->onDataSendFailed(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mSession:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->checkExceedMaxContinuousRecv110Count()Z

    return-void
.end method

.method protected onServerSpecialLineBrokenUrgent()V
    .locals 3

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->TAG:Ljava/lang/String;

    const-string v1, "onServerSpecialLineBrokenUrgent"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milinkforgame/sdk/session/Request;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getMnsCode()I

    move-result v1

    const-string v2, "MI_LINK_CODE_SERVER_SPECIAL_LINE_BROKEN_URGENT"

    invoke-virtual {v0, v1, v2}, Lcom/mi/milinkforgame/sdk/session/Request;->onDataSendFailed(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mSession:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->onServerLineBroken()V

    return-void
.end method

.method protected abstract onServerTokenExpired()V
.end method

.method protected abstract onShouldCheckUpdate()V
.end method

.method protected onTimeOut()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milinkforgame/sdk/session/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milinkforgame/sdk/session/Request;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Request;->isInternalRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->onInternalCmdTimeout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->onBusinessCmdTimeout()V

    goto :goto_0
.end method

.method protected abstract onUnknowMsnCode(I)V
.end method

.method public setParam(Lcom/mi/milinkforgame/sdk/aidl/PacketData;Lcom/mi/milinkforgame/sdk/session/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    iput-object p2, p0, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milinkforgame/sdk/session/Request;

    return-void
.end method
