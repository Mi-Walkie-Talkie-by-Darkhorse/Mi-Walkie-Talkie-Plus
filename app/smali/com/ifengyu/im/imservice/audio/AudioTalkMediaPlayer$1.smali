.class Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;
.super Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;
.source "AudioTalkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->playNext(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

.field final synthetic val$firstItem:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;

.field final synthetic val$playItem:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;Landroid/os/Handler;Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    iput-object p3, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;->val$playItem:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;

    iput-object p4, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;->val$firstItem:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;

    invoke-direct {p0, p2}, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x3

    instance-of v0, p2, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/xiaomi/channel/common/audio/PlayerStatus;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;->val$playItem:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;

    iget-object v0, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->mObserver:Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;->val$playItem:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;

    iget-object v0, v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->mObserver:Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->access$000(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->getInstance(Landroid/content/Context;)Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->setPlayerStatus(Lcom/xiaomi/channel/common/audio/PlayerStatus;)V

    iget v0, p2, Lcom/xiaomi/channel/common/audio/PlayerStatus;->type:I

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/xiaomi/channel/common/audio/PlayerStatus;->type:I

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->access$000(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->getInstance(Landroid/content/Context;)Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->unregisterProximitySensor()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->access$100(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p2, Lcom/xiaomi/channel/common/audio/PlayerStatus;->type:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->access$100(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;->val$firstItem:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;

    iget-object v1, v1, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->localPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;->onStoped(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;->this$0:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->access$100(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;)Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$1;->val$firstItem:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;

    iget-object v1, v1, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$PlayPair;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method
