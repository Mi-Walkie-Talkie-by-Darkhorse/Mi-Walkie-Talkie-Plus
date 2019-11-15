.class public Lcom/mi/mimsgsdk/voip/EngineCallback;
.super Lio/agora/rtc/a;
.source "EngineCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mHandler:Landroid/os/Handler;

.field private volatile qualityIntersept:I

.field private volatile selfUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/voip/EngineCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/voip/EngineCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/a;-><init>()V

    iput-object p1, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static getQualityDesc(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "5"

    goto :goto_0

    :pswitch_1
    const-string v0, "4"

    goto :goto_0

    :pswitch_2
    const-string v0, "3"

    goto :goto_0

    :pswitch_3
    const-string v0, "2"

    goto :goto_0

    :pswitch_4
    const-string v0, "1"

    goto :goto_0

    :pswitch_5
    const-string v0, "0"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onAudioQuality(IISS)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "user %d quality %s delay %d lost %d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p2}, Lcom/mi/mimsgsdk/voip/EngineCallback;->getQualityDesc(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(ILjava/lang/String;)Z

    iget v0, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->qualityIntersept:I

    rem-int/lit8 v0, v0, 0x3c

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->voip:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "agora-mixun_sdk_voip-quality-%d-delay-%d-lost-%d-uid-%s-appid-%s"

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInstance()Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInitParams()Lcom/mi/mimsgsdk/InitParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/InitParams;->getgUid()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [J

    int-to-long v4, p2

    aput-wide v4, v3, v6

    int-to-long v4, p3

    aput-wide v4, v3, v7

    int-to-long v4, p4

    aput-wide v4, v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    iput v6, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->qualityIntersept:I

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->qualityIntersept:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->qualityIntersept:I

    return-void
.end method

.method public onAudioVolumeIndication([Lio/agora/rtc/a$a;I)V
    .locals 3

    const-string v1, "*******\n"

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " speakers.uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v0

    iget v2, v2, Lio/agora/rtc/a$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " speakers.volume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v0

    iget v2, v2, Lio/agora/rtc/a$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*******\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EngineCallback onAudioVolumeIndication"

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7d1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConnectionLost()V
    .locals 2

    const-string v0, "connection lost"

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(ILjava/lang/String;)Z

    const/16 v1, 0x3ee

    invoke-virtual {p0, v1, v0}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(ILjava/lang/String;)Z

    return-void
.end method

.method public onError(I)V
    .locals 3

    const/16 v0, 0x3e9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agora Voice SDK report error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(ILjava/lang/String;)Z

    return-void
.end method

.method public onJoinChannelSuccess(Ljava/lang/String;II)V
    .locals 6

    const/16 v0, 0x3e9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel joined: channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " elapsed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(ILjava/lang/String;)Z

    const/16 v0, 0x3ea

    const-string v1, "uid"

    invoke-virtual {p0, v0, p2, v1}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(IILjava/lang/String;)Z

    iput p2, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->selfUid:I

    return-void
.end method

.method public onLeaveChannel(Lio/agora/rtc/a$d;)V
    .locals 4

    const/16 v0, 0x3e9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end of call: duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lio/agora/rtc/a$d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secs, total "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lio/agora/rtc/a$d;->b:I

    iget v3, p1, Lio/agora/rtc/a$d;->c:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(ILjava/lang/String;)Z

    const/16 v0, 0x3eb

    iget v1, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->selfUid:I

    const-string v2, "uid"

    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(IILjava/lang/String;)Z

    return-void
.end method

.method public onLocalVideoStat(II)V
    .locals 0

    return-void
.end method

.method public onRejoinChannelSuccess(Ljava/lang/String;II)V
    .locals 6

    const/16 v0, 0x3e9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel rejoined: channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " elapsed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(ILjava/lang/String;)Z

    const/16 v0, 0x3ec

    const-string v1, "uid"

    invoke-virtual {p0, v0, p2, v1}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(IILjava/lang/String;)Z

    return-void
.end method

.method public onRtcStats(Lio/agora/rtc/a$d;)V
    .locals 0

    return-void
.end method

.method public onUserJoined(II)V
    .locals 6

    sget-object v0, Lcom/mi/mimsgsdk/voip/EngineCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tuning test uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onUserJoined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is joined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(ILjava/lang/String;)Z

    const/16 v0, 0x3ea

    const-string v1, "uid"

    invoke-virtual {p0, v0, p1, v1}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(IILjava/lang/String;)Z

    return-void
.end method

.method public onUserMuteAudio(IZ)V
    .locals 2

    sget-object v0, Lcom/mi/mimsgsdk/voip/EngineCallback;->TAG:Ljava/lang/String;

    const-string v1, "onUserMuteAudio"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUserMuteVideo(IZ)V
    .locals 8

    const-string v0, "user %d onUserMuteVideo fired"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-long v4, p1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(ILjava/lang/String;)Z

    return-void
.end method

.method public onUserOffline(II)V
    .locals 6

    sget-object v0, Lcom/mi/mimsgsdk/voip/EngineCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tuning test uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onUserOffline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is offline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(ILjava/lang/String;)Z

    const/16 v0, 0x3ed

    const-string v1, "uid"

    invoke-virtual {p0, v0, p1, v1}, Lcom/mi/mimsgsdk/voip/EngineCallback;->updateUI(IILjava/lang/String;)Z

    return-void
.end method

.method public updateUI(IILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public updateUI(ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mi/mimsgsdk/voip/EngineCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    return v0
.end method
