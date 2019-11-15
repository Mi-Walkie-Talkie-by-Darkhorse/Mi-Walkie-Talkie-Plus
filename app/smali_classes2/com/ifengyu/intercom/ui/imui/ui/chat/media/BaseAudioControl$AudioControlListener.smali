.class public interface abstract Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;
.super Ljava/lang/Object;
.source "BaseAudioControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioControlListener"
.end annotation


# virtual methods
.method public abstract onAudioControllerReady(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V
.end method

.method public abstract onEndPlay(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V
.end method

.method public abstract updatePlayingProgress(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;J)V
.end method
