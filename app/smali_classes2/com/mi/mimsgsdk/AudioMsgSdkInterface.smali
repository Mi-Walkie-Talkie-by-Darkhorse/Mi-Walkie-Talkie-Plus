.class public interface abstract Lcom/mi/mimsgsdk/AudioMsgSdkInterface;
.super Ljava/lang/Object;
.source "AudioMsgSdkInterface.java"


# virtual methods
.method public abstract audioMsgSdkInit(Landroid/content/Context;Lcom/mi/mimsgsdk/AudioRecordListener;)V
.end method

.method public abstract playVoiceWithUrl(Ljava/lang/String;)V
.end method

.method public abstract playVoiceWithUrl(Ljava/lang/String;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;)V
    .param p2    # Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startRecord()V
.end method

.method public abstract stopPlayVoice()V
.end method

.method public abstract stopRecord()V
.end method
