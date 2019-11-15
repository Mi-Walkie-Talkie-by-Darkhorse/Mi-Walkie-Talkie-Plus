.class public interface abstract Lcom/mi/mimsgsdk/AudioChatSdkInterface$MiMsgCallBack;
.super Ljava/lang/Object;
.source "AudioChatSdkInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/AudioChatSdkInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MiMsgCallBack"
.end annotation


# virtual methods
.method public abstract onConnectionLost()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onInit(Z)V
.end method

.method public abstract onJoinSuccess()V
.end method

.method public abstract onLeave(Ljava/lang/String;)V
.end method

.method public abstract onRemoteMute(IZ)V
.end method

.method public abstract onSpeakerReport(Ljava/util/ArrayList;)V
.end method

.method public abstract onUserJoined(I)V
.end method
