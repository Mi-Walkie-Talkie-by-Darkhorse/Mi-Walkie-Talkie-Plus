.class public interface abstract Lcom/xiaomi/broadcaster/callback/BroadcastCallback;
.super Ljava/lang/Object;
.source "BroadcastCallback.java"


# virtual methods
.method public abstract onAudioDataProcess([BI)V
.end method

.method public abstract onAudioMixedMusicFinished()V
.end method

.method public abstract onAudioMixedMusicProgress(I)V
.end method

.method public abstract onAvgBiteRate(I)V
.end method

.method public abstract onConnectionStatusChanged(Lcom/xiaomi/broadcaster/enums/VCSessionState;)V
.end method

.method public abstract onDetectedThroughput(FI)V
.end method

.method public abstract onNetworkQualityStatus(Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;)V
.end method

.method public abstract onStreamClosed(Ljava/lang/String;)V
.end method

.method public abstract onStreamPublished(Ljava/lang/String;)V
.end method

.method public abstract onTakingPicFailed()V
.end method

.method public abstract onTakingPicOk()V
.end method

.method public abstract onVCSessionErr(Lcom/xiaomi/broadcaster/enums/VCSessionErrType;)V
.end method
