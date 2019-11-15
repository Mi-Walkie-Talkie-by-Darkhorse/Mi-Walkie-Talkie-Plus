.class Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;
.super Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->startInner()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic lambda$onStarted$1$AudioPlayer$3()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$500(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;->onPrepared()V

    :cond_0
    return-void
.end method

.method final synthetic lambda$onStoped$0$AudioPlayer$3()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$600(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;->onCompletion()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AudioPlayer"

    const-string v1, "player:onOnError"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$1;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AudioPlayer"

    const-string v1, "player:onPrepared"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$$Lambda$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;)V

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStoped(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "AudioPlayer"

    const-string v1, "player:onCompletion"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->access$500(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3$$Lambda$0;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
