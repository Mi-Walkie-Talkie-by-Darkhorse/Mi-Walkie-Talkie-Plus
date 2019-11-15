.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio$1;
.super Ljava/lang/Object;
.source "MsgViewHolderAudio.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioControllerReady(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;)V

    goto :goto_0
.end method

.method public onEndPlay(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;)Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->stopHeadset()V

    goto :goto_0
.end method

.method public updatePlayingProgress(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;J)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;->getDuration()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    goto :goto_0
.end method
