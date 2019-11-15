.class public interface abstract Lcom/mi/mimsgsdk/AudioChatSdkInterface;
.super Ljava/lang/Object;
.source "AudioChatSdkInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/AudioChatSdkInterface$MiMsgCallBack;
    }
.end annotation


# virtual methods
.method public abstract destory()V
.end method

.method public abstract init(Lcom/mi/mimsgsdk/AudioChatSdkInterface$MiMsgCallBack;)V
.end method

.method public abstract joinConference(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract leaveConference()V
.end method

.method public abstract muteAll()V
.end method

.method public abstract muteSelf()V
.end method

.method public abstract muteUser(J)V
.end method

.method public abstract unMuteAll()V
.end method

.method public abstract unMuteSelf()V
.end method

.method public abstract unMuteUser(J)V
.end method
