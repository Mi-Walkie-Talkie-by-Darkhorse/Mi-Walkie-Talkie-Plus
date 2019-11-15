.class Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$2;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->stop()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->stop()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
