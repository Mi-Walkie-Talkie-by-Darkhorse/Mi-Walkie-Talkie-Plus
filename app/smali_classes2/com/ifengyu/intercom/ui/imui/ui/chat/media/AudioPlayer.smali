.class public final Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioPlayer"

.field private static final WHAT_COUNT_PLAY:I = 0x0

.field private static final WHAT_DECODE_FAILED:I = 0x2

.field private static final WHAT_DECODE_SUCCEED:I = 0x1


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private audioStreamType:I

.field private mAudioFile:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntervalTime:J

.field private mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

.field private mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

.field onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant",
            "HandlerLeak"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mIntervalTime:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->audioStreamType:I

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->audioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mAudioFile:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mIntervalTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->startInner()V

    return-void
.end method

.method static synthetic access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mAudioFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->endPlay()V

    return-void
.end method

.method private deleteOnExit()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mAudioFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_0
    return-void
.end method

.method private endPlay()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private startInner()V
    .locals 11

    const/4 v3, 0x3

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-static {}, Lcom/ifengyu/library/util/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->audioStreamType:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->audioStreamType:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->setMediaCallback(Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer$MediaPlayCallBack;)V

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mAudioFile:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->resume()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    const/16 v6, 0xa

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mAudioFile:Ljava/lang/String;

    const-string v8, ""

    const/4 v9, 0x0

    check-cast v9, Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->addToPlayList(JJILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/MediaPlayerObserver;Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->playNext(I)V

    const-string v0, "AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "player:start ok---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mAudioFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    const-string v1, "no datasource"

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;->onError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v1, "AudioPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "player:onOnError Exception\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->endPlay()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;->onError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startPlay()V
    .locals 2

    const-string v0, "AudioPlayer"

    const-string v1, "start() called"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->endPlay()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->startInner()V

    return-void
.end method


# virtual methods
.method public final getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getOnPlayListener()Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    return-object v0
.end method

.method public final isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 0

    return-void
.end method

.method public final setDataSource(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mAudioFile:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mAudioFile:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setOnPlayListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    return-void
.end method

.method public final start(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->audioStreamType:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->startPlay()V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mPlayer:Lcom/ifengyu/im/imservice/audio/AudioTalkMediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->endPlay()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->mListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;->onInterrupt()V

    :cond_0
    return-void
.end method
