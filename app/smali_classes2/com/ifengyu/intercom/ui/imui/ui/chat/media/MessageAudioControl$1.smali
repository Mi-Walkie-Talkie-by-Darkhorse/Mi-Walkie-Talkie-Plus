.class Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;
.super Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;
.source "MessageAudioControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->setOnPlayListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl",
        "<",
        "Lcom/ifengyu/im/imservice/model/MessageEntity;",
        ">.BasePlayer",
        "Listener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->checkAudioPlayerValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->listenerPlayingPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->resetAudioController(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;)Lcom/ifengyu/library/widget/recyclerview/adapter/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;)Lcom/ifengyu/library/widget/recyclerview/adapter/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;Lcom/ifengyu/library/widget/recyclerview/adapter/a;Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;->onEndPlay(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->playSuffix()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->checkAudioPlayerValid()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->onError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;)V

    goto :goto_0
.end method

.method public onInterrupt()V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->checkAudioPlayerValid()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->onInterrupt()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;)V

    goto :goto_0
.end method
