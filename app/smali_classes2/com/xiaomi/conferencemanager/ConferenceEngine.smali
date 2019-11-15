.class public Lcom/xiaomi/conferencemanager/ConferenceEngine;
.super Ljava/lang/Object;
.source "ConferenceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;,
        Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConferenceEngine"

.field private static instance:Lcom/xiaomi/conferencemanager/ConferenceEngine;


# instance fields
.field private address:J

.field private cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native WriteSettings(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native getEngineVersion()Ljava/lang/String;
.end method

.method public static native getEngineVersionInt()I
.end method

.method public static getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;
    .locals 2

    sget-object v0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->instance:Lcom/xiaomi/conferencemanager/ConferenceEngine;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/conferencemanager/ConferenceEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->instance:Lcom/xiaomi/conferencemanager/ConferenceEngine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/conferencemanager/ConferenceEngine;

    invoke-direct {v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;-><init>()V

    sput-object v0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->instance:Lcom/xiaomi/conferencemanager/ConferenceEngine;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->instance:Lcom/xiaomi/conferencemanager/ConferenceEngine;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public native AutoStartCamera(Z)V
.end method

.method public native AutoStartMicrophone(Z)V
.end method

.method public native AutoStartSpeaker(Z)V
.end method

.method public native Construct(Landroid/content/Context;JLjava/lang/String;[BLjava/lang/String;II)J
.end method

.method public native Dispose()V
.end method

.method public native Join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native Leave()V
.end method

.method public native MuteMicrophone(Z)V
.end method

.method public native MuteVideo(Z)Z
.end method

.method public OnSelectionChanged([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->OnSelectionChanged([Ljava/lang/String;)V

    return-void
.end method

.method public native SetGslbConfig([B)Z
.end method

.method public native SetSecure(Z)V
.end method

.method public native StartVideo(Z)Z
.end method

.method public native acceptCall()V
.end method

.method public native declineCall()V
.end method

.method public native enableCameraRotation(Z)V
.end method

.method public native enableMonitorTraffic(Z)V
.end method

.method public getAddress()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->address:J

    return-wide v0
.end method

.method public getEngineError(I)Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;
    .locals 6

    sget-object v1, Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;->ENGINE_UNKNOWN_ERROR:Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;->values()[Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public native getIceStat()Ljava/lang/String;
.end method

.method public native getInVideoStat()Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;
.end method

.method public native getMonitorData()Lcom/xiaomi/conferencemanager/Model/MonitorData;
.end method

.method public getNetworkEnv(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "No network"

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v0, "WIFI"

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown"

    goto :goto_0

    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    :pswitch_2
    const-string v0, "4G"

    goto :goto_0

    :cond_3
    const-string v0, "Unknown"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public native getOutVideoStat()Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;
.end method

.method public native getParticipantVolume(Ljava/lang/String;)I
.end method

.method public native getRunHorseTime()I
.end method

.method public native getVoiceMode()I
.end method

.method public initialize(Landroid/content/Context;JLjava/lang/String;[BLcom/xiaomi/conferencemanager/callback/ConferenceCallback;Ljava/lang/String;II)Z
    .locals 12

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    if-eqz p5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java gslb_config_str.length. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Java gslb_config_str.length. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->Construct(Landroid/content/Context;JLjava/lang/String;[BLjava/lang/String;II)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->address:J

    iget-wide v2, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->address:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public native localParticipantSetDynamicViewPolicy(Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;)V
.end method

.method public native muteUserAudio(Ljava/lang/String;Z)V
.end method

.method public onAccessServerError(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onAccessServerError(I)V

    return-void
.end method

.method public onCallEnded()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onCallEnded()V

    return-void
.end method

.method public onConferenceJoined()V
    .locals 1

    const-string v0, "Java onConferenceJoined."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onConferenceJoined()V

    return-void
.end method

.method public onConferenceLeaved(I)V
    .locals 2

    const-string v0, "Java onConferenceLeaved."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getEngineError(I)Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onConferenceLeaved(Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;)V

    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getEngineError(I)Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-virtual {p0, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getEngineError(I)Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onError(Ljava/lang/String;Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;)V

    return-void
.end method

.method public onGetBestConnectionTime(III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java getBestConnectionTime."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java getBestConnectionSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " java getBestConnectionType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;->valueOf(I)Lcom/xiaomi/conferencemanager/Model/MonitorData$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v1, p1, p2, v0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onGetBestConnectionTime(IILcom/xiaomi/conferencemanager/Model/MonitorData$Type;)V

    return-void
.end method

.method public onGetConnnectionData(Lcom/xiaomi/conferencemanager/Model/ConnectionData;)V
    .locals 1

    const-string v0, "Java onGetConnectionData."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public onGetFirstAudioSample()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onGetFirstAudioSample()V

    return-void
.end method

.method public onGetFirstVideoSample()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onGetFirstVideoSample()V

    return-void
.end method

.method public onGetSpeekerDetect([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onGetSpeekerDetect([Ljava/lang/String;)V

    return-void
.end method

.method public onJoin(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onJoin(Ljava/lang/String;)V

    return-void
.end method

.method public onLeave(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onLeave(Ljava/lang/String;)V

    return-void
.end method

.method public onLocalVidStreamActive()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onLocalVidStreamActive()V

    return-void
.end method

.method public onLocalVidStreamDeactive()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onLocalVidStreamDeactive()V

    return-void
.end method

.method public onNetworkStatus(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onNetworkStatus(Ljava/lang/String;II)V

    return-void
.end method

.method public onReceivedRemoteFrameStatus(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onReceivedRemoteFrameStatus(Ljava/lang/String;I)V

    return-void
.end method

.method public onReconnectStatus(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onReconnectStatus(I)V

    return-void
.end method

.method public onReflectorDown()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onReflectorDown()V

    return-void
.end method

.method public onRemoteVidResize(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onRemoteVidResize(Ljava/lang/String;II)V

    return-void
.end method

.method public onRemoteVidStreamCreated(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onRemoteVidStreamCreated(Ljava/lang/String;)V

    return-void
.end method

.method public onRemoteVidStreamRemoved(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onRemoteVidStreamRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public onReportTraffic(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onReportTraffic(I)V

    return-void
.end method

.method public onScreamChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onScreamChange(I)V

    return-void
.end method

.method public onStartCamera()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onStartCamera()V

    return-void
.end method

.method public onStopCamera()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {v0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onStopCamera()V

    return-void
.end method

.method public native setAudioType(I)V
.end method

.method public native setCallResolutionMode(II)V
.end method

.method public native setEncoderMaxBitRate(I)V
.end method

.method public native setLocalNetWork(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setMirrorCamera(Z)V
.end method

.method public native setPlayoutVolume(I)V
.end method

.method public native setPowerStatus(IZ)V
.end method

.method public native setRemoteNetWork(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setScreenFps(I)Z
.end method

.method public native setScreenResolution(II)Z
.end method

.method public native setUserPlayoutVolume(Ljava/lang/String;D)V
.end method

.method public native switchVideoContent(Lcom/xiaomi/conferencemanager/ConferenceManager$VideoContentTypeT;)Z
.end method

.method public uninitialize()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->Dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    return-void
.end method
