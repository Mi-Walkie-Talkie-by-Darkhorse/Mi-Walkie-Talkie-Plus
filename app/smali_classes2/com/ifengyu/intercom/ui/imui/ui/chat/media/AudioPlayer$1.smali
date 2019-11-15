.class Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$1;
.super Landroid/os/Handler;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;->onPlaying(J)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)V

    :pswitch_2
    const-string v0, "AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert() error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
