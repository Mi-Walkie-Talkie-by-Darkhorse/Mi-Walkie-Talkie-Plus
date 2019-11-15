.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;
.super Ljava/lang/Object;
.source "BaseAudioControl.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BasePlayerListener"
.end annotation


# instance fields
.field protected audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

.field protected listenerPlayingAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

.field protected listenerPlayingPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->listenerPlayingAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->listenerPlayingPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    return-void
.end method


# virtual methods
.method protected checkAudioPlayerValid()Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->listenerPlayingAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCompletion()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->checkAudioPlayerValid()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->listenerPlayingPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->resetAudioController(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;->onEndPlay(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->playSuffix()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->checkAudioPlayerValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->listenerPlayingPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->resetAudioController(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;->onEndPlay(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    goto :goto_0
.end method

.method public onInterrupt()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->checkAudioPlayerValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->listenerPlayingPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->resetAudioController(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;->onEndPlay(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    goto :goto_0
.end method

.method public onPlaying(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->checkAudioPlayerValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->listenerPlayingPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-interface {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;->updatePlayingProgress(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;J)V

    goto :goto_0
.end method

.method public onPrepared()V
    .locals 4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->checkAudioPlayerValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->access$302(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    iget-boolean v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->needSeek:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->needSeek:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->listenerPlayingAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;

    iget-wide v2, v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->seekPosition:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public setAudioControlListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    return-void
.end method
