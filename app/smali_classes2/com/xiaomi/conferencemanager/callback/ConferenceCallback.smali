.class public interface abstract Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;
.super Ljava/lang/Object;
.source "ConferenceCallback.java"


# virtual methods
.method public abstract OnSelectionChanged([Ljava/lang/String;)V
.end method

.method public abstract onAccessServerError(I)V
.end method

.method public abstract onCallEnded()V
.end method

.method public abstract onConferenceJoined()V
.end method

.method public abstract onConferenceLeaved(Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;)V
.end method

.method public abstract onError(Ljava/lang/String;Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;)V
.end method

.method public abstract onGetBestConnectionTime(IILcom/xiaomi/conferencemanager/Model/MonitorData$Type;)V
.end method

.method public abstract onGetFirstAudioSample()V
.end method

.method public abstract onGetFirstVideoSample()V
.end method

.method public abstract onGetSpeekerDetect([Ljava/lang/String;)V
.end method

.method public abstract onJoin(Ljava/lang/String;)V
.end method

.method public abstract onLeave(Ljava/lang/String;)V
.end method

.method public abstract onLoad(Z)V
.end method

.method public abstract onLocalVidStreamActive()V
.end method

.method public abstract onLocalVidStreamDeactive()V
.end method

.method public abstract onNetworkStatus(Ljava/lang/String;II)V
.end method

.method public abstract onReceivedRemoteFrameStatus(Ljava/lang/String;I)V
.end method

.method public abstract onReconnectStatus(I)V
.end method

.method public abstract onReflectorDown()V
.end method

.method public abstract onRemoteVidResize(Ljava/lang/String;II)V
.end method

.method public abstract onRemoteVidStreamCreated(Ljava/lang/String;)V
.end method

.method public abstract onRemoteVidStreamRemoved(Ljava/lang/String;)V
.end method

.method public abstract onReportTraffic(I)V
.end method

.method public abstract onScreamChange(I)V
.end method

.method public abstract onStartCamera()V
.end method

.method public abstract onStopCamera()V
.end method
